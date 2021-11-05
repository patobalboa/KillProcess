process=`ps -fe |grep 'IDENTIFY_PROCESS' |grep -v grep`
  echo "MATANDO $process"
  for PROCESO in `echo "$process" | awk '{ print $2 }'`
        do
            proc_name=`echo "$process" | grep $PROCESO`;
            kill -9 "$PROCESO";
            echo "Killed: $proc_name"
        done;