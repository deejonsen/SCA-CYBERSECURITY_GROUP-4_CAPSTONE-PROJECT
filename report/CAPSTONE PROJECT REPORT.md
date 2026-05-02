# SHE CODE AFRICA ACADEMY COHORT 3.0 

## CYBERSECURITY GROUP 4 CAPSTONE PROJECT REPORT: PASSWORD SECURITY & IAM MISCONFIGURATION AUDIT

---

### **EXECUTIVE SUMMARY**

This capstone project reviewed password policies and identity/access settings in the FreeIPA environment to identify weak authentication controls and misconfigured privileges. The objective of this project was to perform an audit of password and identity access management (IAM) controls implemented in FreeIPA on a Fedora virtual machine. Password policies, multi-factor authentication, and role assignment testing were performed to ensure proper configuration and uncover potential vulnerabilities. The audit of password security, revealed weak default passwords policies allowed on the server, login failure when first creating OTP tokens due to secret values not being defined, and a hypothetical risk of role misassignment. Recommendations were provided to improve security measures and implement least privilege.

---

## **INTRODUCTION**

Password security refers to the set of policies, practices, and technologies designed to protect user credentials from unauthorized access, theft, or cracking. It is a subset of identity management that enforces requirements like complexity, length, and multi-factor authentication (MFA) to ensure that only legitimate users can access systems.
Identity and Access Management (IAM) is a key domain in cybersecurity. It focused on ensuring that the right individuals have the appropriate access to systems, applications, and data at the right time and for the right reasons. It combines policies, processes, and technologies to manage digital identities and regulate access.
IAM operates on three core pillars: Authentication (verifying identity), Authorization (granting access rights), and Accountability (tracking actions through logging and monitoring) (AAA).
IAM (Identity and Access Management) Misconfiguration Audit is a proactive assessment of an organization’s cloud environments, applications, and network settings to identify improperly configured permissions, default settings, or gaps in security policies. It specifically looks for over-privileged accounts, exposed access keys, and inactive or "drifted" configurations that could be exploited.
A security misconfiguration occurs when security settings are improperly set up or left at their insecure default settings. This can lead to vulnerabilities that attackers can exploit to gain unauthorized access, leading to potential data breaches, account takeover, and system compromise. 

## **OBJECTIVES**

* Assess password policies for compliance with best practices.
* Verify MFA enforcement across critical accounts.
* Audit IAM role assignments and privilege levels.
* Identify risks of privilege escalation.
* Provide actionable recommendations to strengthen authentication and access controls.

---

## **KEY FOCUS AREAS OF PASSWORD SECURITY & IAM MISCONFIGURATION AUDIT**

### **A. Password Policy Review:**

A password policy is a set of rules that define how users must create and manage their passwords. It is different from a password policy review which is the process of evaluating those rules to ensure they are strong, relevant, and not creating security gaps.
To further expatiate, we can use a real life analogy of a school hostel. Here, password policy is seen as the rules for locking  doors in the hostel while password policy review is checking if those rules actually prevent theft.

### **Why Password Policy Review Matters:**

Password reviews matter because they are one of the simplest ways to prevent credential stuffing and brute-force attacks. Poor password policies can lead to:
* Unauthorized access
* Data breaches
* Account takeover attacks

In IAM, this becomes worse because one weak password can cause access to multiple systems. When reviewing a password policy, you examine these components:

1. **Password Length:** This matters because short passwords are easily subjected to brute-force attacks.
    - **Good Practice:** minimum of 12–16 characters
    - **Weak Policy:** minimum of 6 characters 
