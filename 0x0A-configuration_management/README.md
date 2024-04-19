# 0x0A. Configuration management
### `DevOps` `SysAdmin` `Scripting` `CI/CD`

-   Weight: 1

# Background Context

When I was working for SlideShare, I worked on an auto-remediation tool called [Skynet](https://engineering.linkedin.com/slideshare/skynet-project-_-monitor-scale-and-auto-heal-system-cloud) that monitored, scaled and fixed Cloud infrastructure. I was using a parallel job-execution system called MCollective that allowed me to execute commands to one or multiple servers at the same time. I could apply an action to a selected set of servers by applying a filter such as the server’s hostname or any other metadata we had (server type, server environment…). At some point, a bug was present in my code that sent `nil` to the filter method.

There were 2 pieces of bad news:

    1. When MCollective receives `nil` as an argument for its filter method, it takes this to mean ‘all servers’
    2. The action I sent was to terminate the selected servers

I started the parallel job-execution and after some time, I realized that it was taking longer than expected. Looking at logs I realized that I was shutting down SlideShare’s entire document conversion environment. Actually, 75% of all our conversion infrastructure servers had been shut down, resulting in users not able to convert their PDFs, powerpoints, and videos… Pretty bad!

Thanks to Puppet, we were able to restore our infrastructure to normal operation in under 1H, pretty impressive. Imagine if we had to do everything manually: launching the servers, configuring and linking them, importing application code, starting every process, and obviously, fixing all the bugs (you should know by now that complicated infrastructure always goes sideways)…

Obviously writing Puppet code for your infrastructure requires an investment of time and energy, but in the long term, it is for sure a must-have.
![](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/292/4i8il3B.gif)

## Note on Versioning
Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.

## Install puppet
```bash
$ sudo apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ sudo apt-get install -y ruby-augeas
$ sudo apt-get install -y ruby-shadow
$ sudo apt-get install -y puppet
```

You do not need to attempt to upgrade versions. This project is simply a set of tasks to familiarize you with the basic level syntax which is virtually identical in newer versions of Puppet.

[Puppet 5 Docs](https://www.puppet.com/docs/puppet/5.5/puppet_index.html)

Install puppet-lint
```bash
$ gem install puppet-lint
```

# Tasks

## 0\. Create a file
Using Puppet to create a file in /tmp.

Requirements:

- File path is /tmp/school
- File permission is 0744
- File owner is www-data
- File group is www-data
- File contains I love Puppet

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x0A-configuration_management`
-   File: `0-create_a_file.pp`   
#### <p align="right">`mandatory`</p>

## 1\. Install a package
Using Puppet to install `flask` from `pip3`.

Requirements:

- Install flask
- Version must be 2.1.0

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x0A-configuration_management`
-   File: `1-install_a_package.pp`   
#### <p align="right">`mandatory`</p>

## 2\. Execute a command
Using Puppet to create a manifest that kills a process named `killmenow`.

Requirements:

- Must use the exec Puppet resource
- Must use pkill

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x0A-configuration_management`
-   File: `2-execute_a_command.pp`   
#### <p align="right">`mandatory`</p>
