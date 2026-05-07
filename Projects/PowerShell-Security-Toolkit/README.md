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

---

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
