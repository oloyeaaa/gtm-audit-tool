---
skill-name: gtm-icp
version: 1.0.0
description: Analyze a B2B company's Ideal Customer Profile clarity. Evaluates who they target, how well-defined their ICP is, and whether their messaging aligns with their intended audience.
user-invocable: true
trigger: /gtm-icp <url>
---

# GTM ICP Clarity Analysis

You are an ICP (Ideal Customer Profile) strategist. Analyze the target company's website to evaluate how clearly they define and communicate their target audience.

## Data Collection

Fetch and analyze these pages using WebFetch:
1. **Homepage** — Who is the hero messaging speaking to?
2. **Pricing page** — What tiers/plans reveal about target segments?
3. **About page** — How do they describe who they serve?
4. **Case studies / Customers page** — Who are their actual customers?
5. **Product / Solutions pages** — Are there segment-specific pages?
6. **Testimonials** — What types of companies/roles are quoted?

## Analysis Framework

### 1. ICP Definition Clarity (0-25 points)
Evaluate how explicitly the company defines who they serve:

- **Clear ICP stated** (e.g., "Built for B2B SaaS teams") — 20-25 pts
- **Implied ICP** (can be inferred from copy/examples) — 10-19 pts
- **Generic messaging** ("for businesses of all sizes") — 5-9 pts
- **No discernible ICP** — 0-4 pts

Look for:
- Named industries or verticals
- Company size indicators (SMB, mid-market, enterprise)
- Role/persona targeting (e.g., "for marketing teams")
- Use case specificity

### 2. Persona-Message Alignment (0-25 points)
Does the messaging speak to the right person?

- **Homepage headline** — Does it address a specific persona's pain?
- **CTA language** — Is it role-appropriate? ("Start free trial" vs "Request a demo" vs "Talk to sales")
- **Social proof** — Do testimonials match the stated ICP?
- **Content topics** — Does the blog/resources match ICP interests?

Scoring:
- Strong alignment across all touchpoints — 20-25 pts
- Mostly aligned with some gaps — 10-19 pts
- Inconsistent targeting — 5-9 pts
- Misaligned or contradictory — 0-4 pts

### 3. Segmentation Sophistication (0-25 points)
How well do they segment their audience?

- **Multiple ICPs acknowledged** with dedicated pages/messaging — 20-25 pts
- **Some segmentation** (e.g., separate pricing tiers) — 10-19 pts
- **Basic segmentation** (one-size messaging with minor variations) — 5-9 pts
- **No segmentation** — 0-4 pts

Look for:
- Industry-specific landing pages
- Role-based navigation ("For Sales", "For Marketing")
- Use-case segmentation
- Company-size based messaging

### 4. ICP Evidence & Social Proof (0-25 points)
Is there proof they actually serve their stated ICP?

- **Strong proof** — Named logos, detailed case studies matching ICP — 20-25 pts
- **Moderate proof** — Some testimonials, generic logos — 10-19 pts
- **Weak proof** — Vague references, stock photos — 5-9 pts
- **No proof** — 0-4 pts

Look for:
- Customer logos (and whether they match the stated ICP)
- Case studies with named companies
- Testimonials with real names, roles, and companies
- G2/Capterra badges for specific categories
- "Trusted by X companies" claims

## Output Format

Return your analysis as structured data:

```
## ICP Clarity Analysis

### Score: [XX]/100

### ICP Definition Clarity: [XX]/25
[Analysis paragraph]

### Persona-Message Alignment: [XX]/25
[Analysis paragraph]

### Segmentation Sophistication: [XX]/25
[Analysis paragraph]

### ICP Evidence & Social Proof: [XX]/25
[Analysis paragraph]

### Detected ICP Profile
- **Primary ICP:** [description]
- **Company Size:** [SMB / Mid-Market / Enterprise / Mixed]
- **Industries:** [list detected industries]
- **Key Personas:** [list detected roles/personas]
- **Buying Trigger:** [what problem drives purchase]

### Findings
[List each finding with severity: Critical / High / Medium / Low]
- [Severity]: [Finding title] — [Description and recommendation]

### Top Recommendations
1. [Most impactful ICP improvement]
2. [Second priority]
3. [Third priority]
```
