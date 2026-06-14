# ULA RISC-V — Fluxo Completo Cadence (RTL → GDS)

Implementação de uma Unidade Lógica e Aritmética (ULA) para o conjunto de
instruções **RISC-V RV32I**, levada do código RTL até o layout físico
roteado usando o fluxo de ferramentas da Cadence (Xcelium, Genus, Innovus)
sobre o PDK aberto **FreePDK45 / Nangate 45nm**.

O projeto cobre todas as etapas de um fluxo de back-end digital:
descrição em SystemVerilog, simulação, síntese lógica, síntese física e
geração do GDSII.

---

## Layout final

Layout roteado da ULA no Innovus (FreePDK45 / Nangate 45nm). O core de
roteamento aparece no centro, com os anéis de alimentação (VDD/VSS) ao redor
e os pinos de I/O distribuídos pelas bordas.

<!-- Adicione a imagem do layout aqui. Salve a captura de tela em docs/layout.png
     (ou no caminho que preferir) e descomente a linha abaixo: -->
<!-- ![Layout roteado da ULA no Innovus](docs/layout.png) -->

> _Imagem do layout: `docs/layout.png` (a adicionar)_

---

## Resultados finais

| Métrica | Valor |
|---|---|
| Frequência alvo | 333 MHz (período 3.0 ns) |
| Slack pós-roteamento | **+0.573 ns** (timing fecha) |
| Caminhos violados | 0 |
| Violações de DRC | 0 |
| Células padrão | 1611 |
| Área do core | 2351 µm² |
| Área do chip | 3441 µm² |
| Densidade | 70.18% |
| Comprimento total de fios | 15461 µm |
| Potência total | 0.64 mW |
| Tecnologia | FreePDK45 / Nangate 45nm |

---

## A ULA

Bloco puramente combinacional (sem registradores internos) que implementa
as operações essenciais do RV32I. Interface:

| Sinal | Direção | Largura | Descrição |
|---|---|---|---|
| `a` | entrada | 32 bits | Primeiro operando |
| `b` | entrada | 32 bits | Segundo operando |
| `alu_control` | entrada | 4 bits | Seleção da operação |
| `result` | saída | 32 bits | Resultado da operação |
| `zero` | saída | 1 bit | Flag de zero (usada em branches) |

Operações suportadas (codificação de `alu_control`):

| Código | Operação | Descrição |
|---|---|---|
| `0000` | ADD | Soma |
| `0001` | SUB | Subtração |
| `0010` | AND | E lógico |
| `0011` | OR | OU lógico |
| `0100` | XOR | OU exclusivo |
| `0101` | SLL | Deslocamento lógico à esquerda |
| `0110` | SRL | Deslocamento lógico à direita |
| `0111` | SRA | Deslocamento aritmético à direita |
| `1000` | SLT | Set less than (com sinal) |
| `1001` | SLTU | Set less than (sem sinal) |

Os deslocamentos usam apenas os 5 bits menos significativos de `b`
(`b[4:0]`), conforme o padrão RV32.

---

## Estrutura de pastas

```
ula_riscv/
├── rtl/                 # Código fonte do hardware
│   └── alu.sv           # Descrição da ULA em SystemVerilog
├── tb/                  # Testbench
│   └── tb_alu.sv        # Estímulos e vetores de teste
├── sim/                 # Simulação (logs do Xcelium)
├── synth/               # Síntese lógica (Genus)
│   ├── constraints.sdc  # Constraints de timing (SDC)
│   ├── run_synthesis.tcl# Script de síntese
│   ├── alu_netlist.v    # Netlist sintetizada (saída)
│   └── alu_final.sdc    # Constraints propagadas (saída)
├── layout/              # Síntese física (Innovus)
│   ├── innovus.tcl      # Script de layout
│   ├── mmmc.tcl         # Configuração Multi-Mode Multi-Corner
│   ├── alu_final.gds    # Layout final em GDSII (saída)
│   ├── alu_final.def    # Layout em formato DEF (saída)
│   └── alu_final.enc    # Banco de dados do Innovus (saída)
└── pdks/                # PDK (não versionado — ver Dependências)
    └── freepdk-45nm/
```

---

## Dependências

- **Cadence Xcelium** — simulação RTL
- **Cadence Genus** (testado na versão 21.10) — síntese lógica
- **Cadence Innovus** (testado na versão 21.15) — síntese física
- **FreePDK45 / Nangate 45nm** — PDK de células padrão (Apache 2.0)

O PDK **não** está incluído no repositório (é uma dependência externa e
pesada). Para obtê-lo:

```bash
cd ula_riscv
mkdir -p pdks && cd pdks
git clone https://github.com/mflowgen/freepdk-45nm.git
```

Os arquivos relevantes do PDK são: `stdcells.lib` (timing, usado pelo Genus),
`stdcells.lef` e `rtk-tech.lef` (geometria e tecnologia, usados pelo Innovus),
e `stdcells.gds` (layout das células, usado na exportação do GDS).

---

## Como reproduzir o fluxo

### Passo 1 — Simulação (Xcelium)

```bash
cd sim
xrun ../rtl/alu.sv ../tb/tb_alu.sv -access +rwc
```

Valida a lógica da ULA com vetores de teste para ADD, SUB, AND e SLT.

### Passo 2 — Síntese lógica (Genus)

```bash
cd synth
genus -f run_synthesis.tcl
```

Mapeia o RTL para portas lógicas do Nangate 45nm e aplica as constraints
do `constraints.sdc`. Gera `alu_netlist.v` e os relatórios de timing,
área e potência. Confirme o timing:

```bash
grep -i slack timing_report.txt
```

### Passo 3 — Síntese física (Innovus)

```bash
cd layout
innovus -files innovus.tcl
```

Executa floorplan, power planning, placement e routing, terminando com a
exportação do GDS. Confirme o timing pós-roteamento:

```bash
grep -i slack timing_postroute.txt
```

### Visualizar o layout

```bash
cd layout
innovus
```

No prompt do Innovus:

```tcl
source alu_final.enc
```

Depois aperte `f` sobre a área de layout para enquadrar o chip.

---

## Notas técnicas

**Bloco combinacional e clock virtual.** Como a ULA não tem registradores,
o SDC usa um *clock virtual* (`create_clock -name virtual_clk`) apenas como
referência de tempo, junto com `set_input_delay`, `set_output_delay` e
`set_max_delay` para restringir o caminho combinacional entrada→saída.

**Orçamento de tempo.** O período de 3.0 ns é dividido entre um pequeno
overhead de I/O (10% de entrada + 10% de saída = 600 ps reservados para
lógica vizinha) e a lógica da ULA (~1200 ps), deixando folga de timing.

**Caminho crítico.** O caminho mais longo vai de uma entrada até a flag
`zero`, pois calcular `zero` exige terminar a operação completa (incluindo
a cadeia de carry da subtração) e então comparar o resultado de 32 bits
contra zero.

**Sem CTS.** Por ser um bloco combinacional sem clock real, a etapa de
Clock Tree Synthesis é pulada no fluxo do Innovus.

---

## Licença

O código deste projeto é de autoria própria. O PDK FreePDK45 / Nangate 45nm
é distribuído separadamente sob licença Apache 2.0 pela Silicon Integration
Initiative (Si2).
