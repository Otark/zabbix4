#!/bin/sh
export smtpemailfrom=zabbix@sbtech.com
export zabbixemailto="$1"
export zabbixsubject="$2"
export zabbixbody="$3"
export smtpserver=SMTP_HOST
export smtplogin=SMTP_LOGIN
export smtppass=SMTP_PASSWORD
/usr/bin/sendEmail -f $smtpemailfrom -t $zabbixemailto -u $zabbixsubject \-m $zabbixbody -s $smtpserver:25 -xu $smtplogin -xp $smtppass -o tls=no \-o message-content-type=html
