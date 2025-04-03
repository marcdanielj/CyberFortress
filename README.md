# CyberFortress: Attack Simulation and Defense

## Project Summary
CyberFortress is a cybersecurity simulation demonstrating an attack and defense scenario on an Azure-hosted Windows Server VM. It leverages PowerShell to simulate a brute-force attack and implement defensive measures, including account hardening and firewall activation. The project runs on Azure Virtual Machines in a Windows Server 2022 environment, showcasing cloud management and security automation skills.

## Demonstration
This section walks through the CyberFortress simulation, showcasing an attack and defense scenario:

1. **Deploy the VM**:  
   - Created "SecSimVM" in Azure under "CyberSimRG" (Windows Server 2022, D2s size).  
   - Managed via the Azure Portal:  
     ![Azure Portal](images/AzurePortal.png)

2. **Simulate the Attack**:  
   - Execute `SimulatedAttack.ps1` in PowerShell (Admin mode) to mimic a brute-force attempt.  
   - Visual alert:  
     ![Attack Simulation](images/AttackScript.png)  
   - Attack sequence:  
     - Initial alert triggers:  
       ![Attack Sequence 1](images/AttackSeq1.png)  
     - Brute-force attempts escalate:  
       ![Attack Sequence 2](images/AttackSeq2.png)  
     - System under threat warning:  
       ![Attack Sequence 3](images/AttackSeq3.png)  
   - Video of the attack in action:  
     [Watch Attack Demo](images/DemoAttack.mp4)

3. **Defend the System**:  
   - Run `FortressDefense.ps1` to harden the VM by disabling the Guest account and enabling the firewall.  
   - Success confirmation:  
     ![Defense Success](images/DefenseScript.png)  
   - Defense sequence:  
     - Defense protocol initiates:  
       ![Defense Sequence 1](images/DefenseSeq1.png)  
     - Disabling vulnerable accounts:  
       ![Defense Sequence 2](images/DefenseSeq2.png)  
     - Firewall activation:  
       ![Defense Sequence 3](images/DefenseSeq3.png)  
     - Security restored:  
       ![Defense Sequence 4](images/DefenseSeq4.png)  
   - Video of the defense response:  
     [Watch Defense Demo](images/DemoDefense.mp4)

4. **Verify Security Logs**:  
   - Check `C:\SecurityLogs` for attack and defense records:  
     ![Security Logs](images/Logs.png)

This project demonstrates proactive security automation in a cloud environment, blending Azure management with PowerShell scripting.

*Built this project to demonstrate rapid problem-solving and technical expertise along side my CourseCareers Final Project.*
