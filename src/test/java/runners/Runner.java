package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = "step_definitions",
        tags = "@datatable",
        snippets = CucumberOptions.SnippetType.CAMELCASE,
        plugin = {"json:target/report.json", "rerun:target/rerun.txt"},
        //location and name
        // I can update and do same in another file
         dryRun = true
        //check all the scenario had implementation or not
)

public class Runner {

}


