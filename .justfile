default:
	just --list

# export ANSIBLE_STDOUT_CALLBACK := 'json'
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY := 'YES'

ping host='localhost':
	cd playbooks && ansible {{ host }} -m ping -v

win-ping host='localhost':
	cd playbooks && ansible {{ host }} -m win_ping -v

show-inventory:
	cd playbooks && ansible-inventory --list

install-gha-runners:
	cd playbooks && ansible-playbook github-runner.yaml
