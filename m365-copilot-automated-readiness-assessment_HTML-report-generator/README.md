# M365 Copilot Readiness Dashboard Generator

Local Streamlit application for turning Microsoft 365 Copilot readiness scan exports (`.csv` / `.xlsx`) into interactive, executive-style dashboards and premium single-file HTML reports.

## Highlights

- Interactive dashboard views for readiness, risk, and capability posture
- Advanced filtering (service, status, priority, free-text, non-success focus)
- Premium export to **single HTML file** with:
  - theme selection
  - custom logo
  - embedded charts
  - embedded findings table + table-level filters
- No backend required; runs fully on a local PC

## Tech Stack

- Python 3.10+
- Streamlit
- Plotly
- Pandas

## Quick Start (Windows)

1. Clone this repository.
2. Open PowerShell in the project folder.
3. Install dependencies:

```powershell
py -3 -m pip install -r requirements.txt
```

4. Run the app:

```powershell
py -3 -m streamlit run app.py
```

5. Open the local URL shown in terminal (usually `http://localhost:8501`).

## Input File Requirements

The app is designed for M365 readiness report columns such as:

- `Service`
- `Feature`
- `Status`
- `Priority`
- `Observation`
- `Recommendation`
- `Link Text`
- `Link URL`

Column names are normalized, so minor naming variations are supported.

## Usage Guide

For full walkthrough instructions, see:

- [HOW_TO_USE.md](HOW_TO_USE.md)
- [PUBLISHING_GUIDE.md](PUBLISHING_GUIDE.md)

## Publishing This Repo

Before pushing publicly:

1. Remove any tenant-sensitive sample files if needed.
2. Confirm your chosen license in [LICENSE](LICENSE).
3. Verify `.gitignore` matches what you want excluded.

## License

This project is licensed under the MIT License - see [LICENSE](LICENSE).
