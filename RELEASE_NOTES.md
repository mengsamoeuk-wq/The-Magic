# VST Assistant Team 0.2.0 — 2026-10-26

## Included changes

- Local HTTPS on port 3443 using a certificate generated for each computer.
- Node setup/check/start scripts; Mac and Windows entry files.
- SQLite persistence for Facebook connections and publisher history, with AES-256-GCM encrypted record payloads. The local key and database are private installation files.
- Facebook Login for Business configuration ID and OAuth state validation, using redirect flow instead of the original desktop popup timeout.
- Permissions for Page list/read/publishing recorded at login; Page tokens saved server-side rather than returned in the login payload.
- Bot OFF defaults, scanner/webhook backend gates, and disabled bot-status changes during publishing tests.
- Visible notice explaining local test mode and illustrative dashboard metrics.
- Setup and AI instructions rebuilt around this distribution; no original account data included.

## Validation scope

The existing Mac installation successfully completed HTTPS, Facebook authorization, Page retrieval, SQLite token persistence and publisher Page-list checks. No Facebook post was published by the agent as a release test.

Clean-release dependency installation, TypeScript and local server checks are recorded in VALIDATION.md. Windows scripts are provided but have not been executed on a Windows computer. Each recipient must complete their own browser trust, Meta eligibility/permission checks and first real post test.

## Limits

Development server only. Do not expose publicly. No shared/team-hosted authentication hardening is claimed. Optional AI models, cloud uploads, Ads, Inbox and other inherited UI features are not covered by this publishing setup. Dashboard example numbers and health badges are not proof of live activity. The distribution updates Next.js and eslint-config-next to 16.4.3 and applies compatible transitive dependency fixes. npm audit reported zero known vulnerabilities at release validation time; this is not a guarantee against future findings. The existing personal installation was not changed.
