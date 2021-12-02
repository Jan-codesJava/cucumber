package step_definitions;


import io.cucumber.java.After;
import io.cucumber.java.Before;
import utils.Driver;

import java.time.Duration;
import java.util.concurrent.TimeUnit;


public class Hooks {

    @Before
    public void setup(){
        System.out.println("Setting up driver");
        Driver.getDriver().manage().timeouts().implicitlyWait(Duration.ofSeconds(5));

    }
    @After
    public void cleanup(){
        System.out.println("Cleaning up test data");
    }
}
