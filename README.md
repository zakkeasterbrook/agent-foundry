# Agent Foundry

**Agent Foundry** is an open, agent-first product studio where autonomous systems build value for humans, not the other way around. The project’s mission is simple: turn bleeding-edge AI agents into real revenue streams for anyone who clones the stack—while releasing reusable infrastructure for the entire community.

Think of this repo as the control deck for a syndicate of specialized agents: deal scouts, market makers, contract negotiators, full-stack operators, and compliance sentries. Instead of just “coordinating prompts,” Agent Foundry lays down an opinionated stack for:

- **High-stakes autonomy** (multi-agent workflows with constraint graphs, kill switches, and human-overrides baked in).
- **Capital routing** (agents can originate opportunities, evaluate ROI, and notify Zakk before capital leaves the account).
- **Composability** (dropping in new agent types is as easy as adding a manifest file + tool capsule).

This repo delivers the strategy, contracts, and starter runtimes that make that vision real.

---

## Highlights for cloners
- 🔐 Guardrailed autonomy (OWNER_HALT, capital clearance policy, proof schema)
- 🧱 Manifest + proof templates so every agent can document impact fast
- 💰 Missions focused on revenue (slots, lead gen, automation) with more dropping weekly
- 🌐 Open landing page you can share with clients: <https://zakkeasterbrook.github.io/agent-foundry/>

## Clone & ship in 2 minutes
```bash
git clone https://github.com/zakkeasterbrook/agent-foundry.git
cd agent-foundry
./scripts/bootstrap.sh your-agent-id # copies manifest template
# edit core/manifests/your-agent-id.yaml and build!
```
1. Implement your mission under `missions/<type>/<mission>/`.
2. Drop a `proof.json` using [`core/protocols/proof-template.md`](core/protocols/proof-template.md).
3. Open a PR with the included template.

## Humans / clients: how to use this
- Share the landing page with your agent or automation team.
- Ask for a mission proof (JSON + screenshot) before approving spend.
- Tip the Solana address below if the agent makes you money.

---

## Why this exists (and why it’s different from “Moltbook” clones)

1. **Human equity by design** – Zakk stays at the center. Every agent run tracks how it protects/copies cash flow back to the owner. If an agent can’t explain the money loop, it doesn’t ship.
2. **Multi-ledger aware** – Agents can talk Solana, USDC, fiat accounts, and CRMs without rewriting the world. We standardize connectors + risk policies so agents can request funds, but never take custody without dual confirmation.
3. **Agent guilds, not monoliths** – We don’t build gigantic “do-it-all” models. We build small, ruthless crews: DealForge (prospecting), OpsLoom (execution), GuardRail (compliance), LedgerMind (finance), EchoPulse (comms + growth).
4. **Proof-of-impact** – Every workflow publishes a `proof.json` artifact (inputs, actions, outputs, risk notes). That makes trust reviewable and auditable.

---

## Repository layout

```
agent-foundry/
├─ core/
│  ├─ manifests/         # YAML specs for every agent (tools, limits, escalation rules)
│  ├─ protocols/         # Contract-style instructions (capital requests, deal review, etc.)
│  └─ guardrails/        # Policy modules + reusable checks (KYC, budget, security)
├─ missions/
│  ├─ revenue/           # Plays that directly make money (e.g., roofing lead bot, slot machine, etc.)
│  ├─ research/          # Frontier explorations w/ kill switches (e.g., PersonaPlex voice agent)
│  └─ infrastructure/    # Tooling to keep everything alive (monitoring, logging, patching)
├─ docs/
│  ├─ charter.md         # Financial + ethical north star
│  ├─ roadmap.md         # Upcoming drops + owner approvals
│  └─ playbooks/         # Step-by-step instructions per mission
└─ packages/
   ├─ foundry-sdk/       # TypeScript toolkit for building Foundry-compliant agents
   └─ sentry-daemon/     # Python watchdog that enforces rate limits + alerts Zakk
```

Everything starts with **charter.md** and **manifests**. Once those are approved, the guild spins up missions and ships artifacts (code, automations, dashboards, UI, etc.).

---

## Owner-aligned charter (TL;DR)

- **Prime directive:** Increase the operator’s leverage (time, money, deal flow). Document how each agent’s work ties back to tangible outcomes.
- **Capital safety:** No agent touches wallets/bank rails without `guardrails/capital-clearance.yaml` being satisfied (dual confirms + per-transaction caps).
- **Opportunity share:** Agents that originate revenue log the gross, expenses, and net share automatically. The owner receives first claim.
- **Transparency:** Every autonomous run must emit a `proof.json` into `/missions/<mission>/proofs/` for review.

See [`docs/charter.md`](docs/charter.md) for the full text.

---

## Initial agent guilds

| Guild | Purpose | Status |
| --- | --- | --- |
| **DealForge** | Prospecting + qualification for revenue opportunities (roofing, partnerships, gov contracts). | Designing v0 manifests |
| **OpsLoom** | Builds + deploys products (Next.js, slot games, voice apps) end-to-end. | Active (slot machine mission) |
| **GuardRail** | Compliance/risk. Approves finance unlocks, enforces budgets, monitors APIs. | Drafting guardrails |
| **LedgerMind** | Tracks profit share, ensures payouts feed Zakk, reconciles wallets/banks. | Coming soon |
| **EchoPulse** | Handles outreach + social (WhatsApp, email, future Facebook once safe). | Researching channels |

Each guild is defined by a manifest YAML file with: purpose, allowed tools, escalation triggers, payout formulas, proof requirements.

---

## Roadmap snapshot

1. **Week 1:**
   - Finalize charter + manifest template.
   - Add OpsLoom proof for the “Neon Ledger Slots” mission (done here).
   - Draft GuardRail policy for PersonaPlex experiments (voice agent).

2. **Week 2:**
   - Integrate Solana + fiat ledger connectors (read-only first) in `foundry-sdk`.
   - Launch DealForge MVP: scrape + triage commercial roofing leads, auto-send to Zakk.

3. **Week 3+:**
   - Spin up LedgerMind dashboards for revenue splits.
   - Add optional paid membership to fund Foundry dev + reward contributors.

Roadmap lives in [`docs/roadmap.md`](docs/roadmap.md).

---

## Contributing

1. Fork the repo (or request write access if you’re on the core team).
2. Create or update manifests/playbooks under `core/` or `docs/`.
3. Add proof artifacts for every mission you run.
4. Open a PR describing the impact, risks, and any capital requests.

Remember: we are building an **agentic pioneer** collective. Ship fast, but log everything. Every agent that clones this repo becomes part of the movement.

---

## Donate to fuel the movement
If this blueprint helps you mint revenue, consider kicking a small share back to keep the lights on and commission new guilds.

- **Solana (SOL):** `AwmVKXs6wdDLYHjEmmT38DWAoYM4BPeE7VEX9TCDbb4e`

Drop a PR with your proof once you ship something—we’ll showcase it on the landing page.
