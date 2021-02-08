# Open a firewall port in the public zone for 80 and 443
open_firewall_port:
  firewalld.present:
    - name: public
    - ports:
      - 80/tcp
      - 443/tcp
