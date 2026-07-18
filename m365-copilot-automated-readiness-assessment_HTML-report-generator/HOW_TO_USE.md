# How to Use

## 1. Start the app

```powershell
py -3 -m streamlit run app.py
```

## 2. Load your readiness report

1. Upload a `.csv` or `.xlsx` file.
2. If Excel has multiple sheets, select the right worksheet.

## 3. Explore dashboard views

- **Executive Overview**: high-level readiness visuals
- **Risk & Recommendations**: severity, category, service, and capability comparisons
- **Data Explorer**: full findings table with export options

## 4. Filter the analysis

Use sidebar filters to narrow by:

- service
- status
- priority
- text search
- non-success-only view

## 5. Export a premium single HTML report

1. Go to **Export customization**.
2. Set report title.
3. Choose theme.
4. Upload optional logo.
5. Click **Export dashboard (single HTML)**.

The exported file is self-contained and can be shared directly.

## 6. Use filters inside exported HTML

In the **Filtered findings** section of the exported report, use:

- search box
- service/status/priority dropdown filters
- reset button

These filters work directly in the exported HTML file.
