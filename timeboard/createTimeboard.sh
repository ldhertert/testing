api_key=8f6efa9b847082c3b3bfff932d1309b4
app_key=a97cb1db44f0ad186283604607403b4c6f220355

curl  -X POST -H "Content-type: application/json" \
-d $'{
      "title": "Created via API",
      "description": "Created via API",
      "graphs" : [
            {
                "definition": {
                    "viz": "timeseries",
                    "status": "done",
                    "requests": [
                        {
                            "q": "avg:my_metric{host:datadog}",
                            "style": {
                                "width": "normal",
                                "palette": "dog_classic",
                                "type": "solid"
                            },
                            "type": "line",
                            "conditional_formats": []
                        }
                    ],
                    "autoscale": true
                },
                "title": "MyMetric (scoped by host)"
            },
            {
                "definition": {
                    "viz": "timeseries",
                    "requests": [
                        {
                            "q": "anomalies(avg:mysql.net.connections{*}, \'basic\', 2)",
                            "style": {
                                "width": "normal",
                                "palette": "dog_classic",
                                "type": "solid"
                            },
                            "type": "line",
                            "conditional_formats": []
                        }
                    ],
                    "autoscale": true
                },
                "title": "MySQL Connections (with anomalies)"
            },
            {
                "definition": {
                    "viz": "timeseries",
                    "requests": [
                        {
                            "q": "avg:my_metric{*}.rollup(sum, 3600)",
                            "style": {
                                "width": "normal",
                                "palette": "dog_classic",
                                "type": "solid"
                            },
                            "type": "line",
                            "conditional_formats": []
                        }
                    ],
                    "autoscale": true
                },
                "title": "MyMetric (hourly rollup)"
            }
        ],
      "read_only": "True"
}' \
"https://api.datadoghq.com/api/v1/dash?api_key=${api_key}&application_key=${app_key}"