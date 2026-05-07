# Log Parsing & Enrichment Tool

A lightweight log parsing tool designed to ingest raw logs, normalize fields, and highlight indicators of compromise (IOCs).

---

## How to Run This Script

1. Place your raw log file in the project folder.
   Example: rawlogs.txt

2. Run the script:
   powershell.exe -File .\Normalize-Logs.ps1 -InputFile rawlogs.txt -OutputFile normalized.csv

3. Open normalized.csv to review the structured output:
   - Timestamp
   - Event type
   - IP address
   - Raw message line

---

## 🔍 Purpose
To quickly transform messy logs into structured, searchable data that supports SOC investigations.

---

## 🛠 Tools & Technologies
- PowerShell or Python (future option)
- Regex
- CSV/JSON output
- IOC matching (IPs, domains, hashes)

---

## ⚙️ How It Works
1. Ingests raw log files  
2. Normalizes fields (timestamp, source, event type)  
3. Applies enrichment:
   - Known malicious IPs
   - Suspicious domains
   - Hash lookups (future)
4. Outputs clean CSV or JSON for analysis

---

## 📸 Screenshots / Examples
(Add sample log input/output later.)

---

## 🧠 Lessons Learned
- Normalization is key for correlation  
- Regex helps extract meaningful fields  
- Enrichment adds context that speeds up triage  

---

## 📅 Status
Planned — structure created and ready for implementation.
