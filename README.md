# ZK Steward Companion Skills

Companion skills for **[ZK Steward](https://github.com/msitarzewski/agency-agents)** (from [The Agency](https://github.com/msitarzewski/agency-agents)). Use these with the ZK Steward agent to get the full Luhmann-style knowledge-base workflow: link-proposer, index-note, strategic-advisor, and workflow-audit.

## What’s in this repo

| Skill | Purpose |
|-------|---------|
| **link-proposer** | For new notes: suggest link candidates (3-way search), keyword/index entries, and one Gegenrede (counter-question). |
| **index-note** | Create or update index/MOC entries; daily sweep; network repair from health reports. |
| **strategic-advisor** | Default when intent is unclear: multi-perspective analysis, trade-offs, action options. |
| **workflow-audit** | Check multi-phase flows (e.g. deep-learning, meeting-note) against a checklist; Deming + Gawande style. |

Skills are in **Chinese** (original language). Paths in the docs (e.g. `05_每日记录/`, `03_索引/`, `memory/`) follow the original vault layout—**adapt them to your own folder names** when installing.

## Install (Cursor)

1. Copy the `skills/` folder into your project so that Cursor can see it as skills, e.g.:
   - **Option A**: Copy each skill under `.cursor/skills/` in your repo:
     ```bash
     cp -r skills/link-proposer .cursor/skills/
     cp -r skills/index-note   .cursor/skills/
     cp -r skills/strategic-advisor .cursor/skills/
     cp -r skills/workflow-audit .cursor/skills/
     ```
   - **Option B**: Clone this repo as a subfolder and add it to your Cursor rules/skills path if your setup supports it.

2. **Path customization**: If your vault uses different folders (e.g. `daily/`, `index/`), edit the paths inside each SKILL.md and, for link-proposer, the script `link-proposer/scripts/get_random_notes.sh` (or set env vars `NOTES_DIR`, `INDEX_DIR` before running).

3. **link-proposer script**: From your vault root, run the random-notes script so path defaults work:
   ```bash
   export NOTES_DIR="05_每日记录"   # or your daily-notes folder
   export INDEX_DIR="03_索引"      # or your index folder
   ./path/to/skills/link-proposer/scripts/get_random_notes.sh --mode tension --count 6
   ```

## Install (Claude Code / other tools)

Copy the contents of each `skills/<name>/SKILL.md` into your tool’s agent/skill format (e.g. Claude Code agents). Ensure paths and any script paths are adjusted for your environment.

## ZK Steward agent

Get the ZK Steward personality (Luhmann-style knowledge steward) from The Agency:

- **Upstream**: [agency-agents/specialized/zk-steward.md](https://github.com/msitarzewski/agency-agents/blob/main/specialized/zk-steward.md) (after merge) or from [the PR](https://github.com/msitarzewski/agency-agents/pull/84).
- Use ZK Steward + this companion repo for the full “ZK Steward 完全体” workflow.

## License

MIT. Same spirit as The Agency and the original AI-Zettelkasten rules.
