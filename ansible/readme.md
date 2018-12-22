* ansible-doc -l 查看支持的所有模块
* ansible-doc user 查看具体的模块用法
* ansible-playbook test.yaml 执行剧本
* ansible-playbook --syntax-check test.yaml 检查剧本语法
* ansible-playbook --check test.yaml 模拟执行 并不产生任何改变
* ansible-playbook test.yaml  --list-hosts 查看受影响的主机
* ansible-playbook test.yaml 后面可添加的选项 --remote-user --sudo --sudo-user=test --ask-sudo-pass
* --inventory --verbose(-vvv) --extra-vars --forks
* > 表示用它接下来的内容
* - meta: flush_handlers 可在Playbook中间就运行handler，因为其默认实在最后执行一次；如果想要无论如何都执行handler，可以使用 --force-handlers
* when changed_when failed_when ignore_errors delegate_to(任务委托) tags block templates include roles run_once