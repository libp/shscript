#* */4 * * * cd /opt/spider/;python StrongSpiderv1.1.py >> spider.log
#* 4 * * * cd /opt/spider/;python StrongSpiderv1.1.py >> spider.log
#*/5 * * * * /bin/bash /opt/script/checkHealth/checkHealth.sh
0 1 * * * sh /opt/script/cleanlog/cleanlog.sh
#每天定时清理没有跑完的python进程
#0 1 * * * sh /opt/script/cleanProcess/cleanProcess.sh
#每天收集一遍csdn数据
#0 0 * * * cd /opt/spiderCSDN/;python SpiderCsdn.py  >> spider.log
