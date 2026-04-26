# 🔒 Risk Matrix — IAM Misconfiguration Audit

This matrix evaluates identified IAM risks in the Fedora FreeIPA environment.  
Each risk is scored by **Likelihood (Low/Medium/High)** and **Impact (Low/Medium/High)**, producing an overall risk rating.

---

## 📊 Risk Matrix Table

| Findings                               | Likelihood | Impact  | Risk Level   | Mitigation Strategy                                                                        |
|----------------------------------------|------------|---------|--------------|--------------------------------------------------------------------------------------------|
| Weak password policy (min length < 8)  | High       | High    | **Critical** | Enforce min length ≥ 12, require complexity (uppercase, digits, symbols), enable rotation. |
| OTP subsystem misconfigured (MFA fails)| High       | High    | **Critical** | Reinstall with `--enable-otp`, enforce MFA for all privileged accounts, test login flows.  |
| Admin role overlap (no separation)     | Low        | High    | **Medium**   | Define clear role boundaries, enforce separation of duties.                                |
| Services not monitored (IPA, PKI)      | Medium     | Medium  | **Medium**   | Enable service monitoring, configure alerts for downtime or misconfigurations.             |
| Lack of audit logging review           | Medium     | Medium  | **Medium**   | Schedule log reviews, integrate with SIEM for anomaly detection.                           |

---

## ✅ Key Takeaways
- **Critical Risks:** Weak password policy + MFA misconfiguration must be addressed immediately.  
- **Medium Risks:** Role overlap, service monitoring, and log reviews are important for long‑term resilience.  

---

## 🛠 Next Steps
1. Apply updated password policy (`ipa pwpolicy-add`).  
2. Reconfigure FreeIPA with OTP enabled.  
3. Audit accounts regularly.  
4. Review and adjust role privileges.  
5. Implement monitoring and log review processes.  
