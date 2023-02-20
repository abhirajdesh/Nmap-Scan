#!/bin/bash

# Prompt user for target IP address
echo "Enter target IP address:"
read ip_address

# Run Nmap scan to identify open ports and services
echo "Running Nmap scan on target IP $ip_address to identify open ports and services..."
nmap -sS -p- $ip_address -oA nmap_scan

# Run Nmap NSE scripts to detect vulnerabilities
echo "Running Nmap NSE scripts to detect vulnerabilities..."
nmap -sS -p- $ip_address --script vuln -oA nmap_vuln

# Display results in terminal
echo "Vulnerability scan complete. Results:"
cat nmap_vuln.nmap
