# Dynatrace-Glassfish-Agent-Ansible

An [Ansible](http://www.ansible.com) role for automated deployments of the [Dynatrace](http://www.bit.ly/dttrial) Java Agent for [Glassfish](https://glassfish.java.net).

This role makes the Dynatrace Agent available to Glassfish by injecting an *-agentpath* option into a particular Glassfish `domain.xml`. **You will have to restart your application after placing the agent.**

## Download

The role is available via:

- [Ansible Galaxy](https://galaxy.ansible.com/list#/roles/4942)
- [GitHub](https://github.com/Dynatrace/Dynatrace-Glassfish-Agent-Ansible)

## Dependencies

This roles depends on the following roles:

- [Dynatrace-Agents](https://galaxy.ansible.com/list#/roles/2620)

## Role Variables

As defined in ```defaults/main.yml```:

| Name                                                  | Default                                  | Description |
|-------------------------------------------------------|------------------------------------------|-------------|
| *dynatrace_glassfish_agent_glassfish_domain_xml_file* | **required**                             | The name of the `domain.yml`file to be modified. |
| *dynatrace_glassfish_agent_name*                      | glassfish-agent                          | The name of the Glassfish Agent as it appears in Dynatrace. |
| *dynatrace_glassfish_agent_collector_hostname*        | localhost                                | The location of the collector the Agent shall connect to. |
| *dynatrace_glassfish_agent_collector_port*            | 9998                                     | The port on the collector the Agent shall connect to. |
| *dynatrace_glassfish_agent_linux_agent_path*          | /opt/dynatrace/agent/lib64/libdtagent.so | The path to the Agent libary. |
| *dynatrace_glassfish_agent_state*                     | present                                  | Whether the Agent shall be ```present``` or ```absent```. |

## Example Playbook

	- hosts: all
	  roles:
	    - role: dynatrace.Dynatrace-Glassfish-Agent
	      dynatrace_glassfish_agent_glassfish_domain_xml_file: /usr/local/glassfish4/glassfish/domains/domain1/config/domain.xml

## Testing

We use [Test Kitchen](http://kitchen.ci) to automatically test our automated deployments with [Serverspec](http://serverspec.org):

1) Install Kitchen and its dependencies from within the project's directory:

```
gem install bundler
bundle install
```

2) Run tests

```
kitchen test
```

## Additional Resources

- [Blog: How to Automate Enterprise Application Monitoring with Ansible](http://apmblog.dynatrace.com/2015/03/04/how-to-automate-enterprise-application-monitoring-with-ansible/)
- [Blog: How to Automate Enterprise Application Monitoring with Ansible - Part II](http://apmblog.dynatrace.com/2015/04/23/how-to-automate-enterprise-application-monitoring-with-ansible-part-ii/)
- [Slide Deck: Automated Deployments](http://slideshare.net/MartinEtmajer/automated-deployments-slide-share)
- [Slide Deck: Automated Deployments (of Dynatrace) with Ansible](http://www.slideshare.net/MartinEtmajer/automated-deployments-with-ansible)
- [Slide Deck: Testing Ansible Roles with Test Kitchen, Serverspec and RSpec](http://www.slideshare.net/MartinEtmajer/testing-ansible-roles-with-test-kitchen-serverspec-and-rspec-48185017)
- [Tutorials: Automated Deployments (of Dynatrace) with Ansible](https://community.compuwareapm.com/community/display/LEARN/Tutorials+on+Automated+Deployments#TutorialsonAutomatedDeployments-ansible)

## Questions?

Feel free to post your questions on the Dynatrace Community's [Continuous Delivery Forum](https://community.dynatrace.com/community/pages/viewpage.action?pageId=46628921).

## License

Licensed under the MIT License. See the LICENSE file for details.
[![analytics](https://www.google-analytics.com/collect?v=1&t=pageview&_s=1&dl=https%3A%2F%2Fgithub.com%2FdynaTrace&dp=%2FDynatrace-Glassfish-Agent-Ansible&dt=Dynatrace-Glassfish-Agent-Ansible&_u=Dynatrace~&cid=github.com%2FdynaTrace&tid=UA-54510554-5&aip=1)]()
