# P5R Tactics Rewritten

**Author:** J1gno

A complete overhaul of Persona 5 Royal's party member **Tactics AI**, based on work by **cold_spirit** ([Arke Intelligence - Tactics Rewrite](https://gamebanana.com/mods/630268) for *Persona 3 Reload*) and rebuilt from the ground up for P5R PC.

If you like playing with Tactics (*Act Freely*, *Full Assault*, *Conserve SP*, *Heal/Support*)—or just want your teammates to stop making frustrating vanilla AI mistakes—this mod makes your party fight smart, use their full skill kits, and respect P5R's mechanics.

## Installation (Reloaded-II)

1. Install **Reloaded-II** and add `P5R.exe`.
2. Make sure **Persona Essentials** (`p5rpc.modloader`) is installed and enabled.
3. Place the `P5R_TacticsRewritten` folder into your Reloaded-II `Mods` folder.
4. Enable **P5R Tactics Rewritten** in Reloaded-II and launch the game.

## What Each Tactic Does

- **Act Freely**: Smart all-rounder. Finishes off low-HP enemies with basic attacks, guards against telegraphed boss attacks, heals and revives when needed (with dedicated healers acting more proactively), cures status ailments, saves Showtimes for tough fights, chains 1-Mores and Baton Passes, lands Technicals, clears enemy buffs and party debuffs, and uses buffs, debuffs, and Charge/Concentrate intelligently.
- **Full Assault**: All-out offense. Still guards against dangerous telegraphed boss attacks, eagerly uses Charge/Concentrate (including party-wide versions) and Showtimes, maximizes 1-More and Baton Pass chains, exploits Technicals, and unleashes your party's strongest Physical, Magic, and late-game attacks.
- **Conserve SP**: Saves SP without turning your party useless. Uses HP-cost Physical and Gun skills, free Gun shots, free Showtimes, and free Baton Passes. Only spends SP to revive fallen allies or save someone in critical danger, and safely Guards instead of hitting enemies that resist Physical or are Shocked.
- **Heal/Support**: Dedicated healer and buffer. Keeps the party topped off (prioritizing the protagonist and healing much earlier than vanilla), cures all status ailments, dispels enemy buffs and party debuffs, maintains buffs, debuffs, shields, and accessory skills (without wasting SP on easy trash fights), and pitches in with Showtimes, 1-Mores, and Baton Passes once everyone is healthy and buffed.

## Key Improvements & Vanilla Bug Fixes

- **Uses the full skill pool**: Party members now actually use buffs, debuffs, dispels, *Charge*/*Concentrate*, crit boosts, *Tetrakarn*/*Makarakarn*/*Tetraja*, Elemental Breaks, Will Seed Ring skills, and late-game party skills.
- **Fixed Conserve SP & Physical skills**: Party members now use HP-cost Physical and Gun skills in *Conserve SP*, and no longer refuse to use Physical skills in *Act Freely* the moment their HP dips below 80%.
- **Smarter 1-Mores & Baton Passes**: Party members check Physical and Gun weaknesses too (not just magic), and pass the baton to the best available teammate (weakness hitters, Technical setups, emergency healers, Charged/Concentrated allies, or the protagonist) without passing to incapacitated allies.
- **Fixed Gun targeting**: One Gun-resistant enemy in a group no longer stops your party from shooting a different enemy that is weak to Gun, while still keeping AoE and multi-target Guns safe.
- **Fewer frustrating AI mistakes**:
  - Allies afflicted with **Forget** still Guard boss attacks, shoot Guns, and Baton Pass instead of blindly swinging melee.
  - Allies won't melee **Shocked** enemies and stun themselves.
  - Single-target buffs, shields, and debuffs properly check who still needs them instead of overwriting existing ones or targeting KO'd allies.
- **Safe for every special fight**: Respects unique Palace, Mementos, and boss encounter rules—including special action restrictions, airborne/melee-immune foes, special status transformations, Disaster Shadows, Treasure Demons, and repel-punishing bosses.

---

## For Modders (Building from Source)

If you want to customize the AI script, edit `Source/PLAYERAI.flow` and recompile it with [AtlusScriptCompiler](https://github.com/tge-was-taken/Atlus-Script-Tools):

```cmd
Source\build.bat "path\to\AtlusScriptCompiler.exe"
```

Or in PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\Source\build.ps1 -CompilerPath "path\to\AtlusScriptCompiler.exe"
```

---

## Credits & Acknowledgements

- **[cold_spirit](https://gamebanana.com/members/3645866)**: Original concept / based on work from [Arke Intelligence - Tactics Rewrite](https://gamebanana.com/mods/630268) for *Persona 3 Reload*, whose mod design, proactive support logic, and tactics rewrite inspired this Persona 5 Royal adaptation.
- **[xeeoh](https://bsky.app/profile/xeeoh.bsky.social)**: Banner and icon art for the original mod (I just used AI to modify it to replace Aigis with Joker and to change the name so I don't intend to take full credit as I didn't create it in the first place).
- **[Atlus Script Tools](https://github.com/tge-was-taken/Atlus-Script-Tools)** by TGE and contributors.
- **[Reloaded-II](https://github.com/Reloaded-Project/Reloaded-II)** & **[Persona Essentials](https://github.com/Sewer56/p5rpc.modloader)** by Sewer56 and contributors.
- **Atlus / SEGA**: Original creators of *Persona 5 Royal*.
