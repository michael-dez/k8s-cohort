# April 27 2022 - Assignment: Name Script & /etc/shadow
```bash
#! /usr/bin/bash

echo "Mike Mendez"

#mike:$6$.n.:17736:0:99999:7:::
#[--] [----] [---] - [---] ----
#|      |      |   |   |   |||+-----------> 9. Unused
#|      |      |   |   |   ||+------------> 8. Expiration date
#|      |      |   |   |   |+-------------> 7. Inactivity period
#|      |      |   |   |   +--------------> 6. Warning period
#|      |      |   |   +------------------> 5. Maximum password age
#|      |      |   +----------------------> 4. Minimum password age
#|      |      +--------------------------> 3. Last password change
#|      +---------------------------------> 2. Encrypted Password
#+----------------------------------------> 1. Username
#
#Source https://linuxize.com/post/etc-shadow-file/
```
# April 28 2022 - Assignment: 30 Bash Commands
#
# 1. Pick any 30 commands (excluding the one which we learnt during the class)
# 2. Execute the commands in linux shell
# 3. Document each command with the output in confluence

## locate
Searches for files indexed by the `updatedb` command.
Example:
```bash
touch ~/output_file
sudo updatedb
locate output_file
# Output:
/home/mike/output_file
```
## tee
Read input, and write to both standard output and files. Also useful when wanting to redirect output from a `sudo` command.
```bash
echo 'hello from tee!' | tee -a ~/output_file
# Output:
hello from tee!
```
## ping
Ping an IP address or hostname. Limit the number of packets sent with the `-c` option.
```bash
ping -c 3 localhost
# Output:
PING localhost(localhost (::1)) 56 data bytes
64 bytes from localhost (::1): icmp_seq=1 ttl=64 time=0.081 ms
64 bytes from localhost (::1): icmp_seq=2 ttl=64 time=0.058 ms
64 bytes from localhost (::1): icmp_seq=3 ttl=64 time=0.068 ms

--- localhost ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2020ms
rtt min/avg/max/mdev = 0.058/0.069/0.081/0.009 ms
```
## hostname
Show or set the system host name.
```bash
hostname
# Output:
BCLT02
```
## top
Like task manager, but for Linux. Type `h` or `?` to show keybinds and `q` to quit.
```bash
top
# Output:
[?1h=[?25l[H[2J(B[mtop - 19:33:17 up 28 min,  1 user,  load average: 0.08, 0.21, 0.38(B[m[39;49m(B[m[39;49m[K
Tasks:(B[m[39;49m[1m 130 (B[m[39;49mtotal,(B[m[39;49m[1m   1 (B[m[39;49mrunning,(B[m[39;49m[1m 129 (B[m[39;49msleeping,(B[m[39;49m[1m   0 (B[m[39;49mstopped,(B[m[39;49m[1m   0 (B[m[39;49mzombie(B[m[39;49m(B[m[39;49m[K
%Cpu(s):(B[m[39;49m[1m 16.7 (B[m[39;49mus,(B[m[39;49m[1m 25.0 (B[m[39;49msy,(B[m[39;49m[1m  0.0 (B[m[39;49mni,(B[m[39;49m[1m 41.7 (B[m[39;49mid,(B[m[39;49m[1m  0.0 (B[m[39;49mwa,(B[m[39;49m[1m  8.3 (B[m[39;49mhi,(B[m[39;49m[1m  8.3 (B[m[39;49msi,(B[m[39;49m[1m  0.0 (B[m[39;49mst(B[m[39;49m(B[m[39;49m[K
MiB Mem :(B[m[39;49m[1m   7950.9 (B[m[39;49mtotal,(B[m[39;49m[1m   5862.1 (B[m[39;49mfree,(B[m[39;49m[1m    929.5 (B[m[39;49mused,(B[m[39;49m[1m   1159.3 (B[m[39;49mbuff/cache(B[m[39;49m(B[m[39;49m[K
MiB Swap:(B[m[39;49m[1m      0.0 (B[m[39;49mtotal,(B[m[39;49m[1m      0.0 (B[m[39;49mfree,(B[m[39;49m[1m      0.0 (B[m[39;49mused.(B[m[39;49m[1m   6706.7 (B[m[39;49mavail Mem (B[m[39;49m(B[m[39;49m[K
[K
[7m    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND    (B[m[39;49m[K
(B[m   1383 mike      20   0  320108 116428  84572 S  40.0   1.4   3:05.86 picom      (B[m[39;49m[K
(B[m    311 root      20   0  378924 131996  67040 S  13.3   1.6   1:02.75 Xorg       (B[m[39;49m[K
(B[m      1 root      20   0  100464  11704   9068 S   0.0   0.1   0:03.52 systemd    (B[m[39;49m[K
(B[m      2 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kthreadd   (B[m[39;49m[K
(B[m      3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp     (B[m[39;49m[K
(B[m      4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_par_gp (B[m[39;49m[K
(B[m      5 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 netns      (B[m[39;49m[K
(B[m      7 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/0+ (B[m[39;49m[K
(B[m      8 root      20   0       0      0      0 I   0.0   0.0   0:00.11 kworker/u+ (B[m[39;49m[K
(B[m      9 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 mm_percpu+ (B[m[39;49m[K
(B[m     10 root      20   0       0      0      0 I   0.0   0.0   0:00.21 kworker/u+ (B[m[39;49m[K
(B[m     11 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks+ (B[m[39;49m[K
(B[m     12 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks+ (B[m[39;49m[K
(B[m     13 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks+ (B[m[39;49m[K
(B[m     14 root      20   0       0      0      0 S   0.0   0.0   0:00.69 ksoftirqd+ (B[m[39;49m[K
(B[m     15 root      -2   0       0      0      0 I   0.0   0.0   0:00.20 rcu_preem+ (B[m[39;49m[K
(B[m     16 root      -2   0       0      0      0 S   0.0   0.0   0:00.00 rcub/0     (B[m[39;49m[K
(B[m     17 root      -2   0       0      0      0 S   0.0   0.0   0:00.00 rcuc/0     (B[m[39;49m[K
(B[m     18 root      rt   0       0      0      0 S   0.0   0.0   0:00.00 migration+ (B[m[39;49m[K
(B[m     19 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inje+ (B[m[39;49m[K
(B[m     20 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/0    (B[m[39;49m[K
(B[m     21 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kdevtmpfs  (B[m[39;49m[K
(B[m     22 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 inet_frag+ (B[m[39;49m[K
(B[m     23 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kauditd    (B[m[39;49m[K
(B[m     25 root      20   0       0      0      0 S   0.0   0.0   0:00.00 khungtaskd (B[m[39;49m[K
(B[m     26 root      20   0       0      0      0 S   0.0   0.0   0:00.00 oom_reaper (B[m[39;49m[K
(B[m     27 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 writeback  (B[m[39;49m[K
(B[m     28 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kcompactd0 (B[m[39;49m[K[H(B[mtop - 19:33:20 up 28 min,  1 user,  load average: 0.08, 0.21, 0.38(B[m[39;49m(B[m[39;49m[K
```
## curl
Similar to `wget`, "a tool for transferring data from or to a server." Curl can be used to do anything from testing apis to downloading a file.
```bash
curl https://raw.githubusercontent.com/michael-dez/dotfiles/main/nvim/init.vim | head -n 10
# Output:
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0" __            __    __                 __               
"|  \          |  \  |  \               |  \              
" \$$ _______   \$$ _| $$_    __     __  \$$ ______ ____  
"|  \|       \ |  \|   $$ \  |  \   /  \|  \|      \    \ 
"| $$| $$$$$$$\| $$ \$$$$$$   \$$\ /  $$| $$| $$$$$$\$$$$\
"| $$| $$  | $$| $$  | $$ __   \$$\  $$ | $$| $$ | $$ | $$
"| $$| $$  | $$| $$  | $$|  \ __\$$ $$  | $$| $$ | $$ | $$
"| $$| $$  | $$| $$   \$$  $$|  \\$$$   | $$| $$ | $$ | $$
" \$$ \$$   \$$ \$$    \$$$$  \$$ \$     \$$ \$$  \$$  \$$
"                                                         
100  6750  100  6750    0     0  21819      0 --:--:-- --:--:-- --:--:-- 21774
curl: (23) Failed writing body
```
## zip / unzip
zip or unzip a file.
```bash
zip ~/output_file.zip ~/output_file
unzip ~/output_file.zip ~/output_file
rm ~/output_file.zip
# Output:
  adding: home/mike/output_file (stored 0%)
Archive:  /home/mike/output_file.zip
caution: filename not matched:  /home/mike/output_file
```
## tar
Robust archive utility.
```bash
mkdir ~/testdir
for x in {1..3}; do touch ~/testdir/file-$x; done
tar -czvf testdir.tar.gz testdir
# Output:
testdir/
testdir/file-2
testdir/file-1
testdir/file-3
```
## whoami
Tells you who you are.
```bash
whoami
# Output:
mike
```
## uname
System information.
```bash
uname -a
# Output:
Linux BCLT02 5.17.5-arch1-1 #1 SMP PREEMPT Wed, 27 Apr 2022 20:56:11 +0000 x86_64 GNU/Linux
```
## useradd
Add a user.
```bash
sudo useradd foo
cat /etc/passwd | grep foo
# Output:
foo:x:1001:1001::/home/foo:/bin/bash
```
## usermod
Modify a user account.
```bash
sudo usermod -aG wheel foo
cat /etc/group | grep wheel
# Output:
wheel:x:998:mike,foo
```
## userdel
Delete a user.
```bash
sudo userdel foo
```
## groupadd
Add a group.
```bash
sudo groupadd baddies
cat /etc/group | grep baddies
# Output:
baddies:x:1001:
```
## date
Print or set the date.
```bash
date
# Output:
Thu Apr 28 07:47:58 PM MDT 2022
```
## ip a / ip addr / ifconfig
Ip address and nic information.
```bash
ip addr
# Output:
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:d5:78:07 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.30/24 brd 192.168.1.255 scope global dynamic noprefixroute enp0s3
       valid_lft 83846sec preferred_lft 83846sec
    inet6 fe80::ae1f:4c79:e516:d302/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```
