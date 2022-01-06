import scala.util.{Failure, Success, Try}

Try {
  import com.github.music.of.the.ainur.almaren.builder.Core.Implicit;
  import com.github.music.of.the.ainur.almaren.Almaren;
  import com.modak.common.credential.Credential
  import com.modak.common._
  import org.apache.spark.sql.SaveMode

  val args = sc.getConf.get("spark.driver.args").split("\\s+")
  val token = sc.getConf.get("spark.nabu.token")
  val cred_id = args(0).toInt
  val cred_type = args(1).toInt
  val endpoint = sc.getConf.get("spark.nabu.fireshots_url")
  val path = args(2).toString

  val CredentialResult = Credential.getCredentialData(CredentialPayload(s"$token", cred_id, cred_type, s"$endpoint"))

  val ldap = CredentialResult.data match {
    case ldap: ldap => ldap
    case _ => throw new Exception("Currently unable avalible for other credentials Types")
  }

  val user = ldap.username
  val pass = ldap.password

  val almaren = Almaren("nabu-curation");
  almaren.builder.sourceJdbc("jdbc:postgresql://w3.training5.modak.com:5432/training", "org.postgresql.Driver",
    """SELECT
      |"emp_id" as "emp_id",
      | emp_name::text as employee_name,
      | "age" as "age",
      | from tr5."demo2"""".stripMargin,
    Some(user), Some(pass), Map("fetchsize" -> "5000")).sql
    .targetJdbc("jdbc:postgresql://w3.training5.modak.com/training_2021","org.postgresql.Driver", "tr5.Curation1", SaveMode.Overwrite, Some(user),Some(pass),Map("batchsize"->"5000")).batch
} match {
  case Success(s) => {
    sys.exit(0)
  }
  case Failure(f) => {
    println(f)
    sys.exit(1)
  }
}
