# RPractice

```sh
R #打开交互式环境
Rscript main.R # 执行main.R脚本
```

国内镜像

```text
中科大
https://mirrors.ustc.edu.cn/bioc/
http://mirrors.ustc.edu.cn/bioc/

清华
https://mirrors.tuna.tsinghua.edu.cn/CRAN/
http://mirrors.tuna.tsinghua.edu.cn/CRAN/

中国科学院大学
http://mirrors.opencas.cn/cran/

在 R 的交互式终端中执行：
options(repos=structure(c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/")))

或者修改配置文件：/usr/lib/R/etc/Rprofile.site
local({
  r <- getOption("repos")
  r["CRAN"] <- "https://mirrors.tuna.tsinghua.edu.cn/CRAN/"
  options(repos = r)
})


然后执行 install.packages() 安装包的时候，就默认使用国内镜像了

apt install libcurl4-openssl-dev
apt install libgmp3-dev
apt install libmpfr-dev

install.packages(c("agricolae", "aplpack", "BSDA", "car", "corrgram", "DescTools"))
install.packages(c("doBy", "e1071", "fmsb", "forecast", "ggplot2", "gmodels"))
install.packages(c("gplots", "gridExtra", "HH", "Hmisc", "lm.beta", "lsr"))
install.packages(c("pastecs", "plotrix", "plyr", "psych", "reshape", "scatterplot3d"))
install.packages(c("sm", "TeachingDemos", "vcd", "vioplot"))
```

## R 语言的 docker 镜像

docker 入门教程：https://github.com/yeasy/docker_practice

```sh
https://hub.docker.com/_/r-base

docker pull r-base
docker pull r-base:latest
docker pull r-base:4.1.0


打开 R 语言交互式终端
docker run -ti --rm r-base


进入 r-base 这个 Linux 系统的 bash 终端
docker run -ti --rm r-base bash


进入 r-base 这个 Linux 系统的 bash 终端
把主机目录 /home/huangjian/git/huangjian/RPractice 挂载到
docker 容器的 /RPractice 目录上
docker run -ti --rm \
  --mount type=bind,source=/home/huangjian/git/huangjian/RPractice,target=/RPractice \
  r-base bash

利用镜像 r-base:4.1.1 创建一个容器，容器名字叫 hj-r4.1.1
docker container create \
  -i -t \
  --name "hj-r4.1.1" \
  --mount type=bind,source=/home/huangjian/git/huangjian/RPractice,target=/RPractice \
  r-base:4.1.1 bash

使用主机的 x11 显示图形功能
export DISPLAY=:0
xhost +
docker run -ti --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  r-base
xhost -

进入容器
docker exec -i hj-r4.1.1 bash

导出容器
docker export -o ~/hj-r4.1.1_backup_20211010 hj-r4.1.1

把导出的容器重新导入为镜像，镜像的名字为 test/hj-r
docker import /home/huangjian/hj-r4.1.1_backup_20211010 test/hj-r
docker run -it --rm test/hj-r bash
```

```
r-base:4.1.1, debian 安装软件

/etc/apt/apt.conf.d/default
注释掉: //APT::Default-Release "testing";

apt install gnupg
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8B48AD6246925553
apt update
apt upgrade

apt install apt-transport-https ca-certificates
debian清华源镜像：https://mirrors.tuna.tsinghua.edu.cn/help/debian/

apt install vim
```

