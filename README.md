bind9_m_m_centos7
=========

Sets up master master bind 9 DNS server on CentOS7

Idea is to avoid using slave servers. Instead provision multiple masters.
Keeps the whole setup very simple.

Requirements
------------

Make sure hostname is set up properly on both nameservers
Verify with: hostname --fqdn

Role Variables
--------------

Default variables (default/main/yml):
Can be used to set up zone file
ns1_ip: 10.0.0.2
ns2_ip: 10.0.0.3


Dependencies
------------

None

Example Playbook
----------------

---
- hosts: production
  roles:
   - bind9_m_m_centos7
  vars: 
   - ns1_ip: 10.0.0.2
   - ns2_ip: 10.0.0.3
  serial: 1

// To just update zones run

ansible-playbook main.yml --tags "update"


License
-------

BSD

Author Information
------------------

Edgars Simanis * https://github.com/shift8nix * https://edgars.io
