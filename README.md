### 使用步驟

0. 安裝[VirtualBox](https://www.virtualbox.org/wiki/Downloads)。

1. 安裝[Vagrant](https://www.vagrantup.com/)。

2. Clone Git

```git
git clone https://github.com/shuweide/simboDev201802.git
```

3. 啟動Vagrant。

```markdown
vagrant up
```

4. 全部啟請動完後，使用下面指令查看Vagrant主機狀態是否都為running。

```vagrant
vagrant status
```
![Image of Vagrant status](https://raw.githubusercontent.com/shuweide/simboDev201802/master/images/vagrant%20status.png)

5. 檢查是否可利用**vagrant ssh**進入各Vagrant host內

```vagrant
vagrant ssh ansible-master
vagrant ssh ansible-worker1
vagrant ssh ansible-worker2
```

6. 可正確進入後即可退出，利用**vagrant halt**將所有主機關閉，可用**vagrant status**確認狀態。

```vagrant
vagrant halt
```
![Image of Vagrant status poweroff](https://raw.githubusercontent.com/shuweide/simboDev201802/master/images/vagrant%20status%20poweroff.png)

### 其他 Vagrant Command

* 刪除vagrant host
```vagrant
vagrant destroy
```

* 列出vagrant box list
```vagrant
vagrant box list
```

* 刪除vagrant box
```vagrant
vagrant box remove [box name]
```

### 參考

- [Vagrant Documentation](https://www.vagrantup.com/docs/index.html) 
- [VirtualBox](https://www.virtualbox.org/)
