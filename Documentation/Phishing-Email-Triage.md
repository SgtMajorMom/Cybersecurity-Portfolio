# Phishing Email Triage Workflow

This document outlines the step-by-step process for triaging a suspected phishing email. It mirrors real SOC workflows and supports consistent, repeatable investigations.

---

## 🎯 Purpose
To provide a clear, repeatable workflow for analyzing suspicious emails, identifying indicators of phishing, and determining whether escalation is required.

---

## 🧭 When to Use
Use this workflow when:
- A user reports a suspicious email  
- An email contains unexpected attachments or links  
- The sender address looks unusual  
- The email triggers a security alert  

---

## 🛠 Tools Used
- Email Header Analyzer (my project)  
- VirusTotal  
- URLScan.io  
- WHOIS / DNS lookups  
- SIEM (if available)  

---

## 🧪 Step-by-Step Workflow

### **1. Collect the Evidence**
- Obtain the full email header  
- Save the email as `.eml` or `.msg` if needed  
- Capture any attachments or URLs (do NOT open them)

---

### **2. Analyze the Email Header**
Use your Email Header Analyzer workflow to extract:
- Return-Path  
- Received chain  
- Source IP  
- SPF/DKIM/DMARC results  
- Sending domain  

**Red flags:**
- SPF/DKIM/DMARC failures  
- Mismatched sender vs. return-path  
- Suspicious or foreign IPs  
- Inconsistent Received chain  

---

### **3. Investigate URLs**
For each URL:
- Submit to **URLScan.io**  
- Check domain reputation  
- Look for redirects, phishing kits, or login pages  

---

### **4. Investigate Attachments**
If attachments exist:
- Upload to **VirusTotal**  
- Check file type vs. expected type  
- Look for macros, scripts, or executables  

---

### **5. Check Sender Reputation**
- WHOIS lookup  
- Domain age  
- Known malicious indicators  
- Free email provider used for “business” email  

---

### **6. Determine Verdict**
**Benign:**  
- Authentication passes  
- Domain is legitimate  
- No malicious indicators  

**Suspicious:**  
- Some anomalies but no confirmed malicious behavior  
- Requires monitoring or user education  

**Malicious:**  
- Failed authentication  
- Malicious URLs or attachments  
- Known bad indicators  

---

## 🚨 Escalation Criteria
Escalate to Tier 2 or IR if:
- Malicious indicators confirmed  
- Credential harvesting detected  
- Malware attachment identified  
- Multiple users received the same email  
- Lateral movement suspected  

---

## 🧠 Lessons Learned
- Header analysis reveals attacker infrastructure  
- Authentication failures are strong phishing indicators  
- URL and attachment analysis provide confirmation  
- Consistency in workflow reduces investigation time  

---

## 📅 Last Updated
*May 2026*
