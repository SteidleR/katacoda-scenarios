if (shopt -s nullglob dotglob; f=(*).snappy.parquet; ((${#f[@]})))
then
  echo "done"
  exit 0
fi

exit 1