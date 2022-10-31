wget http://snap.stanford.edu/data/amazon/productGraph/kcore_5.json.gz
wget http://snap.stanford.edu/data/amazon/productGraph/metadata.json.gz
wget http://snap.stanford.edu/data/amazon/productGraph/categoryFiles/reviews_Musical_Instruments_5.json.gz

echo 'Data descargada'

gzip -d metadata.json.gz
gzip -d kcore_5.json.gz
gzip -d reviews_Musical_Instruments_5.json.gz

echo 'Data descomprimida'

mv metadata.json productos_raw.json
mv kcore_5.json reviews_raw.json
mv reviews_Musical_Instruments_5.json test_raw.json

echo 'Data renombrada'

hdfs dfs -mkdr ../data
hdfs dfs -moveFromLocal /home/common/productos_raw.json ../data
hdfs dfs -moveFromLocal /home/common/reviews_raw.json ../data
hdfs dfs -moveFromLocal /home/common/test_raw.json ../data

echo 'Data movida a Hadoop'

