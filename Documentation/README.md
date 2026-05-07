# Security Documentation Library

This section contains structured documentation, workflows, and reference material that support real-world security operations. These documents reflect how I approach investigations, triage, detection logic, and incident response.

This library is designed to mirror the type of internal documentation used in SOC environments.

---

## 📘 Core Documentation Areas

### **1. Incident Response Workflows**
Step-by-step guides for handling common security events:
- Phishing email triage
- Suspicious login investigation
- Malware alert workflow
- Endpoint compromise workflow
- Privilege escalation investigation

### **2. Triage Playbooks**
Quick-reference guides for:
- SIEM alert validation
- Log source verification
- IOC enrichment
- Email header analysis
- URL/domain reputation checks

### **3. Detection Logic & Analysis**
Documentation for:
- KQL queries
- Regex patterns
- Sigma rule concepts
- Event ID mappings
- Log parsing logic

### **4. Vulnerability & Patch Workflows**
Processes for:
- Vulnerability scanning
- Prioritization logic
- Patch verification
- Reporting and tracking

### **5. PowerShell & Automation Notes**
Reusable snippets and explanations:
- Log parsing
- Event filtering
- User activity review
- API calls (future)

---

## 🧱 Document Template

### **Document Title**
**Purpose:**  
Why this workflow or guide exists.

**When to Use:**  
The scenario or alert type.

**Steps:**  
1. Step one  
2. Step two  
3. Step three  

**Tools Used:**  
SIEM, PowerShell, VirusTotal, WHOIS, etc.

**Indicators to Look For:**  
Suspicious IPs, failed auth, mismatched headers, etc.

**Escalation Criteria:**  
When to escalate to Tier 2 or IR.

---

## 🎯 Goals for This Section
- Build a SOC-style documentation library  
- Show structured thinking and repeatable processes  
- Demonstrate readiness for a Cybersecurity Analyst role  
- Provide clear workflows that mirror real-world operations  

---

## 📅 Last Updated
*May 2026*
