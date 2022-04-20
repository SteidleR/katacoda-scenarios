if (shopt -s nullglob dotglob; f=(*).snappy.parquet; ((${#f[@]})))
then
  echo "done"
else 
  echo "not done"
fi
