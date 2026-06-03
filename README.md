# 🛡️ SOC-project

**End-to-End Incident Detection & Forensics Lab**

A comprehensive Security Operations Center (SOC) and Digital Forensics laboratory environment designed to simulate real-world cyber incidents. This project combines network intrusion detection, traffic analysis, incident investigation, forensic imaging, and file recovery using industry-standard cybersecurity tools.

---

## 📋 Project Overview

This lab demonstrates the complete lifecycle of cyber incident detection and investigation:

1. Detect malicious activity using Suricata
2. Analyze network traffic and protocol behavior
3. Generate structured logs for investigation
4. Perform forensic imaging of digital evidence
5. Recover and analyze files from forensic images
6. Validate evidence integrity using cryptographic hashes
7. Conduct post-incident investigations

The project provides hands-on experience with both SOC operations and Digital Forensics workflows.

---

## 🎯 Objectives

- Deploy and configure a Network Intrusion Detection System (NIDS)
- Create custom detection signatures
- Monitor and analyze network traffic
- Investigate security alerts
- Perform forensic acquisition of evidence
- Recover deleted and hidden files
- Verify evidence integrity using hashes
- Conduct incident response and forensic investigations

---

## 🖥️ Lab Environment

### Network Monitoring Environment

- Kali Linux (Attacker VM)
- Ubuntu Linux (Victim VM)
- Host-Only Network
- NAT Network for Internet Access

The environment was isolated to safely generate and analyze malicious traffic without impacting external networks.

---

## 🔍 Network Security Monitoring

### Suricata IDS/IPS

Suricata was deployed as the primary network security monitoring platform.

Capabilities explored:

- Intrusion Detection (IDS)
- Intrusion Prevention (IPS)
- Deep Packet Inspection (DPI)
- Protocol Analysis
- Flow Tracking
- TLS Fingerprinting (JA3)
- File Extraction
- Structured JSON Logging

---

### Custom Detection Rules

Created custom signatures to detect:

- HTTP Traffic
- Login Page Access Attempts
- SQL Injection Indicators

---

### PCRE / Regex Detection

Developed advanced detection rules using Perl Compatible Regular Expressions (PCRE):

- Credential Stuffing Attempts
- Administrative Account Targeting
- SQLMap Detection
- Nikto Detection

---

### Threshold-Based Detection

Implemented rate-based alerting to reduce noise and detect suspicious behavior such as:

- Brute Force Login Attempts
- Repeated Requests from a Single Source

---

## 🌐 Traffic & Protocol Analysis

### Application Layer Protocol Detection

Identified protocols independently of port numbers:

- HTTP
- DNS
- TLS

---

### Deep Packet Inspection

Extracted application-layer information including:

- HTTP Methods
- URLs
- Host Headers
- User-Agent Strings

---

### Flow Analysis

Captured session-level metadata:

- Source/Destination IP Addresses
- Protocol Information
- Session Duration
- Data Transfer Statistics

---

## 📊 Logging & Investigation

### EVE JSON Logging

Generated structured logs containing:

- Alert Events
- DNS Events
- HTTP Events
- TLS Events
- Flow Records

---

### Offline PCAP Analysis

Performed retrospective analysis using stored packet captures to support incident investigations and forensic reviews.

---

## 🚨 Advanced Features

### TLS Fingerprinting (JA3)

Collected JA3 fingerprints from encrypted HTTPS traffic to identify applications and potential malicious communications.

---

### File Extraction

Recovered files transferred across the network for further forensic analysis.

---

### IPS Mode

Configured Suricata in inline mode using Linux NFQ to actively block malicious traffic rather than simply logging it.

---

## 💾 Digital Forensics

### Evidence Acquisition

The forensic investigation focused on a VMware Virtual Machine Disk (VMDK) containing a Lubuntu operating system.

---

### FTK Imager

Used for:

- Forensic Imaging
- Hash Verification
- Evidence Preservation

Generated:

- MD5 Hash
- SHA1 Hash

---

### QEMU-IMG

Used to:

- Convert VMDK to RAW format
- Prepare evidence for analysis
- Validate integrity through hashing

Generated:

- MD5 Hash
- SHA256 Hash

Matching hash values confirmed forensic integrity.

---

## 🧪 Forensic Analysis

### Autopsy

Performed comprehensive forensic examination including:

- User Accounts
- Installed Applications
- Browser Artifacts
- Email Analysis
- Encrypted Documents
- Metadata Examination

#### Key Findings

- Astronomy-related academic documents
- Multiple user accounts
- Installed Python and SQL software
- Password-protected files
- Timestamp anomalies
- Multilingual content

---

### Password Recovery

Used:

- John the Ripper
- RockYou Wordlist

Successfully recovered passwords from protected documents for further analysis.

---

### Foremost File Carving

Recovered over 25,000 files including:

- Images
- PDFs
- Office Documents
- Executables
- Archives
- Web Content

---

## 🛠️ Tools Used

### Network Security

- Suricata
- Wireshark
- Curl
- Wget

### Digital Forensics

- FTK Imager
- Autopsy
- Foremost
- QEMU-IMG
- John the Ripper

### Operating Systems

- Kali Linux
- Ubuntu Linux

---

## 🧠 Skills Demonstrated

### Blue Team

- Intrusion Detection
- Intrusion Prevention
- Threat Monitoring
- Alert Analysis
- Threat Hunting
- Log Analysis
- Incident Response

### Digital Forensics

- Evidence Acquisition
- Chain of Custody
- Hash Verification
- File Carving
- Timeline Analysis
- Artifact Recovery

### Technical Skills

- Linux Administration
- Network Analysis
- JSON Log Analysis
- PCAP Analysis
- Security Monitoring
- Forensic Investigation

---

## 📚 Learning Outcomes

This project provided practical experience in:

- Security Operations Center (SOC) workflows
- Detection Engineering
- Digital Forensics
- Incident Response
- Network Security Monitoring
- Threat Detection and Investigation
- Evidence Handling and Validation

---

## ⚠️ Disclaimer

This project was conducted within a controlled laboratory environment for educational and research purposes. All attack simulations were performed on isolated virtual machines and authorized test networks.
