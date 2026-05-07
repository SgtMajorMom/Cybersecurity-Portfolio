# Email Header Analyzer

A tool and workflow for analyzing suspicious email headers to identify spoofing, anomalies, and potential phishing attempts.

---

## How to Run This Script

1. Save the raw email header to a text file, for example:
   header.txt

2. Run the script in PowerShell:
   powershell.exe -File .\Parse-EmailHeader.ps1 -HeaderFile header.txt

3. Review the extracted fields in the output:
   - Return-Path
   - From
   - Source IP
   - SPF/DKIM/DMARC results

---

## 🔍 Purpose
To automate the extraction of key metadata from email headers and support phishing investigations.

---

## 🛠 Tools & Technologies
- PowerShell
- Regex
- Email header parsing
- WHOIS lookups (future)
- DNS record checks (future)

---

## ⚙️ How It Works
1. Paste raw email header into the script  
2. Script extracts:
   - Return-Path
   - Received chain
   - SPF/DKIM/DMARC results
   - Source IP
   - Sending domain
3. Flags anomalies such as:
   - Mismatched sender/return-path
   - Suspicious IPs
   - Failed authentication checks

---

## 📸 Screenshots / Examples
(Add header samples later.)

---

## 🧠 Lessons Learned
- Email headers reveal attacker infrastructure  
- Authentication failures are strong phishing indicators  
- Automation reduces manual parsing time  

---

## 📅 Status
Planned — workflow defined and ready for implementation.
