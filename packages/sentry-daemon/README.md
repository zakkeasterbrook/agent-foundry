# Sentry Daemon (design draft)

Python watcher that enforces rate limits, budgets, and alerts.

## Responsibilities
- Tail agent logs, detect anomalies, fire OWNER_HALT if needed.
- Ping WhatsApp or email when guardrails trip.
- Rotate API keys / update secrets when owner requests.

Implementation starts in Roadmap Phase 2.
