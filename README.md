# Dynatrace-Glassfish-Agent-Ansible

This Ansible role installs and configures the Dynatrace Agent of the [Dynatrace Application Monitoring](http://www.dynatrace.com/en/products/application-monitoring.html) solution for the Apache Glassfish application server.

**Note:** you will have to restart the application server after placing the agent.

## Download

The role is available via:

- [Ansible Galaxy](https://galaxy.ansible.com/list#/roles/4942)
- [GitHub](https://github.com/Dynatrace/Dynatrace-Glassfish-Agent-Ansible)

## Dependencies

This roles depends on the following roles:

- [Dynatrace-Agents](https://galaxy.ansible.com/list#/roles/2620)

## Description

This recipe downloads and installs the most recent version of the Dynatrace Agents package from [http://downloads.dynatracesaas.com](http://downloads.dynatracesaas.com) and integrates the agent with the Apache Glassfish application server. The default download link can be overridden via the `dynatrace_agents_linux_installer_file_url` attribute. Alternatively, you can place the installer artifact as `dynatrace-agent.jar` in the role's `files` directory from where it will be picked up during the installation. Please refer to `defaults/main.yml` for a list of supported attributes.

## Role Variables

As defined in ```defaults/main.yml```:

| Name                                                  | Default                                  | Description |
|-------------------------------------------------------|------------------------------------------|-------------|
| *dynatrace_glassfish_agent_glassfish_domain_xml_file* | **required**                             | The name of the `domain.xml` file to be modified. |
| *dynatrace_glassfish_agent_name*                      | glassfish-agent                          | The name of the Glassfish Agent as it appears in Dynatrace. |
| *dynatrace_glassfish_agent_collector_hostname*        | localhost                                | The location of the collector the Agent shall connect to. |
| *dynatrace_glassfish_agent_collector_port*            | 9998                                     | The port on the collector the Agent shall connect to. |
| *dynatrace_glassfish_agent_linux_agent_path*          | /opt/dynatrace/agent/lib64/libdtagent.so | The path to the Agent libary. |
| *dynatrace_glassfish_agent_state*                     | present                                  | Whether the Agent shall be ```present``` or ```absent```. |

## Example Playbook

```
- hosts: all
  roles:
    - role: dynatrace.Dynatrace-Glassfish-Agent
      dynatrace_glassfish_agent_glassfish_domain_xml_file: /usr/local/glassfish4/glassfish/domains/domain1/config/domain.xml
```

## Testing

We use [Test Kitchen](http://kitchen.ci) to automatically test our automated deployments with [Serverspec](http://serverspec.org) and [RSpec](http://rspec.info/):

1) Install Test Kitchen and its dependencies from within the project's directory:

```
gem install bundler
bundle install
```

2) Run all tests

```
kitchen test
```

By default, we run our tests inside [Docker](https://www.docker.com/) containers as this considerably speeds up testing time (see `.kitchen.yml`).

## Additional Resources

### Blogs

- [How to Automate Enterprise Application Monitoring with Ansible](http://apmblog.dynatrace.com/2015/03/04/how-to-automate-enterprise-application-monitoring-with-ansible/)
- [How to Automate Enterprise Application Monitoring with Ansible - Part II](http://apmblog.dynatrace.com/2015/04/23/how-to-automate-enterprise-application-monitoring-with-ansible-part-ii/)

### Presentations

- [Automated Deployments (of Dynatrace) with Ansible](http://www.slideshare.net/MartinEtmajer/automated-deployments-with-ansible)
- [Test-Driven Infrastructure with Ansible, Test Kitchen, Serverspec and RSpec](http://www.slideshare.net/MartinEtmajer/testing-ansible-roles-with-test-kitchen-serverspec-and-rspec-48185017)

### Tutorials

- [Automated Deployments (of Dynatrace) with Ansible](https://community.compuwareapm.com/community/display/LEARN/Tutorials+on+Automated+Deployments#TutorialsonAutomatedDeployments-ansible)

## Questions?

Feel free to post your questions on the Dynatrace Community's [Continuous Delivery Forum](https://answers.dynatrace.com/spaces/148/open-q-a_2.html?topics=continuous%20delivery).

## License

Licensed under the MIT License. See the LICENSE file for details.
[![analytics](https://www.google-analytics.com/collect?v=1&t=pageview&_s=1&dl=https%3A%2F%2Fgithub.com%2FdynaTrace&dp=%2FDynatrace-Glassfish-Agent-Ansible&dt=Dynatrace-Glassfish-Agent-Ansible&_u=Dynatrace~&cid=github.com%2FdynaTrace&tid=UA-54510554-5&aip=1)]()
