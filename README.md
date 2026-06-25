# Nginx Log Analyzer

A simple Linux Shell scripting project that analyzes Nginx access logs and generates useful statistics from the command line.

## Project Overview

This project demonstrates how to use Linux shell scripting and standard Unix command-line utilities to analyze an Nginx access log file. The script extracts important information from the log and displays the most frequently occurring entries.

This project is designed as a beginner-friendly DevOps/Linux automation project and helps build practical experience with shell scripting.

## Features

* Analyze Nginx access logs
* Display Top 5 IP addresses with the most requests
* Display Top 5 requested URLs/paths
* Display Top 5 HTTP response status codes
* Display Top 5 User Agents
* Validate log file existence before execution
* Produce clean, formatted terminal output

## Project Structure

```
nginx-log-analyzer/
│── access.log
│── log-analyzer.sh
└── README.md
```

## Technologies Used

* Linux
* Bash Shell Scripting
* AWK
* Sort
* Uniq
* Head
* Git
* GitHub

## Commands Used

| Command | Purpose                                  |
| ------- | ---------------------------------------- |
| awk     | Extract specific fields from log entries |
| sort    | Sort output                              |
| uniq -c | Count duplicate values                   |
| head    | Display top 5 results                    |
| echo    | Print formatted output                   |
| chmod   | Make the script executable               |

## Prerequisites

* Linux Operating System
* Bash Shell
* Nginx Access Log File

## How to Run

Clone the repository

```bash
git clone https://github.com/<your-username>/nginx-log-analyzer.git
```

Navigate into the project

```bash
cd nginx-log-analyzer
```

Make the script executable

```bash
chmod +x log-analyzer.sh
```

Run the script

```bash
./log-analyzer.sh access.log
```

## Sample Output

```
Top 5 IP addresses with the most requests
178.128.94.113 - 1087 requests
142.93.136.176 - 1087 requests
138.68.248.85 - 1087 requests
159.89.185.30 - 1086 requests
86.134.118.70 - 277 requests

Top 5 Most Requested Paths
/v1-health - 4560 requests
/ - 270 requests
/v1-me - 232 requests
/v1-list-workspaces - 127 requests
/v1-list-timezone-teams - 75 requests

Top 5 Response Status Codes
200 - 5740 requests
404 - 937 requests
304 - 621 requests
400 - 192 requests

Top 5 User Agents
DigitalOcean Uptime Probe - 4347 requests
Mozilla/5.0 - 513 requests
```

## Skills Demonstrated

* Linux Command Line
* Bash Shell Scripting
* Log Analysis
* Text Processing
* Automation
* Unix Utilities
* Git Version Control
* GitHub Repository Management

## Learning Outcomes

Through this project, I learned how to:

* Parse structured log files using AWK
* Count and sort log data efficiently
* Build automation scripts using Bash
* Work with Linux command-line tools
* Create reusable shell scripts
* Manage source code with Git and GitHub

## Future Improvements

* Accept custom number of results (Top N)
* Filter logs by HTTP method
* Filter logs by date
* Export analysis to CSV
* Generate HTML reports
* Add colored terminal output
* Support Apache access logs
* Interactive command-line menu

## Author

**Om Yenganti**


