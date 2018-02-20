### 使用步驟

0. 依照OS安裝[VirtualBox](https://www.virtualbox.org/wiki/Downloads) 及[Vagrant](https://www.vagrantup.com/)。

1. Clone Git
```git
git clone https://github.com/shuweide/simboDev201802.git
```
2. 啟動Vagrant。

```vagrant
vagrant up
```
3. 全部啟請動完後，使用下面指令查看Vagrant主機狀態。

```vagrant
vagrant status
```
如下圖，就是全部啟動了。

![Image of Vagrant status](https://raw.githubusercontent.com/shuweide/simboDev201802/master/images/vagrant%20status.png)

4. 檢查是否可利用vagrant ssh進入各Vagrant host內

```vagrant
vagrant ssh ansible-master
vagrant ssh ansible-worker1
vagrant ssh ansible-worker2
```
5. 可正確進入後即可退出，利用vagrant halt將所有主機關閉

```vagrant
vagrant halt
```
如有正確關閉，再利用vagrant status檢查結果會如下圖。

![Image of Vagrant status poweroff](https://raw.githubusercontent.com/shuweide/simboDev201802/master/images/vagrant%20status%20poweroff.png)

### 參考

- [Vagrant Documentation](https://www.vagrantup.com/docs/index.html) 
- [VirtualBox](https://www.virtualbox.org/)
