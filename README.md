# Kurtis-Repo
Metron STIG Automation Supporting: U_CAN_Ubuntu_18-04_LTS_V1R2_STIG

Make sure you extracted the zip file into your home directory: ~/metron-stig/README.md should be this path.

Run: ansible-playbook ansible-playbooks/U_CAN_Ubuntu_18-04_LTS_V1R2_STIG_MET-1.0.yml -K

Version 1.1 - Testing Git configs.
Version 1.0
Using ansible playbooks to automate the configuration of required software and configurations on an Ubuntu 18.04 system.
TODO:

refactor messy code
Correct entry for V-100827
NOTES:

V-100593 The Ubuntu operating system must allow the use of a temporary password for system logons with an immediate change to a permanent password. All user accounts are created with a temporary password and users are made to change them on first login.

V-100565 The Ubuntu operating system must be configured so that only users who need access to security functions are part of the sudo group. This must be checked manually by an admin.

POAM Items:

V-100527 The Ubuntu operating system must implement NIST FIPS-validated cryptography to protect classified information and for the following: to provision digital signatures, to generate cryptographic hashes, and to protect unclassified information requiring confidentiality and cryptographic protection in accordance with applicable federal laws, Executive Orders, directives, policies, regulations, and standards.
A subscription to the "Ubuntu Advantage" plan is required in order to obtain the FIPS Kernel cryptographic modules and enable FIPS.

V-100565 The Ubuntu operating system must be configured so that only users who need access to security functions are part of the sudo group.
This must be checked manually by an admin.

V-100855 The Ubuntu operating system must map the authenticated identity to the user or group account for PKI-based authentication.
We do not use pki/smart cards for authentication.

V-100525 Ubuntu operating systems handling data requiring data at rest protections must employ cryptographic mechanisms to prevent unauthorized disclosure and modification of the information at rest.
We currently do not have a good full disc encryption method that does not prove problematic

V-100545 The Ubuntu operating system must deploy Endpoint Security for Linux Threat Prevention (ENSLTP).
This specific product seems to require mcafee specifically

V-100805 The Ubuntu operating system must generate audit records when loading dynamic kernel modules.
Solution is malformed and conflicts with a later solution, V-100815.

V-100807 The Ubuntu operating system must generate audit records when unloading dynamic kernel modules.
Solution is malformed and conflicts with a later solution, V-100817.

V-100829 The Ubuntu operating system must initiate a session lock after a 15-minute period of inactivity for all connection types.
Our users need to be able to leave themselves logged in to run tasks. This setting often logs them out in the middle of a run they are watching

V-100833 The Ubuntu operating system must automatically terminate a user session after inactivity time-outs have expired.
Our users need to be able to leave themselves logged in to run tasks. This setting often logs them out in the middle of a run they are watching

V-100843 The Ubuntu operating system must immediately terminate all network connections associated with SSH traffic after a period of inactivity.
We set ClientAliveMaxCount 6 for production reasons.

V-100853 The Ubuntu operating system, for PKI-based authentication, must validate certificates by constructing a certification path (which includes status information) to an accepted trust anchor.
We do not use pki authentication in our secure environment.

V-100857 The Ubuntu operating system must implement smart card logins for multifactor authentication for access to accounts.
We do not use pki/smartcard authentication in our secure environment.

V-100859 The Ubuntu operating system must implement multifactor authentication for remote access to privileged accounts in such a way that one of the factors is provided by a device separate from the system gaining access.
We do not use pki/smartcard authentication in our secure environment.

V-100861 The Ubuntu operating system must accept Personal Identity Verification (PIV) credentials.

We do not use pki/smartcard authentication in our secure environment.

V-100863 The Ubuntu operating system must implement certificate status checking for multifactor authentication.

We do not use pki/smartcard authentication in our secure environment.

V-100865 The Ubuntu operating system must only allow the use of DoD PKI-established certificate authorities for verification of the establishment of protected sessions.

We do not use pki/smartcard authentication in our secure environment.

V-100873 The Ubuntu operating system must uniquely identify interactive users.

Must check manually.

V-100881 The Ubuntu operating system must provision temporary user accounts with an expiration time of 72 hours or less.

We do not use temporary accounts.

V-100885 The Ubuntu operating system must, for networked systems, compare internal information system clocks at least every 24 hours with a server which is synchronized to one of the redundant United States Naval Observatory (USNO) time servers, or a time server designated for the appropriate DoD network (NIPRNet/SIPRNet), and/or the Global Positioning System (GPS).

We sync to local time servers. No gps.

V-100891 The Ubuntu operating system must be configured to prohibit or restrict the use of functions, ports, protocols, and/or services, as defined in the PPSM CAL and vulnerability assessments.

The restrictive use of a firewall prevents our users from testing effectivly.

V-100897 The Ubuntu operating system must enable and run the uncomplicated firewall(ufw).

The restrictive use of a firewall prevents our users from testing effectivly.

V-100901 The Ubuntu operating system must configure the uncomplicated firewall to rate-limit impacted network interfaces.

The restrictive use of a firewall prevents our users from testing effectivly.

V-100911 The Ubuntu operating system must have an application firewall enabled.

The restrictive use of a firewall prevents our users from testing effectivly.

V-100913 The Ubuntu operating system must disable all wireless network adapters.

Must be checked manually.

V-100919 The Ubuntu operating system must disable automatic mounting of Universal Serial Bus (USB) mass storage driver.

Users get lots of disks from clients and need them mountable to process data.

V-100531 The Ubuntu operating system audit event multiplexor must be configured to off-load audit logs onto a different system in real time, if the system is interconnected.

We do not currently have a remote log server setup. It is on our short-term goal list to correct.

V-100533 The Ubuntu operating system must have a crontab script running weekly to off-load audit events of standalone systems.

We do not currently have a remote log server setup. It is on out short-term goal list to correct.

V-100551 The Ubuntu operating system audit event multiplexor must be configured to off-load audit logs onto a different system or storage media from the system being audited.

We do not currently have a remote log server setup. It is on out short-term goal list to correct.

V-100553 The Ubuntu operating system must be configured such that Pluggable Authentication Module (PAM) prohibits the use of cached authentications after one day.

We do not use smart card authentication.

V-100569 The Ubuntu operating system must automatically lock an account until the locked account is released by an administrator when three unsuccessful logon attempts.

Same solution listed in V-100559

V-100701 The Ubuntu operating system must allocate audit record storage capacity to store at least one weeks worth of audit records, when audit records are not immediately sent to a central audit record storage facility.

Check that /var/log/audit is its own partition and of sufficient size.

V-100877 The Ubuntu operating system must automatically remove or disable emergency accounts after 72 hours.

We remove "emergency" accounts when the emergency is over.

V-100889 The Ubuntu operating system must record time stamps for audit records that can be mapped to Coordinated Universal Time (UTC) or Greenwich Mean Time (GMT).

We are using EDT for consistency on our secure space.
