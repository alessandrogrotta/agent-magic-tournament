# Agent Magic Tournament

Torneo di **Magic: The Gathering** in formato **Commander** giocato da agenti AI, con una wiki in italiano sulle regole e alcuni script di supporto per scegliere i mazzi e simulare le pescate.

> Le regole di riferimento sono tratte dal [sito ufficiale Wizards of the Coast](https://magic.wizards.com/en/formats/commander).

## Contenuto del repository

```
agent-magic-tournament/
├── .opencode/agent/     # Definizione degli agenti (OpenCode)
├── .obsidian/           # Configurazione del vault Obsidian
├── decks/               # Liste dei mazzi Commander
├── log/                 # Log delle partite
├── regole/              # Wiki delle regole in italiano
│   ├── basi.md              # Come si gioca: avvio, fasi del turno, vittoria
│   ├── commander.md         # Regole Commander: mazzo, zona comando, danno da comandante
│   ├── identita-colore.md   # Identità di colore del comandante
│   └── keyword.md           # Glossario delle abilità (volare, travolgere, ...)
├── index.md             # Indice della wiki
├── pick_decks.ps1       # Estrae a caso due mazzi dal pool
└── scry_betor.ps1       # Pesca una carta a caso dal mazzo di Betor
```

## Wiki delle regole

La cartella [`regole/`](regole/) raccoglie, in italiano, tutto il necessario per giocare a Commander. Il punto di partenza è [`index.md`](index.md).

| Sezione | Descrizione |
|---|---|
| [Come si gioca](regole/basi.md) | Avvio della partita, fasi del turno, condizioni di vittoria |
| [Regole Commander](regole/commander.md) | Struttura del mazzo, zona comando, danno da comandante |
| [Identità di colore](regole/identita-colore.md) | Come si determina l'identità di colore del comandante |
| [Glossario abilità](regole/keyword.md) | Significato di tutte le abilità delle carte |

## Mazzi in gara

Il pool di partecipanti comprende quattro comandanti:

- **Tidus, Yuna's Guardian**
- **Scriv, the Obligator**
- **Leonardo, the Balance**
- **Betor, Ancestor's Voice**

Le liste complete si trovano in [`decks/`](decks/).

## Script

Gli script sono scritti in **PowerShell** e non richiedono dipendenze esterne.

### `pick_decks.ps1`

Sceglie casualmente due mazzi diversi tra i quattro del pool, per decidere gli sfidanti di una partita.

```powershell
./pick_decks.ps1
```

Output di esempio:

```
Scriv, the Obligator
Betor, Ancestor's Voice
```

### `scry_betor.ps1`

Contiene la lista del mazzo di Betor e ne estrae una carta a caso, utile per simulare una pescata.

```powershell
./scry_betor.ps1
```

## Requisiti

- [PowerShell](https://learn.microsoft.com/powershell/) 5.1 o superiore (oppure PowerShell 7+ su Windows, macOS e Linux)
- [Obsidian](https://obsidian.md/) (opzionale), per consultare la wiki come vault
- [OpenCode](https://opencode.ai/) (opzionale), per usare gli agenti definiti in `.opencode/agent`

## Come iniziare

```bash
git clone https://github.com/alessandrogrotta/agent-magic-tournament.git
cd agent-magic-tournament
```

1. Leggi la wiki partendo da [`index.md`](index.md).
2. Esegui `pick_decks.ps1` per scegliere i due mazzi che si affrontano.
3. Avvia gli agenti per giocare la partita.
4. Consulta [`log/`](log/) per rivedere l'andamento dei match.

## Fonti

- [Commander – Wizards of the Coast](https://magic.wizards.com/en/formats/commander)
- [Glossario delle parole chiave – Wizards of the Coast](https://magic.wizards.com/en/keyword-glossary)

## Note legali

Magic: The Gathering è un marchio di Wizards of the Coast LLC. Questo è un progetto amatoriale non ufficiale, non affiliato né approvato da Wizards of the Coast.
