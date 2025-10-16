# 1) O que já está validado na literatura

- **Gavage oral em adultos**: técnica padronizada (5 µL máx por peixe; anestesia com MS-222 150 mg/L; jejum 24 h; cateter flexível acoplado a seringa). Sucesso ~88% com ~10% de mortalidade (pior em fêmeas muito grávidas). Volume recomendado ≤1% do peso corporal. ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))  
    ▸ Observação: uma técnica mais antiga usou **pipeta** (P2–P20) acoplada a bainha 24G, mas teve mortalidade alta (8,7% na 1ª tentativa e 39% na 2ª) — portanto **“pipeta direto” sem cateter flexível é arriscado**. ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
    
- **Gavage repetido/longitudinal**: há adaptação para dosagens por vários dias (combinação MS-222 + isoflurano para reduzir efeitos cumulativos da anestesia). ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC4958307/?utm_source=chatgpt.com "Long-term drug administration in the adult zebrafish using ..."))
    
- **Micro-gavage em larvas (5–7 dpf)**: entrega controlada ao lúmen intestinal (≈4,6 nL por ejeção), com equipamento de microinjeção. ([JoVE](https://app.jove.com/v/4434/microgavage-of-zebrafish-larvae "Video: Microgavage of Zebrafish Larvae"))
    
- **Etanol em zebrafish**: o **padrão** em estudos comportamentais e FASD é **imersão** (0,25–2% v/v por minutos–horas); a revisão recente reforça isso. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC9608232/?utm_source=chatgpt.com "Neurochemical and Behavioral Consequences of Ethanol ..."))
    

**Conclusão da busca:** há **base técnica sólida** para gavage oral, mas **não há protocolo publicado específico para etanol por gavage** em zebrafish (ausência de evidência ≠ evidência de ausência). Se for indispensável evitar a água, dá para implementar um protocolo piloto seguro, abaixo.

---

# 2) Protocolo proposto (adultos) — “pipeta + cateter flexível”

Pensado para **dose aguda única** de etanol por via oral, minimizando risco de refluxo para as brânquias e trauma.

## Materiais

- Etanol P.A. (96%)
- Água do sistema (28 °C), bicarbonato de sódio (para tamponar pH 7,0–7,5)
- *MS-222 (tricaína) para anestesia (150 mg/L, tamponado)* (????)
- **Pipeta P10** (ou seringa 1 mL) **acoplada a um tubo flexível** (ex.: Micro-Renathane/PE-10 ~22G; ponta arredondada) — **evite ponta rígida de pipeta “direto”**
- Esponja úmida com sulco (suporte de contenção)
- Termômetro, pH-metro, cronômetro
- Banho de recuperação com água limpa, oxigenada

## Preparos

1. **Jejum 24 h** (reduz regurgitação). ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
2. **Solução de etanol**: começar **20% v/v** em água do sistema (pré-aquecer a 28 °C; **tamponar pH 7–7,5**).
3. **Vol. máximo**: **≤5 µL por peixe** (e sempre ≤1% do peso corporal). ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
4. **Calibração**: aspire água e pese na balança (1 µL ≈ 1 mg) para checar o volume real da pipeta + cateter.

## Cálculo rápido de dose (guia)

Abaixo, volume de **solução 20% v/v** necessário para diferentes metas (por **peixe**):

|Peso (g)|0,25 g/kg|0,5 g/kg|1,0 g/kg|
|--:|--:|--:|--:|
|0,3|0,48 µL|0,95 µL|1,90 µL|
|0,5|0,79 µL|1,58 µL|3,17 µL|
|0,7|1,11 µL|2,22 µL|4,44 µL|
|1,0|1,58 µL|3,17 µL|**6,34 µL** (↑>5)|

→ Para peixes **≥0,8–1,0 g**, se precisar chegar a **1,0 g/kg** sem passar de 5 µL, **suba a concentração para 30% v/v** (1,0 g/kg em 1,0 g ≈ 4,22 µL). Comece **sempre com 0,25–0,5 g/kg** e só escale se necessário.

> (Os limites de 5 µL e 1% do peso corporal vêm do protocolo validado de gavage em adultos.) ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))

## Passo a passo

1. **Anestesie** em **MS-222 150 mg/L tamponado** até perda do reflexo de endireitamento (opérculo mantendo movimento). ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
2. **Contenção**: posicione o peixe em **esponja úmida** com a cabeça levemente para fora, porém **brânquias cobertas**e úmidas. ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
3. **Intubação**: introduza **delicadamente** o cateter flexível pela boca **até passar as brânquias (~1 cm)**; **não force**(se houver resistência, retire e reposicione). ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
4. **Administração**: dispense o volume calculado **lentamente**; **verifique se não sai líquido pelas brânquias/boca**(sinal de inserção curta). ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
5. **Recuperação**: transfira ao tanque de recuperação (água limpa, 28 °C, bem oxigenada); a recuperação costuma ser **<1 min**. Observe por 60 min para **regurgitação**/estresse. ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
6. **Critérios de exclusão**: qualquer peixe com refluxo visível, hemorragia, letargia persistente ou perda de equilíbrio após 10–15 min.

### Frequência / estudos crônicos

- Para dosagens por **múltiplos dias**, considere reduzir a carga anestésica (p.ex., protocolos combinando **MS-222 + isoflurano** em doses menores). **Atenção**: etanol é **depressor do SNC** e pode **potencializar** anestésicos; monitore tempos de recuperação e ajuste. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC4958307/?utm_source=chatgpt.com "Long-term drug administration in the adult zebrafish using ..."))

---

# 3) Riscos vs. benefícios

**Benefícios**

- **Dose conhecida e reprodutível**, menor variabilidade do que consumo voluntário/top-coating. ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
- **Evita efeito de contato pelas brânquias** que ocorre na imersão (útil se o interesse for intestino/fígado/metabolismo). ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))

**Riscos**

- **Aspiração/refluxo para brânquias**, trauma de mucosa, perfuração intestinal, **mortalidade ~10%** em protocolos bem executados (pior em fêmeas ovadas). ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
- **Interação com anestesia** (depressão adicional do SNC; recuperação mais lenta) em esquemas repetidos. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC4958307/?utm_source=chatgpt.com "Long-term drug administration in the adult zebrafish using ..."))
- **Irritação química**: soluções muito concentradas de etanol podem lesar mucosa; por isso **comece com 20% v/v**, volumes pequenos e escalonamento de dose.
    

**Comparação com imersão (padrão em álcool)**

- **Imersão** é menos invasiva e amplamente caracterizada em zebrafish (0,25–2% v/v; efeitos comportamentais dose-dependentes). ([Frontiers](https://www.frontiersin.org/journals/pharmacology/articles/10.3389/fphar.2022.853936/full?utm_source=chatgpt.com "Sex-Specific Effects of Acute Ethanol Exposure on ..."))
- **Gavage** dá controle de **g/kg** e evita brânquias, mas exige anestesia e habilidade técnica. ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))
    

---

## Observações éticas e práticas

- Registre o protocolo no CEUA (detalhando **anestesia, analgesia não aplicável, critérios de exclusão, endpoints humanos**).
- Faça **piloto** (n≥6) começando em **0,25 g/kg**, depois **0,5 g/kg**, monitorando **tempo de recuperação**, ventilação opercular, equilíbrio e mortalidade em 24 h.
- Documente pH, temperatura e **não ultrapasse 5 µL**/peixe nem 1% do peso corporal. ([JOVE](https://www.jove.com/t/50691/gavaging-adult-zebrafish "Gavaging Adult Zebrafish"))