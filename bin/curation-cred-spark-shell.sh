cat  nabu-poc-curation/code/curationCredentials.scala | spark-shell --master yarn \
--packages "com.github.music-of-the-ainur:almaren-framework_2.11:0.9.0-2.4" \
--executor-cores 1 \
--num-executors 2 \
--executor-memory 5G \
--driver-memory 2G \
--jars "$NABU_SPARK_BOT_HOME/jars/nabu-sparkbot-lib-common-assembly-0.8.6.jar" \
--conf spark.nabu.token="eyJhbGciOiJSUzI1NiJ9.eyJhdXRoZW50aWNhdGlvbl9zZXJ2aWNlIjoibGRhcCIsInJvbGVzIjoiV3lCN0lDSnVZV0oxWDNKdmJHVnpJaUE2SUZzZ2V5QWlSR0YwWVNCRWIyMWhhVzV6SWlBNklIc2dJbTF2WkdsbWVTSWdPaUIwY25WbExDQWlkbWxsZHlJZ09pQjBjblZsTENBaVkzSmxZWFJsSWlBNklIUnlkV1VnZlNCOUxDQjdJQ0pHYVd4MFpYSWlJRG9nZXlBaWJXOWthV1o1SWlBNklIUnlkV1VzSUNKMmFXVjNJaUE2SUhSeWRXVXNJQ0pqY21WaGRHVWlJRG9nZEhKMVpTQjlJSDBzSUhzZ0lrVnVkR2wwZVNJZ09pQjdJQ0p0YjJScFpua2lJRG9nZEhKMVpTd2dJblpwWlhjaUlEb2dkSEoxWlN3Z0ltTnlaV0YwWlNJZ09pQjBjblZsSUgwZ2ZTd2dleUFpVFdGdVlXZGxJRUZqWTJWemN5SWdPaUI3SUNKdGIyUnBabmtpSURvZ1ptRnNjMlVzSUNKMmFXVjNJaUE2SUhSeWRXVXNJQ0pqY21WaGRHVWlJRG9nWm1Gc2MyVWdmU0I5TENCN0lDSk5iMjVwZEc5eWFXNW5JRVJoYzJoaWIyRnlaQ0lnT2lCN0lDSnRiMlJwWm5raUlEb2dabUZzYzJVc0lDSjJhV1YzSWlBNklIUnlkV1VzSUNKamNtVmhkR1VpSURvZ1ptRnNjMlVnZlNCOUxDQjdJQ0pGZUdWamRYUnBkbVVnUkdGemFHSnZZWEprSWlBNklIc2dJbTF2WkdsbWVTSWdPaUJtWVd4elpTd2dJblpwWlhjaUlEb2dkSEoxWlN3Z0ltTnlaV0YwWlNJZ09pQm1ZV3h6WlNCOUlIMHNJSHNnSWsxaGJtRm5aU0JRYVhCbGJHbHVaWE1pSURvZ2V5QWliVzlrYVdaNUlpQTZJSFJ5ZFdVc0lDSjJhV1YzSWlBNklIUnlkV1VzSUNKamNtVmhkR1VpSURvZ2RISjFaU0I5SUgwc0lIc2dJa055WldSbGJuUnBZV3h6SWlBNklIc2dJbTF2WkdsbWVTSWdPaUIwY25WbExDQWlkbWxsZHlJZ09pQjBjblZsTENBaVkzSmxZWFJsSWlBNklIUnlkV1VnZlNCOUxDQjdJQ0pHWVdObGRDSWdPaUI3SUNKdGIyUnBabmtpSURvZ2RISjFaU3dnSW5acFpYY2lJRG9nZEhKMVpTd2dJbU55WldGMFpTSWdPaUIwY25WbElIMGdmU3dnZXlBaVEyOXRjSFYwWlNCRmJtZHBibVVpSURvZ2V5QWliVzlrYVdaNUlpQTZJR1poYkhObExDQWlkbWxsZHlJZ09pQm1ZV3h6WlN3Z0ltTnlaV0YwWlNJZ09pQm1ZV3h6WlNCOUlIMHNJSHNnSWxONWJtOXVlVzBpSURvZ2V5QWliVzlrYVdaNUlpQTZJSFJ5ZFdVc0lDSjJhV1YzSWlBNklIUnlkV1VzSUNKamNtVmhkR1VpSURvZ2RISjFaU0I5SUgwc0lIc2dJa1JoZEdFZ1EyOXVibVZqZEdsdmJuTWlJRG9nZXlBaWJXOWthV1o1SWlBNklIUnlkV1VzSUNKMmFXVjNJaUE2SUhSeWRXVXNJQ0pqY21WaGRHVWlJRG9nZEhKMVpTQjlJSDBzSUhzZ0lrWnBaV3hrYzNSdmNtVWlJRG9nZXlBaWJXOWthV1o1SWlBNklIUnlkV1VzSUNKMmFXVjNJaUE2SUhSeWRXVXNJQ0pqY21WaGRHVWlJRG9nZEhKMVpTQjlJSDBnWFNCOUlGMD0iLCJpc3MiOiJGSVJFU0hPVFNfQVBQTElDQVRJT04iLCJncm91cHMiOltdLCJzZXNzaW9uX2lkIjoyNjI1OTI2NjAsInRpbWVab25lIjoiQXNpYS9Lb2xrYXRhIiwiZXhwIjoxNjQxMjk2MzUzLCJ1c2VySWQiOiJTRzI3MDYifQ.Ax9TIsPaZBPExINNcgx8nUNlYtdTTLgqqWr9BBsZZsKOaS8JiXRpMt_p6ulH7T2HP3x6oYG3woVIF1upL0QIpOZCU_6CwkHlYxPf4S3s6eyzHaUEj5kKFswSDrrSx5eutxhhgUbACU-2tj-9ZzZuFOy-53a3XVRKrkgYG8v3RcLdxAb-ubww7Uwd57KoyE_TuYo7myQ62jij-d9Fa0gr2VBxmytKe3QlEcPi92X7RvHKLIywNXLxKgPfTwgXwJBcVSM-AppcJHYz2dCRpqzi2Y3PtMVAYdLvPn_qJfqwf72-I8b-bQvgCqDa8wXAcGM9nqRbFnXRp_7XHwQkzLrnWg" \
--conf spark.driver.args="1495 1" \
--conf spark.nabu.fireshots_url="https://dev-nabu.modak.com:8061/fireshots/nabu/sel/sq/manageVaultCredentials/selectCredentials" \
--conf spark.ui.enabled=false