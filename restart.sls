mysql_restart:
  module.wait:
    - name: service.restart
    - m_name: mariadb
    - watch:
      - mysql_server_config
