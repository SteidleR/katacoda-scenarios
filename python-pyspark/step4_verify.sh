if (shopt -s nullglob dotglob; f=(*).snappy.parquet; ((${#f[@]})))
then
  echo "done"
  exit 0
else
  exit 1
fi
