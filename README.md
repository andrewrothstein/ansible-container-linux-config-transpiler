andrewrothstein.container-linux-config-transpiler
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-container-linux-config-transpiler.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-container-linux-config-transpiler)

Installs [ct](https://coreos.com/os/docs/latest/configuration.html)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.container-linux-config-transpiler
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
