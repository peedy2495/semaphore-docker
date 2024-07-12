# semaphore-docker
original semaphore:latest conainer with upgraded ansible environment

This repository was created due to some annoying issues in the currently used version of ansible in [semaphoreui/semaphore:latest](https://hub.docker.com/r/semaphoreui/semaphore).

just create a new image with `docker build --label semaphore -t semaphore:ansible_9.2.0 .`

<br><br><br>
Thanks to [andreas-marschke](https://github.com/andreas-marschke)


**AddOn: Ansible has been accelerated by Ansible-Mitogen. ** ;-)

additional modules:
- jmespath for parsing YAML content