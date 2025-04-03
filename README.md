# CyberFortress: Attack Simulation and Defense

## Project Summary
CyberFortress is a cybersecurity simulation demonstrating an attack and defense scenario on an Azure-hosted Windows Server VM. It leverages PowerShell to simulate a brute-force attack and implement defensive measures, including account hardening and firewall activation. The project runs on Azure Virtual Machines in a Windows Server 2022 environment, showcasing cloud management and security automation skills.

## Demonstration
This section walks through the CyberFortress simulation, showcasing an attack and defense scenario:

1. **Deploy the VM**:  
   - Created "SecSimVM" in Azure under "CyberSimRG" (Windows Server 2022, B1s size).  
   - Managed via the Azure Portal:  
     ![Azure Portal](images/AzurePortal.png)

2. **Simulate the Attack**:  
   - Execute `SimulatedAttack.ps1` in PowerShell (Admin mode) to mimic a brute-force attempt.  
   - Visual alert:  
     ![Attack Simulation](images/AttackScript.png)  
   - Video of the attack in action:  
     <video src="https://raw.githubusercontent.com/marcdanielj/CyberFortress/main/images/DemoAttack.mp4" controls width="600"></video>

3. **Defend the System**:  
   - Run `FortressDefense.ps1` to harden the VM by disabling the Guest account and enabling the firewall.  
   - Success confirmation:  
     ![Defense Success](images/DefenseScript.png)  
   - Video of the defense response:  
     <video src="https://raw.githubusercontent.com/marcdanielj/CyberFortress/main/images/DemoDefense.mp4" controls width="600"></video>

4. **Verify Security Logs**:  
   - Check `C:\SecurityLogs` for attack and defense records:  
     ![Security Logs](images/Logs.png)

This project demonstrates proactive security automation in a cloud environment, blending Azure management with PowerShell scripting.
