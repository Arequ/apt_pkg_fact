To run:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`cd path_to_this_repo`<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`puppet apply --modulepath=./ finding_pkg/manifests/init.pp`
<br>Example output:<br>
```bash
/home/alex/modules_test# puppet apply --modulepath=./ finding_pkg/manifests/init.pp
Notice: Scope(Class[main]): Hash Result: [{name => python3, version => 3.6.7-1~18.04}]
Notice: Scope(Class[main]): Array result: [python3, 3.6.7-1~18.04]
Notice: Scope(Class[main]): hello, it's me. Proceed with package resource
Notice: Compiled catalog for arequ-local in environment production in 0.23 seconds
Notice: Applied catalog in 0.01 seconds
```
<br><br>
hash fact sample output:
```bash
apt_pkgs_hash => [
  ...
  {
    name => "python3.6",
    version => "3.6.9-1~18.04ubuntu1.7"
  },
  {
    name => "python3.6-minimal",
    version => "3.6.9-1~18.04ubuntu1.7"
  },
  {
    name => "python3.8",
    version => "3.8.0-3ubuntu1~18.04.2"
  },
  {
    name => "python3.8-minimal",
    version => "3.8.0-3ubuntu1~18.04.2"
  },
  {
    name => "vim",
    version => "2:8.0.1453-1ubuntu1.8"
  },
  {
    name => "zoom",
    version => "5.9.1.1380"
  }
  ...
]
```

array output sample output:
```bash
apt_pkgs_array => [
  [
    "accountsservice",
    "0.6.45-1ubuntu1.3"
  ],
  [
    "acl",
    "2.2.52-3build1"
  ],
  [
    "acpi-support",
    "0.142"
  ],
  [
    "acpid",
    "1:2.0.28-1ubuntu1"
  ],
  [
    "adduser",
    "3.116ubuntu1"
  ],
  [
    "adium-theme-ubuntu",
    "0.3.4-0ubuntu4"
  ],
  [
    "adwaita-icon-theme",
    "3.28.0-1ubuntu1"
  ],
  [
    "adwaita-icon-theme-full",
    "3.28.0-1ubuntu1"
  ],
  [
    "aisleriot",
    "1:3.22.5-1"
  ],
  [
    "alsa-base",
    "1.0.25+dfsg-0ubuntu5"
  ],
  [
    "alsa-utils",
    "1.1.3-1ubuntu1"
  ],
  [
    "anacron",
    "2.3-24"
  ]...
]
  ```