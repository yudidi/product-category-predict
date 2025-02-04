####基本配置
#web应用对外服务端口
server.port=8082
####日志级别
logging.level.root=INFO
logging.level.com.jinpei=INFO
logging.level.org.springframework=INFO
logging.level.org.apache.spark=WARN
### 程序内部配置
# 数据文件目录路径，包含商品名称分词自定义词典product.dict、训练数据
category.dataPath=/Users/didiyu/java/product-category-predict/data
# 机器学习模型文件目录路径
category.modelPath=/Users/didiyu/java/product-category-predict/model
# 系统启动的时候，如果模型文件不存在是否训练模型，true表示训练。
category.isTrainWhenStart=true
# spark集群master url //https://github.com/arcosx/PredictTheProduct
category.spark.masterUrl=spark://172.19.0.2:7077
# spark app名称
category.spark.appName=ProductCategoryPredict
# spark app 依赖的jar文件
category.spark.dependenceJar=/Users/didiyu/java/product-category-predict/target/product-category-predict-1.0.0-SNAPSHOT-jar-with-dependencies.jar
# spark executor内存大小，不同Spark部署方式对应的属性不同，此处是针对Standalone部署方式
#category.spark.properties.spark.executor.memory=4g
category.spark.properties.spark.executor.memory=8g
# spark driver内存大小，不同Spark部署方式对应的属性不同，此处是针对Standalone部署方式
#category.spark.properties.spark.driver.memory=2g
category.spark.properties.spark.driver.memory=4g
# spark 任务总的CPU核数，不同Spark部署方式对应的属性不同，此处是针对Standalone部署方式
category.spark.properties.spark.cores.max=8
#spark 网络超时时间 # https://stackoverflow.com/questions/39347392/how-to-fix-connection-reset-by-peer-message-from-apache-spark
category.spark.properties.spark.network.timeout=10000000 
category.spark.properties.spark.executor.heartbeatInterval=10000000
category.spark.properties.spark.serializer=org.apache.spark.serializer.KryoSerializer
category.spark.properties.spark.executor.extraJavaOptions=-verbose:gc -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:-UseGCOverheadLimit
category.spark.properties.spark.driver.extraJavaOptions=-verbose:gc -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:-UseGCOverheadLimit
category.spark.sql.warehouse.dir=./tmp/spark-category