default:
	just --list

# export ANSIBLE_STDOUT_CALLBACK := 'json'

ping host='localhost':
	cd playbooks && ansible {{ host }} -m ping -v

show-inventory:
	cd playbooks && ansible-inventory --list

install-gha-runners:
	cd playbooks && ansible-playbook github-runner.yaml -K
