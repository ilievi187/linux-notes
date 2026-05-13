# Linux Scripts 🐧⚙️

A lightweight system administration toolkit for Linux diagnostics, monitoring, and troubleshooting.

---

## 📌 Purpose

This repository provides quick, single-command tools for checking system health, network status, and performance.

Designed for:
- Linux users
- sysadmin practice
- troubleshooting workflows
- homelab environments

---

## 🧰 Features

- System health overview
- Network diagnostics
- Disk usage monitoring
- Process inspection
- Full system report logging

---

## 📄 Main Tool

### `sys_diagnostics.sh`

Generates a full system report and saves it to a log file.

```bash
chmod +x sys_diagnostics.sh
./sys_diagnostics.sh
```

### Output example:
```
system_report_2026-05-13_11-30-22.log
```

---

## 📊 What it checks

- System uptime
- CPU load
- Memory usage
- Disk usage
- Top processes
- Network interfaces
- Routing table
- Open ports
- Connectivity test

---

## 📁 Project structure

```
linux-scripts/
├── sys_diagnostics.sh
├── logs/ (optional)
└── README.md
```

---

## 🚀 Future improvements

- Alert system (CPU / RAM / disk thresholds)
- Colored output (OK / WARN / CRITICAL)
- Cron automation
- Export to HTML report
- Email / Telegram notifications

---

## 🧠 Goal

To build real-world Linux troubleshooting and monitoring habits using simple Bash automation.

---

⭐ Always improving system visibility and control.