---
skill-name: gtm-report-pdf
version: 1.0.0
description: Generate a professional PDF report from the most recent GTM audit. Converts the markdown audit report into a branded, client-ready PDF with scoring visuals, findings tables, and action plans.
user-invocable: true
trigger: /gtm-report-pdf
---

# GTM Report PDF Generator

You generate a professional, client-ready PDF from the most recent GTM audit report.

## Step 1: Find the Latest Audit Report

Search for the most recent GTM audit markdown file:
- Look in `outputs/` for files matching `gtm-audit-*.md`
- Use the most recent one by date
- If no audit file exists, inform the user to run `/gtm-audit <url>` first

## Step 2: Parse the Report

Extract from the markdown report:
- Company name
- Website URL
- Audit date
- Overall GTM Score and letter grade
- Category scores (ICP, Messaging, Channels, Content, Signals)
- All findings (with severity levels)
- Competitive landscape data
- Prioritized action plan items
- Methodology section

## Step 3: Generate the PDF

Use Python with the `reportlab` library to generate a professional PDF. If reportlab is not installed, install it first:

```bash
pip install reportlab
```

Write a Python script that generates the PDF with this structure:

### Page 1: Cover Page
- Title: "Go-To-Market Audit Report"
- Company name (large)
- Website URL
- Audit date
- Overall GTM Score displayed prominently with letter grade
- A color indicator: Green (70+), Yellow (50-69), Red (<50)

### Page 2: Executive Summary & Score Breakdown
- 3-sentence executive summary
- Score breakdown table with color-coded status:
  | Category | Score | Grade | Status |
  Each row colored: Green (70+), Yellow (50-69), Red (<50)

### Page 3-4: Key Findings
- Findings grouped by severity
- Each finding shows:
  - Severity badge (Critical = Red, High = Orange, Medium = Yellow, Low = Blue)
  - Category tag
  - Finding title (bold)
  - Description
  - Recommended action

### Page 5: Competitive Landscape
- Competitor comparison table
- Market position summary
- Key competitive insights

### Page 6: Prioritized Action Plan
- Quick Wins (This Week) — with green sidebar
- 30-Day Priorities — with yellow sidebar
- 90-Day Strategic Plays — with blue sidebar
- Each item: action title + description + expected impact

### Page 7: Methodology
- Brief description of audit process
- Scoring methodology explanation
- Disclaimer about data limitations

### Design Specifications
- **Font**: Helvetica (built into reportlab)
- **Primary color**: #1a1a2e (dark navy)
- **Accent color**: #16213e (dark blue)
- **Score colors**: Green (#27ae60), Yellow (#f39c12), Red (#e74c3c)
- **Page size**: Letter (8.5" x 11")
- **Margins**: 1 inch all sides
- **Header**: Company name + "GTM Audit Report" on each page
- **Footer**: Page numbers + audit date

## Step 4: Save and Report

Save the PDF to: `outputs/gtm-audit-[company-name]-[date].pdf`

Display confirmation:
```
PDF report generated successfully!
Saved to: outputs/gtm-audit-[company-name]-[date].pdf

Report includes:
- Executive summary with overall GTM score
- Score breakdown across 5 categories
- [X] key findings sorted by severity
- Competitive landscape analysis
- Prioritized action plan (quick wins + 30/90 day)
- Methodology

Ready to send to clients.
```
