FROM datadog/docker-dd-agent

ADD mysql.yaml /etc/dd-agent/conf.d/mysql.yaml

ADD agent-check/hello.yaml /etc/dd-agent/conf.d/hello.yaml
ADD agent-check/hello.py /etc/dd-agent/checks.d/hello.py
