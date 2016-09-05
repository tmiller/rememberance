tmiller:
  user.present:
    - name: tmiller
    - fullname: Tom Miller
    - shell: /bin/bash
    - home: /home/tmiller
    - groups:
      - sudo

  ssh_auth.present:
    - user: tmiller
    - names:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC3nwxkfTsB5cDCOC7PQlOTw+KWBbpl9AE9pPnv74QXoltR9NH5C/BOiuF3c4Ns4BRIaAOWN0/HXCaFvJyJdlhIwj65LeuKR4GFV9Nm+yzR7tkPbWJNizjXqXHUaxQHXnRwhYpH3WfZvUUVCMawXt17C4p7Eqk41SZf8TA64Op+c4TlLZCq9mxKAvZxuFeVMW0Af3GizE3Gwij/6+/tnM5YfoxE6HXa2vmG1bMEYjQP1N+0jD7cQFf8GyMQ9eeKshDnxpUfoU0Qml/vuYPBDDdVZ+9hmnrU3oGl6D3x9SW9dk4Dcur78ozdnp6fN/+HoOil2BqvXoyZCZo/julFMqViDx1kFNwYgAlzPbSkqtm6oDM5y0r7srMQXQkx30gEqnr2e1Apxnj0OQbp4BXyliitA0i0OElxqWrrUfzSXPl34pzBNBna1Xo5wHXk+5KWRNbeDutWqnHc9+T/wH6kHYzjRYsp7sdLWvtqs0kYFHmiWzrhyudboQMLJWb86sapDXhnyGheg4yWtz3WenE1AmOEdgp0+3tLriVdMAtmiHUOiWw0ojt5idDR3Kfv9GkWyc25fJDqdssF1tustiXFUhVgCHZbXBkgowdPB3CJ7yobZtdJyx9AzQxYd41xBRX5H0NyDdfmuy9M53ob19uHd6NOJDz9FAtQ6aUC6JnuS4/XbQ== Tom Miller - Yubikey 2

  file.managed:
    - name: /etc/sudoers.d/90-tmiller
    - contents: tmiller ALL=(ALL) NOPASSWD:ALL
    - user: root
    - group: root
    - mode: 0440
    - check_cmd: /usr/sbin/visudo -c -f
