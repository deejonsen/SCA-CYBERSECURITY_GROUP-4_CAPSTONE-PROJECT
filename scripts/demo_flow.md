# 🛠 Demo Flow: IAM Audit Commands

## 1️⃣ Password Policy Review
```bash                        Copy
ipa pwpolicy-show
ipa pwpolicy-add --minlength=12 --minclasses=3 --maxfail=5 --lockouttime=600
```
---

## 2️⃣ MFA / OTP Enforcement
```bash                        Copy
ipa otptoken-add admin
kinit admin
```
---

3️⃣ User Management
```bash                        Copy
ipa user-add dorcas --first=DORCAS --last=JOHNSON --password
ipa user-find
```
---

4️⃣ Role Assignments
```bash                         Copy
ipa role-show Developer
ipa role-show Admin
ipa role-add-privilege Developer --privilege="User Administrators"
```
---

5️⃣ Account Audit
```bash                          Copy
ipa user-find --inactive
```
---

6️⃣ Privilege Escalation Test
```bash                           Copy
ipa role-add-privilege Developer --privilege="User Administrators"
```
---
