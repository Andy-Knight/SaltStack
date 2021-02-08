# Create a user group that contains existing root and admin users

demogroup:
  group.present:
    - name: demogroup
    - addusers:
      - root
      - admin
