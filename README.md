# Arke Intelligence - Tactics Rewrite (Persona 5 Royal PC)

A complete overhaul of Persona 5 Royal's party member **Tactics AI**, inspired by Persona 3 Reload's *Arke Intelligence - Tactics Rewrite* and rebuilt from the ground up for P5R PC.

If you like playing with Tactics (*Act Freely*, *Full Assault*, *Conserve SP*, *Heal/Support*)—or just want your teammates to stop making frustrating vanilla AI mistakes—this mod makes your party fight smart, use their full skill kits, and respect P5R's mechanics.

## Installation (Reloaded-II)

1. Install **Reloaded-II** and add `P5R.exe`.
2. Make sure **Persona Essentials** (`p5rpc.modloader`) is installed and enabled.
3. Place the `P5R_ArkeIntelligence` folder into your Reloaded-II `Mods` folder.
4. Enable **Arke Intelligence - Tactics Rewrite (P5R)** in Reloaded-II and launch the game.

## What Each Tactic Does

- **Act Freely**: Smart all-rounder. Finishes off low-HP enemies with basic attacks, guards against telegraphed boss attacks, heals and revives when needed (with Morgana and Makoto healing more proactively), cures status ailments, saves Showtimes for tough fights, chains 1-Mores and Baton Passes, lands Technicals, clears enemy buffs and party debuffs, and uses buffs, debuffs, and Charge/Concentrate intelligently.
- **Full Assault**: All-out offense. Still guards against dangerous telegraphed boss attacks, eagerly uses Charge/Concentrate (including *Fighting Spirit* and *High Energy*) and Showtimes, maximizes 1-More and Baton Pass chains, exploits Technicals, and unleashes your party's strongest Physical, Magic, and 3rd Semester attacks.
- **Conserve SP**: Saves SP without turning your party useless. Uses HP-cost Physical and Gun skills, free Gun shots, free Showtimes, and free Baton Passes. Only spends SP to revive fallen allies or save someone in critical danger, and safely Guards instead of hitting enemies that resist Physical or are Shocked.
- **Heal/Support**: Dedicated healer and buffer. Keeps the party topped off (prioritizing Joker and healing much earlier than vanilla), cures all status ailments, dispels enemy buffs and party debuffs, maintains buffs, debuffs, shields, and Will Seed Ring skills (without wasting SP on easy trash fights), and pitches in with Showtimes, 1-Mores, and Baton Passes once everyone is healthy and buffed.

## Key Improvements & Vanilla Bug Fixes

- **Uses the full skill pool**: Party members now actually use buffs, debuffs, dispels, *Charge*/*Concentrate*, crit boosts, *Tetrakarn*/*Makarakarn*/*Tetraja*, Elemental Breaks, **3rd Semester** skills (*Fighting Spirit*, *High Energy*, *Hyakka Ryouran*, *Checkmate*, *Life Wall*, *Masquerade*, *Laevateinn*, *Rebellion Blade*, *Miracle Rush*), and **Will Seed Ring** skills.
- **Fixed Conserve SP & Physical skills**: Party members now use HP-cost Physical and Gun skills in *Conserve SP*, and no longer refuse to use Physical skills in *Act Freely* the moment their HP dips below 80%.
- **Smarter 1-Mores & Baton Passes**: Party members check Physical and Gun weaknesses too (not just magic), and pass the baton to the best available teammate (weakness hitters, Technical setups, emergency healers, Charged/Concentrated allies, or Joker) without passing to incapacitated allies.
- **Fixed Gun targeting**: One Gun-resistant enemy in a group no longer stops your party from shooting a different enemy that is weak to Gun, while still keeping AoE Gun attacks safe.
- **Fewer frustrating AI mistakes**:
  - Allies afflicted with **Forget** still Guard boss attacks, shoot Guns, and Baton Pass instead of blindly swinging melee.
  - Allies won't melee **Shocked** enemies and stun themselves.
  - Single-target buffs, shields, and debuffs properly check who still needs them instead of overwriting existing ones or targeting KO'd allies.
- **Safe for every special fight**: Respects Palace and Mementos gimmicks—including Maruki's fight rules, Cognitive Wakaba, Shido's Palace mouse status, Disaster Shadows, Treasure Demons, and the Reaper (avoids putting up *Tetrakarn*/*Makarakarn* so the Reaper won't spam *Megidolaon*).

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
