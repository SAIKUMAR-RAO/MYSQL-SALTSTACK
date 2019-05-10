{% for database, arg in salt['pillar.get']('mysql:database', {}).items() %}

{{ database }}_mysql_db_create:
  mysql_database.present:
    - name: {{ database }}
    - host: {{ arg.host }}
    - connection_user: {{ pillar['mysql']['root']['name'] }}
    - connection_pass: {{ pillar['mysql']['root']['password'] }}
    - connection_charset: utf8


{% endfor %}
