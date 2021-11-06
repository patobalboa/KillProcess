  
  if[$1!=null];then
    process=`ps -fe |grep "$1" |grep -v grep`
    echo "MATANDO $process"
    for PROCESO in `echo "$process" | awk '{ print $2 }'`
          do
              proc_name=`echo "$process" | grep $PROCESO`;
              kill -9 "$PROCESO";
              echo "Killed: $proc_name"
          done;
  else{
    echo "ERROR: Falta un valor agregado. \nTienes que agregar una Cadena Identificadora, por ejemplo:\n         sh KillProcess.sh procesos.php"
  }