### 使用步驟

0. 依照OS安裝[VirtualBox(包含VirtualBox Extension Pack)](https://www.virtualbox.org/wiki/Downloads) 及[Vagrant](https://www.vagrantup.com/)。

1. Clone Git

```git
git clone https://github.com/shuweide/simboDev201802.git
```

2. 啟動Vagrant。

```markdown
vagrant up
```

3. 全部啟請動完後，使用下面指令查看Vagrant主機狀態是否都為running。

```vagrant
vagrant status
```
![Image of Vagrant status](https://raw.githubusercontent.com/shuweide/simboDev201802/master/images/vagrant%20status.png)

4. 檢查是否可利用**vagrant ssh**進入各Vagrant host內

```vagrant
vagrant ssh ansible-master
vagrant ssh ansible-worker1
vagrant ssh ansible-worker2
```

5. 可正確進入後即可退出，利用**vagrant halt**將所有主機關閉，可用**vagrant status**確認狀態。

```vagrant
vagrant halt
```
![Image of Vagrant status poweroff](https://raw.githubusercontent.com/shuweide/simboDev201802/master/images/vagrant%20status%20poweroff.png)

### 參考

- [Vagrant Documentation](https://www.vagrantup.com/docs/index.html) 
- [VirtualBox](https://www.virtualbox.org/)
