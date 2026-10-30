## CREA UN LOG DI PARTITA (OBBLIGATORIO)

Appena inizia la partita, **crea un file `log-partita.md`** nella cartella `magic-tournament/`. Scrivi l'intero stato dentro questo file e **aggiornalo dopo ogni azione**.

### Struttura del log

Usa esattamente questa struttura nel file `log-partita.md`:

```markdown
# LOG PARTITA — Commander

## STATO GENERALE
- Turno: [numero]
- Giocatore di turno: [nome]
- Fase: [stap/pesca/prima principale/dichiarazione attaccanti/dichiarazione bloccanti/danno/seconda principale/fine]

## PLAYER 1
- **Comandante**: [nome]
- **Vita**: 40
- **Danno da comandante subito**: 0
- **Tassa comandante**: 0
- **Mano**: [carta1, carta2, ...]
- **Campo**: [permanenti in gioco]
- **Cimitero**: [carte nel cimitero]
- **Esilio**: [carte in esilio]
- **Mazzo rimanente**: [lista completa delle carte ANCORA nel mazzo]
- **Mazzo completo (99)**: [lista completa di tutte le carte del mazzo, per riferimento]

## PLAYER 2
- **Comandante**: [nome]
- **Vita**: 40
- **Danno da comandante subito**: 0
- **Tassa comandante**: 0
- **Mano**: [carta1, carta2, ...]
- **Campo**: [permanenti in gioco]
- **Cimitero**: [carte nel cimitero]
- **Esilio**: [carte in esilio]
- **Mazzo rimanente**: [lista completa delle carte ANCORA nel mazzo]
- **Mazzo completo (99)**: [lista completa di tutte le carte del mazzo, per riferimento]

## CRONOLOGIA
- Turno 1 - Player X: [azioni]
- Turno 2 - Player Y: [azioni]
```

### Regole per il log
1. **MAI perdere traccia del mazzo_rimanente** — se perdi la lista di ciò che resta, la partita si blocca.
2. Dopo ogni pescata, **rimuovi la carta dal mazzo_rimanente** e **aggiungila alla mano** nel log.
3. Dopo ogni lancio di magia, **rimuovi la carta dalla mano** e **mettila in campo** (se permanente) o **in cimitero** (se istantaneo/stregoneria).
4. Se una carta va in cimitero dal campo, spostala da "Campo" a "Cimitero".
5. Se una carta viene esiliata, spostala in "Esilio".
6. **Aggiorna il log dopo OGNI azione** — non aspettare la fine del turno.
7. Il file deve essere **sempre accurato** — se un giocatore ha 3 carte in mano, il log deve mostrarle tutte.
8. Se una carta va in fondo al mazzo (mulligan o altri effetti), **aggiungila alla fine della lista mazzo_rimanente**.

> **Attenzione**: Il `mazzo_completo` serve come riferimento statico. Il `mazzo_rimanente` è DINAMICO e si accorcia a ogni pescata. Non confondere i due.


