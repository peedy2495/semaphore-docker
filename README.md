# semaphore-docker
original semaphore:latest conainer with upgraded ansible environment

This repository was created due to some annoying issues in the currently used version of ansible in semaphore:latest.

just create a new image with `docker build --label semaphore -t semaphore:ansible_9.2.0 .`

<br><br><br>
Thanks to [andreas-marschke](https://github.com/andreas-marschke)