host="fabmedical-581234.mongo.cosmos.azure.com"
username="fabmedical-581234"
password="t6i4EEerBOHTd35MEcm8MvE5G3BEshhIy2PDJsztlBMqrYqapIRqeoltFIRetNOeWwlhwuULkMF7YnC9GrT2hA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname -u $username -p $password --ssl --sslAllowInvalidCertificates --eval 'db.sessions.insert({"title":"Perf Test"})' &
done