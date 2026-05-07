# PowerShell Security Toolkit

A collection of PowerShell scripts designed to automate common security and IT operations tasks.  
This toolkit helps streamline repetitive work such as log parsing, event filtering, and user activity review.

---

## 🔍 Purpose

Security and IT teams often spend significant time reviewing logs, identifying suspicious activity, and validating user behavior.  
This toolkit automates those tasks to:

- Speed up investigations  
- Reduce manual log review  
- Improve consistency  
- Provide clear, structured output  

---

## 🛠 Tools & Technologies

- PowerShell 5/7  
- Windows Event Logs  
- CSV / JSON parsing  
- Regex for pattern extraction  
- API calls (future expansion)  

---

# ⚙️ How It Works

Below are the scripts included in this toolkit and how they function.

## **Get-SuspiciousLogons.ps1**

Identifies suspicious authentication activity by analyzing Windows Security Event Logs.  
This script highlights:

- Failed logons  
- Unusual logon types  
- External IP addresses  
- Off-hours authentication attempts  

### **How to Run This Script**

1. Open PowerShell as Administrator (required to access Security event logs).

2. Run the script:
powershell.exe -File .\Get-SuspiciousLogons.ps1
4. Review the suspicious logon events in the output:
- Failed logons  
- Unusual logon types  
- External IP addresses  
- Off-hours authentication attempts  

### 📸 Example Output (Placeholder)

> *Screenshot placeholder — Suspicious Logons output will be added here.*

## **Get-UserActivityReview.ps1**
Provides a summary of user account activity, including authentication patterns and account changes.  
This script helps identify:

- Successful logons  
- Failed logons  
- Account lockouts  
- Password changes  
- Privilege changes  

### **How to Run This Script**

1. Open PowerShell as Administrator.

2. Run the script:
   powershell.exe -File .\Get-UserActivityReview.ps1

3. Review the activity summary:
- Successful logons  
- Failed logons  
- Account lockouts  
- Password changes  
- Privilege changes  

### 📸 Example Output (Placeholder)

> *Screenshot placeholder — User Activity Review output will be added here.*

## 📸 Screenshots / Examples

(Coming soon — will include sample output from each script.)

---

## 🧠 Lessons Learned

- Improved understanding of Windows Event Logs  
- Better regex pattern extraction  
- Stronger PowerShell scripting structure  
- Enhanced ability to automate SOC workflows  

---

## 📅 Status

Actively maintained — more scripts coming soon.
