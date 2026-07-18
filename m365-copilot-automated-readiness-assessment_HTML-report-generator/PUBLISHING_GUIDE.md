# Publishing Guide (GitHub)

## 1. Prepare repository contents

Make sure these files are present:

- `README.md`
- `HOW_TO_USE.md`
- `LICENSE`
- `requirements.txt`
- `.gitignore`

## 2. Review data before publishing

Check whether sample files contain tenant-sensitive or customer data.

- Keep samples only if they are safe to share publicly.
- Remove or anonymize sensitive files before push.

## 3. Initialize and push (if needed)

```powershell
git init
git add .
git commit -m "Initial release"
git branch -M main
git remote add origin https://github.com/<your-org-or-user>/<repo-name>.git
git push -u origin main
```

## 4. Recommended GitHub repo settings

- Add a repository description
- Enable Issues (optional)
- Add topics: `microsoft-365`, `copilot`, `streamlit`, `plotly`, `dashboard`
- Create first release tag (optional)

## 5. Optional next files

If you want stronger open-source hygiene, add:

- `CONTRIBUTING.md`
- `CODE_OF_CONDUCT.md`
- GitHub issue templates
