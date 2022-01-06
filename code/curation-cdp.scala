import scala.util.{Failure, Success, Try}

Try {
  import com.github.music.of.the.ainur.almaren.builder.Core.Implicit;
  import com.github.music.of.the.ainur.almaren.Almaren;
  
  val almaren = Almaren("Curation")
  val args = sc.getConf.get("spark.driver.args").split("\\s+")
  val path = args(0).toString
  
  almaren.builder.sourceSql(
    """SELECT * from nabu_test.st_source_db_chembl_action_type""".stripMargin).batch.write.format("parquet").mode("overwrite").option("path", path).save();
} match {
  case Success(s) => {
    sys.exit(0)
  }
  case Failure(f) => {
    println(f)
    sys.exit(1)
  }
}
