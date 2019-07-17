package starwars

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._

import scala.concurrent.duration._

class KarateSimulation extends Simulation {

  val protocol = karateProtocol()
  val scn = scenario("Gatling Test").exec(karateFeature("classpath:starwars/Dojo.feature"))

  setUp(
    scn.inject(rampUsers(10) over (20 seconds)).protocols(protocol)
  )
}