2. **Complexity Requirements:** Always ensure your password contains the following;
    - Uppercase letters (A–Z)
    - Lowercase letters (a–z)
    - Numbers (0–9)
    - Special characters (!@#$)
        
3. **Account Lockout Policy:** Account should be locked after 3 failed attempt. This will stop brute-force attacks. No lockout policy makes an attacker  try unlimited guesses.
4. **Multi-factor Authentication:** An MFA acts as the most critical defense when a password is stolen or weak. In an IAM context, MFA ensures that a single compromised credential does not grant an attacker full access to cloud infrastructure.
5. **User Awareness & Behavior:** An account user should not share passwords, write them on paper or use the same password everywhere. Password review must consider human behavior.

IAM controls who has access to what should be seen and known, so if password policies are weak, attackers can impersonate users and gain access to systems they shouldn’t.
Example of IAM Misconfiguration:
  
    Weak password policy + admin account = complete system compromise.

#### **How to Conduct a Password Policy Review:**

1. **Collect Existing Policy:** from system admin or documentation
2. **Compare with Best Practices:** use standards like NIST guidelines.
3. **Identify Weaknesses:** Ask questions like, 
    - Are passwords too short?
    - Is MFA missing?
    - Is reuse allowed?
    
4. **Assess Risk:** what happens if one account is compromised?
5. **Recommend improvements** such as:
    - Increase password minimum length.
    - Harden complexity.
    - Enforce MFA.
    - Remove frequent forced changes.

Conclusively, a password policy review ensures that authentication controls remain effective against evolving threats. Weak or outdated policies create vulnerabilities that attackers can exploit, especially in IAM systems where a single compromised credential can grant widespread access.

### **B. MFA Enforcement:**

Multi-Factor Authentication (MFA) enforcement is a security control that requires users to provide more than one method of verification before gaining access to a system. It strengthens authentication security by reducing the risk of unauthorized access caused by stolen or weak passwords. In this audit, the focus was to assess whether MFA is enabled, enforced, and functioning properly, especially for privileged accounts.  Practical login tests were conducted to observe authentication behavior and verify whether access required both password authentication and a second factor. Testing also considered whether MFA controls could be bypassed.

### **Evidence Collection and Gap Identification**

Observations from testing were documented as evidence, including accounts without MFA protection, weaknesses in enforcement, and issues encountered with OTP authentication configuration. These were analyzed as security gaps.

### **Risk Analysis**
Identified gaps were assessed to determine their potential security impact, including risks such as unauthorized access, credential compromise, and weaknesses arising from misconfigured authentication controls.

### **C. Least Privilege Access:**

This is otherwise known as **The Principle of Least Privilege (PoLP)**. It refers to an information security concept in which a user is given the minimum levels of access or permissions needed to perform his/her job functions. It is widely considered to be a cybersecurity best practice and is a fundamental step in protecting privileged access to high-value data and assets. Least privilege extends beyond human access. The model can be applied to applications, systems or connected devices that require privileges or permissions to perform a required task. Least privilege enforcement ensures the non-human tool has the requisite access needed and nothing more. Effective least privilege enforcement requires a way to centrally manage and secure privileged credentials, along with flexible controls that can balance cybersecurity and compliance requirements with operational and end-user needs. is a foundational security concept that dictates that users, systems, and applications should only be granted the minimum level of access necessary to perform their tasks. 

This principle reduces the attack surface by limiting unnecessary access. If an attacker compromises a low-privileged account, the damage is minimized compared to compromising an administrative account. Implementation of PoLP involves:

- Defining clear access requirements per role.
- Restricting administrative privileges.
- Using temporary privilege elevation (Just-in-Time access).
- Regularly reviewing and revoking unused permissions

Common problems include privilege creep, where users accumulate permissions over time, and poor visibility into access rights.

### **Types of Privileges**

Privileges define what actions a user or system can perform. These include (R, W, E):

- **Read access:** viewing data
- **Write access:** modifying data
- **Execute access:** running programs
- **Administrative access:** full system control

Privileges exist across multiple layers such as:

- Operating systems
- Databases
- Applications
- Network infrastructure

Managing privileges requires strict governance because excessive privileges significantly increase security risks.

### **D. Role Assignments:**

Role assignment is the process of linking a user, group, or identity to a defined role that specifies what actions they can perform within a system. It enforces access control by granting permissions based on responsibilities rather than individual accounts.
Role assignment connects a security principal (user, group, service, or application) with a role definition (set of permissions) at a specific scope (resource, project, or system boundary).
The purpose is to ensure that only authorized identities can perform specific actions, following the principle of least privilege.

### **Why Role Assignment Matters**

- **Access Control:** Prevents unauthorized actions by mapping permissions to responsibilities.
- **Audit & Compliance:** This provides evidence of who can do what, reducing risk of misconfiguration.
- **Scalability:** It is easier to manage permissions at the role level instead of per-user.
- **Security Principle:** This supports least privilege so that users only get the access they need.

### **Risks of Misconfigured Role Assignments**

- **Excessive Privileges:** Here, users gain more access than necessary (e.g., a developer with admin rights).
- **Unauthorized Access:** Attackers can exploit weak role assignments to escalate privileges.
- **Compliance Violations:** Failing audits can occur due to improper access mappings.

### **E. Privilege Escalation Risks:**

Privilege escalation occurs when a user gains higher access than intended. It is a cyberattack technique where a threat actor alters or elevates their permissions in a target system, such as by moving from a lower-privilege basic user account to a higher-level administrator account.

### **Types of Privilege Escalation Risks**

- Vertical escalation: gaining admin privileges
- Horizontal escalation: accessing peer-level accounts

### **Mitigation**

- Patch vulnerabilities
- Monitor user activity
- Enforce MFA
- Conduct regular audits

### **F. Account Audits:**

Account audit is the process of reviewing and analyzing user accounts in a system to ensure they are secure, properly configured, and compliant with organizational policies. It’s a core part of IAM (Identity and Access Management) because accounts are often the entry points attackers exploit. It involves reviewing all user accounts to ensure they are valid, necessary, and properly configured. This includes:

- Removing inactive accounts
- Reviewing permissions
- Detecting anomalies
- Ensuring compliance

### **What Account Audit Involves**

- **Inventory of Accounts:**
  - List all user, service, and admin accounts.
  - Identify orphaned accounts (no owner) or duplicates.
- **Activity Review:**
  - Check last login dates.
  - Flag inactive accounts (e.g., unused for 90+ days).
  - Detect suspicious activity (failed logins, unusual access).
- **Privilege Verification:**
  - Ensure accounts only have the permissions they need (least privilege).
  - Spot accounts with excessive or unnecessary admin rights.
- **Policy Compliance**
  - Verify password policies (length, complexity, expiration).
  - Confirm MFA/OTP enforcement for privileged accounts.
  - Check role assignments are correct.
- **Remediation**
  -  Disable or delete stale accounts.
  -  Adjust privileges to align with responsibilities.
  - Document findings and recommendations.

---

## **METHODOLOGY**

### **Environment Setup**
- FreeIPA installed on Fedora VM was setup in Oracle VirtualBox.

### **Password Policy Review**
- **Checked for enforcement:**
  - Minimum length, complexity (character classes), history, expiration.
  - Tested weak vs strong passwords.
- **Identified weaknesses:**
  - If history size = 0, users can reuse old passwords.
  - If character classes < 3, passwords may be too simple.
  - If max lifetime too long, stale passwords remain active.
  - Compared against standards (NIST SP 800-63, ISO 27001).
  
### **MFA Enforcement Audit**
- Identified accounts with and without MFA enabled.
- Tested enforcement by attempting logins with MFA enabled & disabled.
- Documented gaps, especially for privileged accounts.

### **Least Privilege & Role Assignments**
- Reviewed IAM roles and group memberships.
- Compared assigned privileges with actual job functions.
- Checked for excessive or misaligned privileges.

### **Account & Privilege Escalation Risks**
- Identified dormant, shared, or service accounts with broad rights.
- Simulated privilege escalation scenarios.
- Documented risks and potential attack paths.

## **Findings:**

- Password policy enforces minimum length and expiration, but history size = 0 allows reuse.

<img width="775" height="436" alt="image" src="https://github.com/user-attachments/assets/8304bb49-a465-4404-8c24-bce4179897d6" />


- Admins group correctly linked, but users group policy weaker (priority 3, shorter lifetime).

<img width="775" height="436" alt="image" src="https://github.com/user-attachments/assets/55d0722a-41d9-4c4d-876a-d51ae583cad0" />

<img width="775" height="436" alt="image" src="https://github.com/user-attachments/assets/a71b2d02-4c7f-4bca-9d8c-a58ac37befd3" />

<img width="775" height="407" alt="image" src="https://github.com/user-attachments/assets/0d6c1d8b-b9e9-48cd-8f17-16dfb1764b04" />

<img width="775" height="407" alt="image" src="https://github.com/user-attachments/assets/23072c28-9f6c-4696-b08a-e4e047080a00" />


- Logs confirmed enforcement of password resets and ticket issuance.

<img width="775" height="407" alt="image" src="https://github.com/user-attachments/assets/5e3f7cd4-739f-4e1a-abff-ee242fc6010b" />
<img width="775" height="407" alt="image" src="https://github.com/user-attachments/assets/f4479e05-2109-4b17-9b65-26f758feb742" />


- No accounts had MFA enabled.

<img width="823" height="463" alt="image" src="https://github.com/user-attachments/assets/bff8de28-4c89-4061-84ee-99ec2d69dd12" />


- No privilege escalation detected, but sudo rules need review.
<img width="775" height="436" alt="image" src="https://github.com/user-attachments/assets/8b1e785d-0ff7-4a0c-acf1-7a3e7a0b535d" />
<img width="775" height="436" alt="image" src="https://github.com/user-attachments/assets/9318b452-0a93-42fc-855f-8a3d55c31568" />
<img width="722" height="406" alt="image" src="https://github.com/user-attachments/assets/8c241dbd-3aed-49ac-ae5d-1d8ac628c156" />
<img width="775" height="436" alt="image" src="https://github.com/user-attachments/assets/33a0ca5a-c704-4027-95bd-5aa59972fa11" />
<img width="775" height="316" alt="image" src="https://github.com/user-attachments/assets/3f4ceff6-2786-4b13-97c9-e4a2e6b072fa" />


## **Standards Comparison**

### **NIST SP 800-63B**
The global policy meets the minimum length requirement but lacks complexity and password reuse controls. Both global and admin policies enforce periodic password expiration, which is not recommended by NIST unless a compromise is suspected.
### **ISO/IEC 27001**
The policies partially comply with ISO 27001 requirements. While account lockout mechanisms are in place, the lack of complexity enforcement and reuse prevention in the global policy presents compliance gaps.

## **Risk Matrix**
|         **Area**                         |           **Risk**                          |   **Impact**   |    **Recommendations**                                                 |
|------------------------------------------|---------------------------------------------|----------------|------------------------------------------------------------------------|
| Password Policy Review                   | Weak password length                        |   High         | Enforce strong password rules.                                         |
| MFA Enforcement                          | Token secret missing                        |   High         | Enforce MFA for all privileged accounts, patch missing token flaw      |
| Role Assignment & Least Privilege Access |Users were given excessive privileges        |   Medium       | Apply least privilege and review roles quarterly                       |
| Accounts Audit                           | Old accounts were left enabled              |   High         | Disable or delete unused accounts immediately, audit accounts reguarly |
| Privilege Escalation Risks               | Misconfigured roles will allow admin rights |   Medium       | Monitor role changes, audit privileges regularly                       |

---

## **Recommendations**
- Enforce stronger password policies.
- Increase password history size (?5).
- Require ?3-character classes for stronger complexity.
- Mandate MFA for all privileged accounts.
- Implement least privilege principles.
- Regularly audit and clean up IAM roles.
- Disable stale accounts immediately.
- Tighten sudo rules to least privilege

## **Lessons Learned**
1. **Passwords Alone Are Weak**
  - Even strong passwords can be stolen or guessed.
  - MFA adds a critical second layer of defense.
2. **MFA Enforcement Is Non Negotiable**
  - Admin and privileged accounts without MFA are high risk.
  - Enforcing MFA across all critical accounts drastically reduces compromise chances.
3. **Least Privilege Prevents Hidden Risks**
  - Giving users more rights than they need creates “privilege creep.”
  - Regular role reviews ensure users only have access necessary for their job.
4. **Dormant & Shared Accounts Are Dangerous**
  - Unused accounts become easy backdoors for attackers.
  - Shared accounts make accountability impossible.
  - Regular audits and clean ups are essential.
5. **Privilege Escalation Is a Real Threat**
  - Misconfigured IAM roles can let attackers climb from low level to admin access.
  - Testing escalation paths helps identify and patch these risks.
6. **Identity Is the New Perimeter**
  - Firewalls and antivirus aren’t enough as attackers now target accounts first.
  - Strong IAM practices are now the frontline of cybersecurity.

---

## **CONCLUSION**
This audit demonstrated that weak password policies, improperly configured OTP tokens, and misassigned roles can undermine IAM security. By enforcing stronger password rules, ensuring proper OTP setup, and applying least privilege in role assignments, organizations can significantly reduce risks. The evidence collected supports these findings and provides a clear path for remediation.
Implementing these recommendations will strengthen authentication controls and reduce risks of misconfigured privileges.


## **REFERENCES**
- 🔗 FreeIPA Documentation: [https://www.freeipa.org/page/Main_Page](https://www.freeipa.org/page/Main_Page)
- 🔗 MFA Best Practices (NIST): [https://pages.nist.gov/800-63-3/sp800-63b.html](https://pages.nist.gov/800-63-3/sp800-63b.html)
- 🔗 Evidences: [https://github.com/deejonsen/SCA-CYBERSECURITY_GROUP-4_CAPSTONE-PROJECT/tree/main/Screenshots](https://github.com/deejonsen/SCA-CYBERSECURITY_GROUP-4_CAPSTONE-PROJECT/tree/main/Screenshots)
- 🔗 Capstone Project Hands-on Lab Work: [https://drive.google.com/drive/folders/125zVhusEockm8KyDLaec9qsJ29lFAnR4?usp=drive_link](https://drive.google.com/drive/folders/125zVhusEockm8KyDLaec9qsJ29lFAnR4?usp=sharing)

