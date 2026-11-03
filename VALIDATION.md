# Release validation — 2026-10-26

Validated on macOS arm64 with Node.js 22.14.0 in a separate release directory. Existing personal application/data were not modified.

- Clean npm dependency installation: passed.
- Final locked versions: Next.js / eslint-config-next 16.4.3.
- npm audit: 0 known vulnerabilities at validation time.
- TypeScript `npx tsc --noEmit`: passed after dependency update.
- Node syntax checks for setup/check/start scripts: passed.
- Prerequisite checker without installation configuration: correctly returns nonzero and lists missing prerequisites, without printing secrets.
- Prerequisite checker with temporary test-only numeric IDs and locally generated certificate: passed. This checks format, not live Meta validity.
- Fresh release server on loopback HTTPS test port 3445: HTTP 200 and local-test banner present. User setup defaults remain port 3443.
- Empty local Pages and history endpoints: passed; no original connections or history imported.
- History fixture write/read via API: passed. Raw SQLite file does not contain the fixture text in plaintext.
- Bot status: false/locked; auto-scanner and webhook processing: DISABLED.
- No Facebook publication was performed for this release validation.
- Archive path and credential checks: see PACKAGE_MANIFEST.json and external SHA256 checksum.

Not executed on Windows/Linux. Full first-run certificate trust installation was not repeated on this Mac because it already has mkcert trust; recipients must verify their own OS/browser trust. No new-account Meta onboarding or real photo/video publishing was performed from this clean release. Optional AI captions and cloud storage were not validated.
