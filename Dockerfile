FROM semaphoreui/semaphore:latest

USER root

WORKDIR /home/semaphore

# Where requirements.txt has all the right versions of the dependencies you need
COPY ./requirements.txt /tmp/requirements.txt

# Add here any other dependencies from the OS you need
RUN apk update && apk add py3-pip py3-setuptools alpine-sdk make gcc wget python3-dev jq

# Even libc and build tools if necessary for bindings
RUN apk add --virtual .build-deps gcc musl-dev

# Now install all the dependencies 
RUN pip install -r /tmp/requirements.txt

# Setup ansible-mitogen as strategy
COPY ./ansible.cfg /etc/ansible.cfg
RUN echo "strategy_plugins =  $(ls -d /usr/lib/python*)/site-packages/ansible_mitogen/plugins/strategy >> /etc/ansible.cfg"

# Switch back to semaphore user so that the container starts
# and works with the entrypoint defined in the parent container.
USER semaphore