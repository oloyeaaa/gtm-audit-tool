<p align="center">
  <img src="banner.png" alt="GTM Audit Tool Banner" width="100%" />
</p>

# GTM Audit Tool for Claude Code

An AI-powered Go-To-Market audit tool that analyzes any B2B company's GTM strategy using 5 parallel AI agents. Built as a set of Claude Code skills.

GTM consultants charge $15,000-$25,000 for this type of analysis. This tool does it in minutes, for free.

## What It Does

Run one command and get a comprehensive GTM audit covering:

| Agent | What It Analyzes |
|-------|-----------------|
| **ICP Clarity** | Who they target, persona-message alignment, segmentation, social proof |
| **Messaging & Positioning** | Value props, differentiation, headline clarity, CTA effectiveness |
| **Channel Mix** | Presence across LinkedIn, blog, email, SEO, paid, community, partnerships |
| **Content-Market Fit** | Funnel coverage, topic-pain point alignment, content quality |
| **Signal Detection** | Hiring patterns, funding, tech stack, competitors, market momentum |

Output: A scored report (0-100) with severity-rated findings and a prioritized action plan. Optionally generate a professional PDF.

## Installation

### Prerequisites
- [VS Code](https://code.visualstudio.com/) or Cursor
- [Claude Code extension](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code) installed
- Active Claude Code subscription

### One-Command Install

Clone this repo and run the installer from your project directory:

```bash
git clone https://github.com/YOUR_USERNAME/gtm-audit-tool.git
cd gtm-audit-tool
bash install.sh
```

This copies all skills into your `.claude/skills/` directory.

### Manual Install

Copy the `skills/` folders into your project's `.claude/skills/` directory:

```
your-project/
  .claude/
    skills/
      gtm-audit/skill.md
      gtm-icp/skill.md
      gtm-messaging/skill.md
      gtm-channels/skill.md
      gtm-content/skill.md
      gtm-signals/skill.md
      gtm-report-pdf/skill.md
```

## Usage

Open Claude Code in VS Code and type any of these commands:

### Full Audit (Recommended)
```
/gtm-audit https://example.com
```
Runs all 5 agents in parallel. Takes 2-5 minutes depending on the website.

### Individual Analyses
```
/gtm-icp https://example.com        # ICP clarity analysis only
/gtm-messaging https://example.com   # Messaging & positioning only
/gtm-channels https://example.com    # Channel mix audit only
/gtm-content https://example.com     # Content-market fit only
/gtm-signals https://example.com     # Signal detection only
```

### Generate PDF Report
```
/gtm-report-pdf
```
Generates a professional, client-ready PDF from the most recent audit.

## Example Output

```
GTM Audit Complete: Acme Corp
Overall GTM Score: 62/100 (C)

Category Scores:
- ICP Clarity: 55/100
- Messaging & Positioning: 70/100
- Channel Mix: 58/100
- Content-Market Fit: 65/100
- Signal Detection: 72/100

Key Findings: 2 Critical | 4 High | 6 Medium | 3 Low
Report saved to: outputs/gtm-audit-acme-corp-2026-03-05.md
```

## How People Use This

1. **GTM Consultants** — Run free audits on prospects' websites, send the PDF report as a lead magnet, close retainer clients
2. **Founders** — Audit your own GTM before fundraising or scaling
3. **RevOps Teams** — Benchmark your GTM execution quarterly
4. **Agencies** — Add GTM audits as a service offering with zero extra effort

## Project Structure

```
gtm-audit-tool/
  skills/
    gtm-audit/skill.md          # Main orchestrator (launches 5 agents)
    gtm-icp/skill.md            # ICP clarity analysis
    gtm-messaging/skill.md      # Messaging & positioning
    gtm-channels/skill.md       # Channel mix audit
    gtm-content/skill.md        # Content-market fit
    gtm-signals/skill.md        # Signal detection
    gtm-report-pdf/skill.md     # PDF report generator
  install.sh                     # One-command installer
  README.md                     # This file
```

## License

MIT — free to use, modify, and distribute.
