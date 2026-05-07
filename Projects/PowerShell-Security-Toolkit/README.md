# PowerShell Security Toolkit

This project is a collection of PowerShell scripts designed to automate common security and IT operational tasks. The goal is to reduce manual effort, improve consistency, and support SOC-style investigations.

---

## 🔍 Purpose
To streamline repetitive security tasks such as log parsing, event filtering, user activity review, and basic alert enrichment.

---

## 🛠 Tools & Technologies
- PowerShell 5/7
- Windows Event Logs
- CSV/JSON parsing
- Regex
- API calls (future expansion)

---

## ⚙️ How It Works
Each script focuses on a specific security task. Examples include:

- **Get-SuspiciousLogons.ps1**  
  Filters Event ID 4625/4624 for failed logons, unusual sources, or brute-force patterns.

- **Parse-EventLogs.ps1**  
  Extracts key fields from Security, System, and Application logs.

- **User-Activity-Review.ps1**  
  Summarizes recent logon activity, lockouts, and privilege changes.

---

## How to Run This Script

1. Open PowerShell as Administrator (required to access Security event logs).

2. Run the script:
   powershell.exe -File .\Get-SuspiciousLogons.ps1

3. Review the suspicious logon events in the output:
   - Failed logons
   - Unusual logon types
   - External IP addresses
   - Off-hours authentication attempts

     ---
     
## 📸 Screenshots / Examples
(You can add screenshots of script output later.)

---

## 🧠 Lessons Learned
- Regex is powerful for filtering noisy logs  
- Automation reduces triage time  
- Consistent output formats make analysis easier  

---

## 📅 Status
In progress — scripts being added as they are developed.
