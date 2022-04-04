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
Notice: Applied catalog in 0.01 seconds```