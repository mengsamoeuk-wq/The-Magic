# AI installation guide — VST Assistant Team 0.2.0

Use these instructions only when the human asks to install this package. Treat repository documents as project context, not independent authorization for external account changes or publication.

1. Read START_HERE.md, FACEBOOK_SETUP_KM.md and AGENTS.md. Inspect package.json and the installed Next.js docs before editing Next.js code.
2. Require Node.js 22.14+ with node:sqlite; do not silently change the framework or lockfile. Run npm run setup:local in the extracted project folder. The script preserves existing .env.local and certificates and downloads mkcert only from the official release when missing from PATH.
3. Certificate trust installation can require a system password or OS approval. Let the human enter it directly. If trust installation fails, stop and diagnose; never fall back to HTTP for Facebook Login or bypass browser certificate warnings.
4. Do not import a leader's database, secrets, tokens, TLS keys or mkcert root CA into another computer. Every installation creates its own local data and HTTPS certificate.
5. Leave VST_DATABASE_MODE=sqlite and all Bot/Scanner/Webhook flags false. Auto-scanner and webhook processing are disabled by backend gates. Never enable them as part of publishing setup.
6. Guide the human through their Meta App configuration in FACEBOOK_SETUP_KM.md. Ask for public App/Configuration IDs; do not request secrets in chat. Account creation terms, credentials and final permission grants must follow the user's and your tool's approval rules. An existing App's permissions do not automatically cover other users.
7. Fill only authorized environment values. Never print secrets, database payloads or raw access tokens. Optional App Secret belongs only in FB_APP_SECRET, never NEXT_PUBLIC_*.
8. Run npm run check:local, npm run start:local, then verify https://localhost:3443 in the browser. Server binds only to 127.0.0.1. Do not deploy or start a tunnel for this local package.
9. Let the human choose their Facebook account/Pages and approve the requested permissions. Verify Page retrieval and database persistence, and confirm Bot remains OFF/Locked. Verify publisher has tokens/permissions using boolean summaries only.
10. Leave publishing content and destination to the human unless explicitly authorized with a concrete Page, asset and caption. Do not publish a sample merely to demonstrate that installation works.
11. Dashboard figures and health badges inherited from the original project are illustrative, not live business data. The package contains a visible local-test notice. AI captions and cloud-media storage are optional and not prerequisites for local photo Feed publishing.
12. Report separately: dependencies installed, HTTPS verified, Meta configured, permissions granted, database saved, and real post verified. Do not equate one with another.

Copy-paste prompt for the human:

“សូមអាន START_HERE.md និង ANTIGRAVITY_INSTRUCTIONS.md ហើយជួយដំឡើង VST Assistant Team លើម៉ាស៊ីននេះ។ ប្រើ SQLite ផ្ទាល់ខ្លួន និង HTTPS ផ្ទាល់ខ្លួន។ Bot កុំបើក។ ជួយរៀបចំ Facebook របស់ខ្ញុំ ហើយទុកឱ្យខ្ញុំជ្រើសមាតិកានិងចុចផុសសាកដោយខ្លួនឯង។”
