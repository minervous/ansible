# Ansible playbooks

## `github-runner.yaml`

1. Install sshpass on the local machine (to connect to the remote via password the first time).
2. Copy public SSH keys of admins to the remotes.
3. Download, configure, and run a GHA runner as a service on the remotes.
