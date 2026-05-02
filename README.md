<div align="center">
<img
<img width="225" height="225" alt="SHE CODE" src="https://github.com/user-attachments/assets/79879295-eff3-4418-9605-2024becc91e2" />

---

# CAPSTONE PROJECT: 🔐 **PASSWORD SECURITY + IAM MISCONFIGURATIONS AUDIT**

</div>

---

## 📌 Table of Contents

- # 📑 Table of Contents

- [Overview](#-overview)
- [Objectives](#-objectives)
- [Repository Structure](#-repository-structure)
- [Subtopics Covered](#-subtopics-covered)
- [Audit Findings Summary](#-audit-findings-summary)
- [Evidence Log](#-evidence-log)
- [Risk Matrix](#-risk-matrix)
- [Recommendations](#-recommendations)
- [Author](#-author)
- [License](#-license)

---
### 📖 Project Overview
Welcome to **SCA-CYBERSECURITY_GROUP-4_CAPSTONE-PROJECT**! This repository contains a capstone project that focuses on **Auditing Password Security and Identity/Access Management (IAM) Configurations** to identify weak authentication controls and misconfigured privileges. The audit emphasizes **MFA Enforcement**, **Password Policy Review**, **Least Privilege Access**, **Role Assignments**, **Account Audits**, and **Privilege Escalation Risks**.

---

### 🎯 Objectives
- Assess password policies for compliance with best practices.
- Verify MFA enforcement across critical accounts.
- Audit IAM role assignments and privilege levels.
- Identify risks of privilege escalation.
- Provide actionable recommendations to strengthen authentication and access controls.

---

## 📂 Repository Structure

```
SCA-CYBERSECURITY_GROUP-4_CAPSTONE-PROJECT/
|
├── report/                →  Final report (Word)
|  └── Capstone Project Report.docx
├── screenshots/ 
| └── screenshots         →  Evidence screenshots (OTP setup, password policies, role assignments, login tests, OTP failures)
├── scripts/              → Scripts and commands used in Fedora VM
| ├── demo_flow.md        →  Step-by-step IAM audit commands (password policy, MFA, roles, accounts)
| ├── setup.sh            →  Shell script to install and configure FreeIPA on Fedora
| ├── audit_commands.txt  →  Quick checklist of commands for live demo
| └── reset_env.sh        → Script to reset/reinstall Fedora VM environment for clean runs
|
├── docs/
| └── Risk matrix
├── presentation/          →  Slide deck for capstone presentation
| └──
└── README.md              →  Project overview

```

---

## 🛠 Subtopics Covered
1. **MFA Enforcement**  
2. **Password Policy Review**  
3. **Least Privilege Access**  
4. **Role Assignments**  
5. **Account Audits**  
6. **Privilege Escalation Risks**

---

## 📊 Audit Findings Summary
- **Password Policy Review**: Minimum length and lockout rules were enforced; complexity requirements need strengthening.  
- **MFA Enforcement**: OTP tokens created successfully, but login validation failed due to FreeIPA configuration gap.  
- **Least Privilege Access**: Roles generally aligned with least privilege.  
- **Role Assignments**: Admin retains full privileges; Developer, User1, User2 and Auditor roles limited appropriately.  
- **Account Audits**: Inactive accounts discovered, requiring immediate disablement or deletion.  
- **Privilege Escalation Risks**: Misconfigured roles could escalate privileges; mitigation required through stricter role separation and MFA enforcement.

---

## 📋 Evidence Log
|     Control Tested       |     Commands        |   Screenshot Reference   |       Result       |   Risk Level   | Recommendation |
|--------------------------|---------------------|--------------------------|----------------------|--------------|----------------|
| Password Policy Review   | `ipa pwpolicy-show` | `screenshots/global policy cli.png`, `global policy 1.png`, `global policy 2.png` | Minimum length = 8, lockout enabled | Medium | Enforce complexity rules (uppercase, digits, symbols) |
| MFA / OTP Enforcement    | `ipa otptoken-add`, `kinit admin` | `screenshots/ipa totpoken-show.png`, `ipa kinit admin.png` | OTP token created, login failed initially due to missing secret key | High | Reconfigure FreeIPA with OTP enabled |
| Least Privilege Access   | `ipa role-show Developer` | `screenshots/ipa role-show 1.png`, `ipa role-show 2.png` | Developer role has limited rights | Low | Maintain least privilege principle, review quarterly |
| Role Assignments         | `ipa role-show Admin` | `screenshots/ipa role-show 1.png`, `ipa role-show 2.png` | Admin retains full privileges | Medium | Separate duties, avoid overlapping critical roles |
| Account Audits           | `ipa user-find --all` | `screenshots/ipa user-find-all.png` | No inactive accounts identified | Low | review accounts quarterly |

---

## 📈 Risk Matrix
|          Finding         | Likelihood | Impact | Overall Risk |                   Mitigation Strategy                           |
|--------------------------|------------|--------|--------------|-----------------------------------------------------------------|
| Weak Password Policy     | High       | High   | Critical     | Enforce complexity rules (uppercase, digits, symbols, rotation) |
| Missing MFA / OTP        | High       | High   | Critical     | Enable OTP subsystem, require MFA for all privileged accounts   |

---

- **Likelihood** reflects how often the issue could occur in practice.  
- **Impact** reflects the severity if exploited.  
- **Overall Risk** is derived from combining likelihood and impact.  
- **Mitigation Strategy** provides actionable steps to reduce risk.

---

## ✅ Recommendations
- Strengthen password complexity rules.  
- Reconfigure FreeIPA with OTP subsystem enabled.  
- Apply least privilege consistently across all roles.  
- Disable inactive accounts promptly.  
- Audit roles quarterly to prevent privilege creep.  
- Monitor privilege changes and enforce MFA for all privileged accounts.  

---

## 🧾 Final Report
The full audit report is in `/report`. It includes:
- Executive summary.  
- Audit methodology.   
- Risk matrix.  
- Recommendations.
- Lessons Learned

---

## **How to Use This Repository**  
1. Clone the repository:  
   ```bash  
   git clone https://github.com/DorcasJohnson/SCA-CYBERSECURITY_GROUP-4_CAPSTONE-PROJECT
   ```
2. Explore the report and scripts to understand Password Security & IAM Misconfiguration Audit. 
3. Run the scripts.
4. Review the evidences.
5. Explore the presentation slides.  

---

### 🤝 Contribute:
Feel free to open issues, submit pull requests, and share your own experiences and insights! Let’s make this the ultimate resource for everyone. Please follow these steps:
1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m "Add your feature"`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a pull request

---

## 👩‍💻 Author

Dorcas Johnson | Ruth Olatunji | Sarah Effiong | Rita Olisakwe | Iyewunmi Olanrewaju | Grace Ebimoh | Favour Marcus | Crown Godwin

She Code Africa Cybersecurity Group 4 Capstone Project  
Location: Remote

**Purpose:** Educational demonstration of auditing password security and identity/access management (IAM) configurations to identify weak authentication controls and misconfigured privileges.

**Disclaimer:** Perform this only in authorized environments. Unauthorized access is illegal.

---

## 📄 License

This project is licensed under the **MIT License** ; see the [LICENSE](LICENSE) file for details.

---

## 📧 Contact

For questions or issues, please [open an issue](https://github.com/deejonsen/SCS-CYBERSECURITY_GROUP-4_CAPSTONE-PROJECT/issues) or contact [deejonsen23@gmail.com](deejonsen23@gmail.com).


### **Resources** 
- 🔗 [https://drive.google.com/drive/folders/125zVhusEockm8KyDLaec9qsJ29lFAnR4?usp=drive_link](https://drive.google.com/drive/folders/125zVhusEockm8KyDLaec9qsJ29lFAnR4?usp=drive_link)
- 🔗 [https://www.freeipa.org/page/Main_Page](https://www.freeipa.org/page/Main_Page)
- 🔗 [https://pages.nist.gov/800-63-3/sp800-63b.html](https://pages.nist.gov/800-63-3/sp800-63b.html)
