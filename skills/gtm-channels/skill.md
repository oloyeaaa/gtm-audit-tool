---
skill-name: gtm-channels
version: 1.0.0
description: Audit a B2B company's marketing and sales channel mix. Evaluates presence, activity, and effectiveness across all GTM channels including LinkedIn, blog, email, paid ads, SEO, community, and partnerships.
user-invocable: true
trigger: /gtm-channels <url>
---

# GTM Channel Mix Audit

You are a B2B growth strategist specializing in channel strategy. Analyze the target company's presence and activity across all go-to-market channels.

## Data Collection

### Website Analysis (WebFetch)
Fetch the target URL and look for:
- Blog / Content hub (check for existence and recent activity)
- Newsletter signup forms
- Social media links in header/footer
- Podcast links
- Community links (Slack, Discord, Circle)
- Partner/integration pages
- Resource library / Lead magnets
- Webinar / Events pages
- Press / News section

### Web Research (WebSearch)
Search for the company across channels:
1. `"[company name]" site:linkedin.com/company` — Company LinkedIn page
2. `"[company name]" site:youtube.com` — YouTube presence
3. `"[company name]" podcast OR webinar` — Audio/video content
4. `"[company name]" site:g2.com OR site:capterra.com` — Review platforms
5. `"[company name]" partnership OR integration` — Partner ecosystem

## Analysis Framework

### 1. Channel Presence Inventory (0-20 points)
Document which channels the company is active on:

| Channel | Present | Active | Last Activity | Quality |
|---------|---------|--------|---------------|---------|
| Website/Blog | Y/N | Y/N | [date/recency] | [1-5] |
| LinkedIn (Company) | Y/N | Y/N | [date/recency] | [1-5] |
| LinkedIn (Founders/Team) | Y/N | Y/N | [date/recency] | [1-5] |
| YouTube | Y/N | Y/N | [date/recency] | [1-5] |
| Twitter/X | Y/N | Y/N | [date/recency] | [1-5] |
| Email/Newsletter | Y/N | Y/N | [date/recency] | [1-5] |
| Podcast | Y/N | Y/N | [date/recency] | [1-5] |
| Community | Y/N | Y/N | [date/recency] | [1-5] |
| Paid Ads | Y/N | Y/N | [date/recency] | [1-5] |
| SEO/Organic | Y/N | Y/N | [date/recency] | [1-5] |
| Partnerships | Y/N | Y/N | [date/recency] | [1-5] |
| Review Platforms | Y/N | Y/N | [date/recency] | [1-5] |
| Events/Webinars | Y/N | Y/N | [date/recency] | [1-5] |

Scoring:
- 8+ active channels with quality presence — 16-20 pts
- 5-7 active channels — 11-15 pts
- 3-4 active channels — 6-10 pts
- 1-2 channels or mostly inactive — 0-5 pts

### 2. Channel Depth & Quality (0-30 points)
For each active channel, evaluate depth:

**Blog/Content:**
- Publishing frequency (weekly = high, monthly = medium, sporadic = low)
- Content quality (depth, originality, actionability)
- Content variety (blog, guides, templates, tools)

**LinkedIn:**
- Posting frequency
- Engagement levels (comments vs likes ratio)
- Whether founders/team are active (founder-led growth signal)

**Email/Newsletter:**
- Sign-up prominence on website
- Value proposition for subscribing
- Lead magnet quality

**SEO:**
- Do key pages have proper titles and meta descriptions?
- Is there a content strategy targeting relevant keywords?
- Are URLs clean and structured?

Scoring:
- Deep investment in 3+ channels with consistent quality — 24-30 pts
- Good depth in 2-3 channels — 16-23 pts
- Surface-level presence across channels — 8-15 pts
- Minimal depth anywhere — 0-7 pts

### 3. Channel-ICP Alignment (0-25 points)
Are they active where their buyers actually spend time?

Cross-reference the business type with expected channels:
- **Enterprise SaaS** → LinkedIn, events, partnerships, analyst relations
- **SMB SaaS** → SEO, content marketing, communities, product-led
- **Agency/Consultancy** → LinkedIn (founder-led), case studies, referrals
- **Dev Tools** → GitHub, Twitter, Discord, technical content, docs

Scoring:
- Channels perfectly match where their ICP hangs out — 20-25 pts
- Mostly aligned with minor gaps — 13-19 pts
- Some misalignment (right channels but wrong emphasis) — 6-12 pts
- Major misalignment (wrong channels for their audience) — 0-5 pts

### 4. Channel Integration & Flywheel (0-25 points)
Do channels work together or operate in silos?

Look for:
- **Cross-promotion** — Blog posts shared on LinkedIn, newsletter driving to content
- **Repurposing** — Content adapted across formats (blog → social → newsletter)
- **Funnel logic** — Awareness channels feeding consideration channels feeding conversion
- **Consistent narrative** — Same messaging across all channels

Scoring:
- Clear content flywheel with integrated channels — 20-25 pts
- Some cross-promotion but not systematic — 12-19 pts
- Channels mostly siloed — 5-11 pts
- No integration visible — 0-4 pts

## Output Format

```
## Channel Mix Audit

### Score: [XX]/100

### Channel Presence Inventory: [XX]/20
[Channel table from above]

### Channel Depth & Quality: [XX]/30
[Analysis by channel]

### Channel-ICP Alignment: [XX]/25
- Business type: [detected type]
- Expected primary channels: [list]
- Actual primary channels: [list]
- Alignment: [Strong / Moderate / Weak]
[Analysis paragraph]

### Channel Integration & Flywheel: [XX]/25
[Analysis paragraph]

### Channel Scorecard
| Channel | Presence | Quality | ICP Fit | Priority |
|---------|----------|---------|---------|----------|
| [channel] | [Y/N] | [1-5] | [High/Med/Low] | [Invest/Maintain/Deprioritize] |

### Findings
[List each finding with severity: Critical / High / Medium / Low]

### Top Recommendations
1. [Highest impact channel recommendation]
2. [Second priority]
3. [Third priority]
```
