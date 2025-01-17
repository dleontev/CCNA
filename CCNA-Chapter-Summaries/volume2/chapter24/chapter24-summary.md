# Chapter 24: Understanding Ansible and Terraform

## Device Configuration Challenges and Solutions

### Configuration Drift

*   Configuration drift occurs when the configuration of a device diverges from the intended or standard configuration for devices with a similar role. 
*   Configuration drift can occur due to manual changes made to devices, errors in configuration automation, or changes in network requirements. 
*   Configuration management tools can help to detect and correct configuration drift by comparing the actual configuration of devices to the intended configuration. 

### Centralized Configuration Files and Version Control

*   Centralized configuration files store the configuration of devices in a central repository, providing a single source of truth for the intended configuration. 
*   Version control systems track changes to configuration files, providing a history of who made changes, what changes were made, and when. 
*   Version control systems also allow for easy rollback to previous versions of configuration files if necessary. 

### Configuration Monitoring and Enforcement

*   Configuration monitoring tools periodically compare the actual configuration of devices to the intended configuration stored in centralized files. 
*   If a discrepancy is found, the tool can either automatically correct the configuration or notify the network administrator. 
*   Configuration enforcement ensures that devices adhere to the intended configuration and helps to prevent configuration drift. 

### Configuration Provisioning

*   Configuration provisioning is the process of deploying new configurations to devices. 
*   Configuration management tools can automate this process, ensuring that devices are configured consistently and correctly. 
*   Configuration provisioning can also include validation checks to ensure that the new configuration is valid and will not cause problems. 

### Configuration Templates and Variables

*   Configuration templates define a standard configuration for devices with similar roles, with variables used to customize the template for each device. 
*   Templates promote consistency and reduce errors in device configuration. 
*   Variables allow for flexibility in customizing the template for each device's specific needs. 

### Files That Control Configuration Automation

*   Configuration automation is often controlled by files that define the desired state of the network and the steps to achieve that state. 
*   These files may include scripts, playbooks, or other configuration files. 
*   Configuration management tools can interpret these files and automate the configuration of network devices. 

## Ansible and Terraform Basics

### Ansible

*   Ansible is an open-source configuration management tool that uses an agentless architecture, meaning it does not require any software to be installed on the devices being managed. 
*   Ansible uses SSH or NETCONF to connect to devices and execute commands. 
*   Ansible uses playbooks, written in YAML, to define the desired state of the network and the steps to achieve that state. 

### Terraform

*   Terraform is an open-source infrastructure-as-code tool that allows for the provisioning and management of infrastructure resources through declarative configuration files. 
*   Terraform uses providers to interact with different infrastructure platforms, such as AWS, Azure, and GCP. 
*   Terraform uses a declarative model, where the user defines the desired state of the infrastructure, and Terraform determines the steps to achieve that state. 

### Summary of Configuration Management Tools

*   Configuration management tools provide a centralized and automated way to manage the configuration of network devices. 
*   They help to ensure consistency, reduce errors, and improve the overall efficiency of network operations. 
*   Ansible and Terraform are two popular open-source tools with different strengths and use cases.