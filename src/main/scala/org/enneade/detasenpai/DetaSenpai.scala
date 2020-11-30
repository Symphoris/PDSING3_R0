package org.enneade.detasenpai

import java.util.Properties

import com.mongodb.spark.MongoSpark
import org.apache.spark.sql.{SaveMode, SparkSession}
import org.apache.log4j.{Level, Logger}
import org.apache.spark.sql.types.DateType

import org.mongodb.scala._


case class Person(name: String, age: Int)
object DetaSenpai {


  def main(args: Array[String]): Unit = {
    Logger.getLogger("org").setLevel(Level.OFF)
    /*val usernamePostgre = "admin"
    val passwordPostgre = "postgres123"
    val hostPostgre = "172.31.249.242"
    val databasePostgre = "deta_senpai"*/

    val spark = SparkSession.builder()
      .master("local")
      .appName("MongoSparkConnectorIntro")
      .config("spark.mongodb.input.uri", "mongodb://localhost:27017/mydb.residents")
      .config("spark.mongodb.input.readPreference.name", "secondaryPreferred")
      .config("spark.mongodb.output.uri", "mongodb://127.0.0.1/mydb.residents")
      .getOrCreate()
    import com.mongodb.spark._
    val df = MongoSpark.load(spark)
    df.show()
    import org.apache.spark.sql.functions._
    val dbProperties = new Properties()
    dbProperties.put("user","postgres")
    dbProperties.put("password", "toto")
    val df0 = df.drop("_id")
    val dfpermute =df0.select("last_name","first_name","gender","birth_date","entry_date","exit_date")
    val df1 = dfpermute.withColumn("birth_date", col("birth_date").cast(DateType))
      .withColumn("entry_date", col("entry_date").cast(DateType))
      .withColumn("exit_date", col("exit_date").cast(DateType))
    df1.printSchema()
    val df2 = df1.write.mode("append")
    df2.jdbc("jdbc:postgresql://localhost:5432/Vhome","residents", dbProperties)


  }

}
