# រៀបចំ Facebook សម្រាប់ម៉ាស៊ីនថ្មី

ការណែនាំនេះផ្អែកលើលំហូរ Meta ដែលបានប្រើជាមួយ VST Assistant ក្នុងវគ្គសាកល្បងនេះ។ ឈ្មោះម៉ឺនុយ និងលក្ខខណ្ឌអាចផ្លាស់ប្ដូរ; ត្រូវអានសារ live របស់ Meta។ កញ្ចប់មិនរួមបញ្ចូល App IDs, App Secret ឬ Page Tokens របស់ម្ចាស់កញ្ចប់ទេ។

## ផ្លូវសម្រាប់មេក្រុម / អ្នកដំឡើង

1. ចូល https://developers.facebook.com/apps/ តាមគណនីដែលត្រូវប្រើគ្រប់គ្រង App។
2. បង្កើត App សម្រាប់ការគ្រប់គ្រង Page ដោយជ្រើស Use Case **Manage everything on your Page**។ ពិនិត្យឈ្មោះ និង Contact Email។ អ្នកប្រើជាអ្នកទទួលយកលក្ខខណ្ឌ និងបញ្ចូល Password/OTP ផ្ទាល់។
3. ក្នុង Use Cases → Customize → Permissions បន្ថែមតែសិទ្ធិសម្រាប់ការសាកផុស៖
   - `pages_show_list`
   - `pages_read_engagement`
   - `pages_manage_posts`
   - `public_profile` ជាផ្នែកមូលដ្ឋាននៃ Login។
4. ក្នុង Facebook Login for Business → Settings៖
   - Client OAuth login និង Web OAuth login៖ Yes។
   - Enforce HTTPS និង Strict Mode៖ រក្សា Yes។
   - Valid OAuth Redirect URIs៖ `https://localhost:3443/` (មាន slash ខាងចុង)។
   - បើប្រើ JavaScript SDK៖ បើក Login with JavaScript SDK ហើយកំណត់ Allowed Domain `https://localhost:3443`។ កំណែនេះបើក Login តាម redirect។
   - Save Changes ហើយផ្ទៀងផ្ទាត់ថារក្សាទុកបាន។
5. ក្នុង Configurations បង្កើត Configuration៖ General → User access token → ជ្រើសសិទ្ធិទាំង៣ខាងលើ។ កុំជ្រើស Messenger ឬ Webhook ដើម្បីសាកតែការផុស។
6. បំពេញ `.env.local`៖

```dotenv
FB_APP_ID=YOUR_NUMERIC_APP_ID
NEXT_PUBLIC_FB_APP_ID=YOUR_NUMERIC_APP_ID
NEXT_PUBLIC_FB_CONFIG_ID=YOUR_NUMERIC_CONFIGURATION_ID
```

`FB_APP_SECRET` ជាជម្រើស server-only សម្រាប់ប្ដូរទៅ Token រយៈពេលវែង។ កុំដាក់វាក្នុងអថេរ `NEXT_PUBLIC_*` និងកុំផ្ញើតាមឆាត/ក្រុម។ បើមិនបំពេញ Token អាចត្រូវការ Login ឡើងវិញពេលផុតកំណត់។

7. Restart App រាល់ពេលកែ environment variables។
8. ក្នុង App ចុច Sync តាម FB Login ហើយជ្រើស **current Pages only**។ ពិនិត្យ Page និងសិទ្ធិ មុនចុច Save។

## ចំពោះសមាជិកច្រើន

- ការដំឡើងកូដបាន មិនធានាថា Meta អនុញ្ញាតឱ្យគណនីទាំងអស់ប្រើ App នោះទេ។
- ក្នុងការសាក App ដែលមិនទាន់ Publish គណនីសាកត្រូវមាន Role ដែល Meta អនុញ្ញាត និងបំពេញតម្រូវការផ្សេងៗរបស់ Meta។ កុំបន្ថែមគ្រប់គ្នាជា App Admin ដើម្បីរំលងការត្រួតពិនិត្យ។
- មេក្រុមអាចរៀបចំ Meta App ផ្ទាល់ខ្លួន ឬប្រើ App រួមដែលម្ចាស់បានរៀបចំសម្រាប់អ្នកប្រើត្រឹមត្រូវ។ ការប្រើ App រួមជាមួយអ្នកទូទៅអាចត្រូវការ App Review/Business Verification តាមការទាមទារ live របស់ Meta។
- កុំចែក App Secret, User Tokens, Page Tokens ឬ Database របស់មេក្រុមទៅសមាជិក។
- ត្រូវសាកម្នាក់ និងមួយ Page ពី Login ដល់ការផុសពិត មុនចែកទៅក្រុមទាំងមូល។

## បញ្ហាញឹកញាប់

- HTTP / FB.login error៖ បើក `https://localhost:3443`។
- Redirect blocked៖ ផ្ទៀងផ្ទាត់ URI និង slash ឱ្យត្រូវគ្នាជាមួយ Meta Settings។
- App not available / permission error៖ ពិនិត្យ Role, សិទ្ធិ, App mode និងលក្ខខណ្ឌក្នុង Meta Dashboard។
- No Page / no Token៖ ពិនិត្យ Page access របស់គណនី និង Login ឡើងវិញដោយជ្រើស Page ត្រឹមត្រូវ។
- Database error៖ កុំលុប Database ឬ Key។ ពិនិត្យ write access និងទុក `.local-data/database.key` ជាមួយ Database ដើម។
