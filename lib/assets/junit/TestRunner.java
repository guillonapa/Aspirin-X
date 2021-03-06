import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class TestRunner {
   public static void main(String[] args) {
      Result result = JUnitCore.runClasses(JunitTests.class);
      int runCount = result.getRunCount();
      String toReturn = "NumSuccTests:"+runCount+",";
      if(result.wasSuccessful()) {
        toReturn += runCount;
        System.out.println(toReturn);
        // System.out.println(runCount + "/" + runCount);
      } else {
        toReturn += (runCount - result.getFailureCount());
        // System.out.println(runCount - result.getFailureCount() + "/" + runCount);
        System.out.println(toReturn);
        // System.out.println("Some tests failed\n");
        // System.out.println("Number of failures: " + result.getFailureCount());
        // for (Failure failure : result.getFailures()) {
        //    System.out.println(failure.toString());
        // }
      }
   }
}
