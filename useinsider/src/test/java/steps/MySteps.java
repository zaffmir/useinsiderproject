package steps;

import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;

public class MySteps {

    private WebDriver driver;

    @Before
    public void setUp() {
        // WebDriver başlatma
        driver = new ChromeDriver();
    }

    @After("@testisFailed")
    public void tearDown(Scenario scenario) {
        // Eğer test başarısız olduysa ekran görüntüsü al
        if (scenario.isFailed()) {
            try {
                // Ekran görüntüsü al
                TakesScreenshot ts = (TakesScreenshot) driver;
                byte[] screenshot = ts.getScreenshotAs(OutputType.BYTES);
                scenario.attach(screenshot, "image/png", "screenshot");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        // Tarayıcıyı kapat
        driver.quit();
    }
}
