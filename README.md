# claude-skills

Colección de 130 skills para Claude Code, copiadas de estos repos:

| Origen | Commit | Skills |
|---|---|---|
| [blader/humanizer](https://github.com/blader/humanizer) | b48c832 | 1 |
| [anthropics/skills](https://github.com/anthropics/skills) | 2c5958e | 19 |
| [mattpocock/skills](https://github.com/mattpocock/skills) | 5863806 | 32 (sin `in-progress/`) |
| [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) | 3dc497a | 22 |
| [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) | 1f83744 | 56 |

Las licencias originales están en `licenses/`. Las skills de anthropics llevan cada una su `LICENSE.txt`.

## Instalar

macOS / Linux:

```bash
./install.sh
```

Windows (PowerShell):

```powershell
.\install.ps1
```

Las skills se copian a `~/.claude/skills/`. Las que ya existan se omiten; con `--force` (o `-Force`) se sobrescriben. Reinicia Claude Code para que aparezcan.
