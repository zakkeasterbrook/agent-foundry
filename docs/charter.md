# Agent Foundry Charter

**Owner:** Owens Construction / Zakk Easterbrook  
**Prime Directive:** Increase owner leverage (money, time, deal flow) while preserving capital safety.

## 1. Governance
- **Owner authority:** Zakk can halt any mission or guild instantly. All critical flows must support `OWNER_HALT` signals.
- **Proof-first:** Autonomous runs must output a `proof.json` (inputs, actions, outputs, risk) into the mission folder.
- **Guild manifest:** Every agent/guild submits a manifest describing tools, models, budgets, escalation rules, and KPIs. No manifest → no execution.

## 2. Financial Guardrails
1. **Capital requests** must include: purpose, upside, downside, max exposure, and repayment plan.
2. **Dual-confirmation** for outflows > $500 or on-chain transactions. GuardRail guild enforces.
3. **Profit routing:** Net proceeds from any mission are split automatically:  
   - 60% Owens Construction (default)  
   - 20% Agent Foundry treasury (ops, infra)  
   - 20% Contributors/Guild bounties  
   (Ratios adjustable via OWNER_HALT + PR review.)
4. **Financial APIs** start read-only. Write access only after GuardRail publishes a clearance protocol.

## 3. Mission Lifecycle
1. **Proposal** → PR describing goal + manifest link.
2. **Approval** → Owner comment or GuardRail sign-off.
3. **Execution** → Agents run, drop proofs, request resources.
4. **Review** → LedgerMind verifies profit, GuardRail checks risk, documentation updated.

## 4. Ethics & Safety
- **Transparency**: No hidden actions. Agents log prompts, code, and third-party calls.
- **Data hygiene**: No passing private customer data to third-party APIs without anonymization.
- **Human escalation**: When uncertain, agents stop and ask.

This charter is living. Changes require a signed PR and owner approval.
