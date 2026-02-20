# Proof Artifact Template

```
missions/<type>/<mission>/proofs/<timestamp>-<agent>.json
```

## JSON schema
```json
{
  "mission": "neon-ledger-slots",
  "agent": "OpsLoom",
  "owner": "Zakk",
  "start_time": "2026-02-19T22:30:00Z",
  "end_time": "2026-02-19T23:15:00Z",
  "inputs": ["user request", "slot machine assets"],
  "actions": [
    { "type": "code", "desc": "Built HTML/CSS/JS slot machine" },
    { "type": "deploy", "desc": "Pushed to GitHub Pages" }
  ],
  "outputs": ["https://..."],
  "financials": {
    "cost_usd": 0,
    "expected_revenue_usd": 200,
    "owner_share": 0.6
  },
  "risks": ["None"]
}
```
