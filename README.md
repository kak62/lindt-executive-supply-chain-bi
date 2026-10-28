# 🍫 Lindt & Sprüngli (UK) — Executive Logistics & Supply Chain Intelligence Suite

[![Live Interactive Portfolio](https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-gold?style=for-the-badge&logo=github)](https://kak62.github.io/lindt-executive-supply-chain-bi/)
[![Power BI Desktop](https://img.shields.io/badge/Power%20BI-Semantic%20Model-yellow?style=for-the-badge&logo=powerbi)](https://powerbi.microsoft.com/)
[![SSAS Tabular](https://img.shields.io/badge/Engine-SSAS%20Tabular-blue?style=for-the-badge)](https://learn.microsoft.com/analysis-services/)
[![DAX Visuals](https://img.shields.io/badge/Custom%20Visuals-HTML5%20%2F%20SVG-darkgreen?style=for-the-badge)](https://dax.guide/)

> **Live Interactive Demo:** [https://kak62.github.io/lindt-executive-supply-chain-bi/](https://kak62.github.io/lindt-executive-supply-chain-bi/)

An enterprise-grade, luxury-branded executive Power BI analytics suite engineered for **Lindt & Sprüngli UK**. Rather than relying on rigid, out-of-the-box Power BI visuals, this project utilizes **custom-engineered HTML5/CSS and SVG micro-visuals rendered directly within dynamic DAX measures** on top of a high-performance **SSAS Tabular model**, deployed programmatically via the **Tabular Object Model (TOM)**.

---

## 📸 Executive Dashboard Preview

![Lindt Executive Dashboard](assets/lindt_page3_preview.png)

---

## 🚀 Key Architectural Innovations

### 1. Bespoke HTML/SVG DAX Visual Micro-Components
* **Elimination of Visual Clutter:** Standard Power BI visuals enforce rigid padding, card subtitles, and lack granular control over luxury typography. Here, all KPI cards and charts are generated via pure DAX string measures returning inline HTML/CSS and vectorized SVGs.
* **Fitted Interactive Tooltips:** Custom hover states and tooltips built directly into CSS without the latency or awkward sizing of default Power BI tooltip report pages.
* **Vectorized Seasonal Stock Ramp:** Pure SVG gradient bar charts with dynamic peak tags (*Christmas Surge*, *Easter Buffer*) and exact metric alignment computed on the fly.

### 2. DevOps & Tabular Object Model (TOM) Automation
* Programmatic management of the Power BI / SSAS Tabular engine using PowerShell and `Microsoft.AnalysisServices.Tabular.dll`.
* Automated continuous measure deployment script (`push_perfect_live.ps1`) pushing 28+ measures directly into the active model on `localhost` in under 3 seconds.

### 3. Supply Chain & Logistics Intelligence
* **OTIF (On-Time In-Full) Compliance:** Real-time compliance monitoring across tier-1 UK grocers (Tesco, Sainsbury's, Waitrose, M&S, Ocado, Asda).
* **Distribution Hub Throughput:** Capacity tracking across 48,500 pallets (Feltham National DC, Midlands Regional Hub, North & Scotland Hub, Lindt Retail Fleet).
* **Buffer Ramp Management:** Tracking dwell time (<2.5 days SLA) and seasonal finished goods safety stock.

---

## 🛠️ Tech Stack & Methodologies

* **Analytics & Modeling:** Power BI Desktop, SSAS Tabular, Advanced DAX, Star Schema Modeling (`Fact_Shipments_OTIF`, `Fact_Inventory_DailySnapshot`, `Dim_DistributionHub`, `Dim_CustomerChannel`).
* **Frontend & Visualization:** Dynamic SVG, HTML5 Canvas Architecture, CSS Grid/Flexbox, Playfair Display & Plus Jakarta Sans typography.
* **DevOps & Automation:** PowerShell, Tabular Object Model (TOM), AMO/ADOMD assemblies, DAX Studio.

---

## 📂 Repository Structure

```
├── assets/
│   ├── Lindt_Canvas_Theme_Page1.jpg    # 3D Embossed Canvas Theme (Page 1)
│   ├── Lindt_Canvas_Theme_Page2.jpg    # 3D Embossed Canvas Theme (Page 2)
│   ├── Lindt_Canvas_Theme_Page3.jpg    # 3D Embossed Canvas Theme (Page 3)
│   └── lindt_page3_preview.png         # High-resolution screenshot
├── scripts/
│   ├── push_perfect_live.ps1           # Tabular Object Model (TOM) automation script
│   └── live_measures_payload.json      # Complete production DAX measures library
├── index.html                          # Interactive live portfolio web application
└── README.md                           # Technical case study & documentation
```

---

## 👤 Author

**Kevin Koshy**  
* GitHub: [@kak62](https://github.com/kak62)