## alias
Create a string value that your shell replaces with the command you specify.
```bash
alias vi
# Output:
vi=nvim
```
## more
Pager for standard output.
```bash
head /var/log/pacman.log | more
# Output:
[2022-04-16T01:27:33-0600] [PACMAN] Running 'pacman -r /tmp/calamares-root-yvi327_r -Sy --noconfirm base base-devel btrfs-progs cryptsetup device-mapper diffutils dosfstools e2fsprogs efibootmgr endeavouros-keyring endeavouros-mirrorlist exfatprogs f2fs-tools grub2-theme-endeavouros inetutils jfsutils less linux linux-firmware linux-headers logrotate lsb-release lvm2 man-db man-pages mdadm mkinitcpio-busybox mkinitcpio-nfs-utils mkinitcpio-openswap nano netctl ntfs-3g os-prober perl python reiserfsprogs s-nail sudo grub sysfsutils systemd-sysvcompat texinfo usbutils which xfsprogs xterm mkinitcpio'
[2022-04-16T01:27:33-0600] [PACMAN] synchronizing package lists
[2022-04-16T01:30:07-0600] [ALPM] transaction started
[2022-04-16T01:30:07-0600] [ALPM] installed iana-etc (20220325-1)
[2022-04-16T01:30:07-0600] [ALPM] warning: /tmp/calamares-root-yvi327_r/etc/resolv.conf installed as /tmp/calamares-root-yvi327_r/etc/resolv.conf.pacnew
[2022-04-16T01:30:07-0600] [ALPM] warning: directory permissions differ on /tmp/calamares-root-yvi327_r/run/
filesystem: 1777  package: 755
[2022-04-16T01:30:07-0600] [ALPM] installed filesystem (2021.12.07-1)
[2022-04-16T01:30:07-0600] [ALPM] installed linux-api-headers (5.16.8-1)
[2022-04-16T01:30:07-0600] [ALPM] installed tzdata (2022a-1)
```
## less 
Better pager. Less is more...than more.
```bash
head /var/log/pacman.log | less
# Output:
[2022-04-16T01:27:33-0600] [PACMAN] Running 'pacman -r /tmp/calamares-root-yvi327_r -Sy --noconfirm base base-devel btrfs-progs cryptsetup device-mapper diffutils dosfstools e2fsprogs efibootmgr endeavouros-keyring endeavouros-mirrorlist exfatprogs f2fs-tools grub2-theme-endeavouros inetutils jfsutils less linux linux-firmware linux-headers logrotate lsb-release lvm2 man-db man-pages mdadm mkinitcpio-busybox mkinitcpio-nfs-utils mkinitcpio-openswap nano netctl ntfs-3g os-prober perl python reiserfsprogs s-nail sudo grub sysfsutils systemd-sysvcompat texinfo usbutils which xfsprogs xterm mkinitcpio'
[2022-04-16T01:27:33-0600] [PACMAN] synchronizing package lists
[2022-04-16T01:30:07-0600] [ALPM] transaction started
[2022-04-16T01:30:07-0600] [ALPM] installed iana-etc (20220325-1)
[2022-04-16T01:30:07-0600] [ALPM] warning: /tmp/calamares-root-yvi327_r/etc/resolv.conf installed as /tmp/calamares-root-yvi327_r/etc/resolv.conf.pacnew
[2022-04-16T01:30:07-0600] [ALPM] warning: directory permissions differ on /tmp/calamares-root-yvi327_r/run/
filesystem: 1777  package: 755
[2022-04-16T01:30:07-0600] [ALPM] installed filesystem (2021.12.07-1)
[2022-04-16T01:30:07-0600] [ALPM] installed linux-api-headers (5.16.8-1)
[2022-04-16T01:30:07-0600] [ALPM] installed tzdata (2022a-1)
```
## head
Output only the beginning of files. `-n` to specify number of lines.
```bash
seq 100 | xargs -I {} echo "{} line(s) of code" >> ~/output_file
# Output:
cat ~/output_file | head -n 10
test
hello from tee!
1 line(s) of code
2 line(s) of code
3 line(s) of code
4 line(s) of code
5 line(s) of code
6 line(s) of code
7 line(s) of code
8 line(s) of code
```
## tail
Output only the end of files.
```bash
cat ~/output_file | tail -n 10
# Output:
91 line(s) of code
92 line(s) of code
93 line(s) of code
94 line(s) of code
95 line(s) of code
96 line(s) of code
97 line(s) of code
98 line(s) of code
99 line(s) of code
100 line(s) of code
```
## pr
Format standard out for printing.
```bash
pacman -Qe | pr -h "Package Inventory $(date +%D)"
# Output:


2022-04-28 20:13            Package Inventory 04/28/22            Page 1


accountsservice 22.08.8-2
acpi 1.7-3
adobe-source-han-sans-cn-fonts 2.004-1
adobe-source-han-sans-jp-fonts 2.004-1
adobe-source-han-sans-kr-fonts 2.004-1
alsa-firmware 1.2.4-2
alsa-plugins 1:1.2.6-3
alsa-utils 1.2.6-1
ansible 5.7.0-1
arandr 0.1.10-7
arc-gtk-theme-eos 20220405-1
archlinux-xdg-menu 0.7.6.3-2
autoconf 2.71-1
automake 1.16.5-1
awesome-terminal-fonts 1.1.0-4
aws-cli 1.22.87-1
b43-fwcutter 019-3
base 2-2
bash-completion 2.11-2
bind 9.18.2-1
binutils 2.38-4
bison 3.8.2-4
bluez 5.64-2
bluez-utils 5.64-2
btrfs-progs 5.16.2-1
cantarell-fonts 1:0.303.1-1
cryptsetup 2.4.3-2
device-mapper 2.03.15-1
dex 0.9.0-1
dhclient 4.4.3-1
dialog 1:1.3_20220414-1
diffutils 3.8-1
dmenu 5.1-1
dmidecode 3.3-1
dmraid 1.0.0.rc16.3-13
dnsmasq 2.86-1
docker 1:20.10.14-1
dosfstools 4.2-2
downgrade 11.1.0-1
duf 0.8.1-2
dunst 1.8.1-1
e2fsprogs 1.46.5-3
efibootmgr 17-2
efitools 1.9.2-4
endeavouros-keyring 1-5
endeavouros-mirrorlist 4.4.3-1
endeavouros-skel-i3wm 3.0-10
endeavouros-theming 8.0-1
endeavouros-xfce4-terminal-colors 4-1
eos-apps-info 1.2.5-1
eos-hooks 1.4.21-1
eos-lightdm-slick-theme 2.0-3
eos-log-tool 1.4.15-1
eos-packagelist 1.5.2-1
eos-qogir-icons 4-1
eos-quickstart 1.3-1







```
## tr
Translate or delete characters.
```bash
echo "    surrounded by whitespace     " | tr -d '[:space:]'
# Output:
surroundedbywhitespace
```
## sort
Sort standard output.
```bash
du | sort -nr | head -n 10
# Output:
1691824	.
1233292	./.cache
570156	./.cache/eos-download-wallpapers.zGNYl
570152	./.cache/eos-download-wallpapers.zGNYl/Community-wallpapers
565372	./.cache/mozilla
565368	./.cache/mozilla/firefox
565360	./.cache/mozilla/firefox/eslqnolc.default-release
531008	./.cache/mozilla/firefox/eslqnolc.default-release/cache2
530632	./.cache/mozilla/firefox/eslqnolc.default-release/cache2/entries
326316	./.cache/eos-download-wallpapers.zGNYl/Community-wallpapers/.git
```
## uniq
Show unique adjacent records.
```bash
journalctl -n 10 --no-pager | sort | uniq
# Output:
Apr 28 20:12:07 BCLT02 audit[75057]: USER_START pid=75057 uid=1000 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_systemd_home,pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/3 res=success'
Apr 28 20:12:07 BCLT02 kernel: audit: type=1101 audit(1651198327.323:157): pid=75057 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="mike" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/3 res=success'
Apr 28 20:12:07 BCLT02 kernel: audit: type=1105 audit(1651198327.323:159): pid=75057 uid=1000 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_systemd_home,pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/3 res=success'
Apr 28 20:12:07 BCLT02 kernel: audit: type=1110 audit(1651198327.323:158): pid=75057 uid=1000 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/3 res=success'
Apr 28 20:12:07 BCLT02 sudo[75057]: pam_unix(sudo:session): session opened for user root(uid=0) by (uid=1000)
Apr 28 20:12:08 BCLT02 audit[75057]: CRED_DISP pid=75057 uid=1000 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/3 res=success'
Apr 28 20:12:08 BCLT02 audit[75057]: USER_END pid=75057 uid=1000 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_systemd_home,pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/3 res=success'
Apr 28 20:12:08 BCLT02 kernel: audit: type=1104 audit(1651198328.559:161): pid=75057 uid=1000 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/3 res=success'
Apr 28 20:12:08 BCLT02 kernel: audit: type=1106 audit(1651198328.559:160): pid=75057 uid=1000 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_systemd_home,pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/3 res=success'
Apr 28 20:12:08 BCLT02 sudo[75057]: pam_unix(sudo:session): session closed for user root
```
## time
Find running time for a command.
```bash
time rg config | tail -n 1
# Output:
Documents/notes/2022-04-28-CommonBashCommands.md:time rg config | tail -n 1
rg config  0.01s user 0.00s system 14% cpu 0.048 total
tail -n 1  0.00s user 0.00s system 4% cpu 0.032 total
```
## sed
Stream editor.
```bash
ls -lah ~ | sort | sed "s/mike/not mike/gp" | head -n 5
# Output:
drwx------ 22 not mike not mike 4.0K Apr 28 20:12 .
drwx------ 22 not mike not mike 4.0K Apr 28 20:12 .
drwx------  2 not mike not mike 4.0K Apr 27 12:07 .ssh
drwx------  2 not mike not mike 4.0K Apr 27 12:07 .ssh
drwx------  3 not mike not mike 4.0K Apr 20 17:53 .pki
```
## cut
Remove sections from each line of files.
```bash
pacman -Qe | cut -d " " -f 1 | head -n 10
accountsservice
acpi
adobe-source-han-sans-cn-fonts
adobe-source-han-sans-jp-fonts
adobe-source-han-sans-kr-fonts
alsa-firmware
alsa-plugins
alsa-utils
ansible
arandr
```
## xargs
Passes standard input as arguments to a specified command.
```bash
mkdir ~/test
seq 100 | xargs -I {} touch ~/test/file-{} && ls ~/test
# Output:
file-1
file-10
file-100
file-11
file-12
file-13
file-14
file-15
file-16
file-17
file-18
file-19
file-2
file-20
...
```
## scp
Secure file copy.
```bash
scp -r ~/test linux-demo:test
# Output:
file-59                                         100%    0     0.0KB/s   00:00    
file-65                                         100%    0     0.0KB/s   00:00    
file-51                                         100%    0     0.0KB/s   00:00    
file-56                                         100%    0     0.0KB/s   00:00    
file-37                                         100%    0     0.0KB/s   00:00    
file-86                                         100%    0     0.0KB/s   00:00    
file-79                                         100%    0     0.0KB/s   00:00    
file-76                                         100%    0     0.0KB/s   00:00    
file-72                                         100%    0     0.0KB/s   00:00    
file-60                                         100%    0     0.0KB/s   00:00    
file-82                                         100%    0     0.0KB/s   00:00    
file-96                                         100%    0     0.0KB/s   00:00    
file-55                                         100%    0     0.0KB/s   00:00    
file-57                                         100%    0     0.0KB/s   00:00    
file-58                                         100%    0     0.0KB/s   00:00    
file-63                                         100%    0     0.0KB/s   00:00    
file-47                                         100%    0     0.0KB/s   00:00    
file-93                                         100%    0     0.0KB/s   00:00    
file-31                                         100%    0     0.0KB/s   00:00    
file-84                                         100%    0     0.0KB/s   00:00    
file-100                                        100%    0     0.0KB/s   00:00    
file-68                                         100%    0     0.0KB/s   00:00    
file-8                                          100%    0     0.0KB/s   00:00    
file-30                                         100%    0     0.0KB/s   00:00    
file-15                                         100%    0     0.0KB/s   00:00    
file-16                                         100%    0     0.0KB/s   00:00    
file-92                                         100%    0     0.0KB/s   00:00    
file-94                                         100%    0     0.0KB/s   00:00    
file-87                                         100%    0     0.0KB/s   00:00    
file-98                                         100%    0     0.0KB/s   00:00    
file-11                                         100%    0     0.0KB/s   00:00    
file-25                                         100%    0     0.0KB/s   00:00    
file-13                                         100%    0     0.0KB/s   00:00    
file-61                                         100%    0     0.0KB/s   00:00    
file-90                                         100%    0     0.0KB/s   00:00    
file-7                                          100%    0     0.0KB/s   00:00    
...
```
