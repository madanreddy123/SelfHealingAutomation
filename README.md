import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;

public class IframeTextValidation {
    public static void main(String[] args) {
        WebDriver driver = new ChromeDriver();

        driver.get("https://example.com");

        // Step 1: Switch to the iframe (by index, name/id, or WebElement)
        driver.switchTo().frame("iframeNameOrId"); // Or: driver.switchTo().frame(0);

        // Step 2: Locate the element inside the iframe
        WebElement element = driver.findElement(By.id("elementId"));

        // Step 3: Get the text and validate
        String actualText = element.getText();
        String expectedText = "Expected Text";

        Assert.assertEquals(actualText, expectedText, "Text does not match!");

        // Step 4: Switch back to the main page (optional)
        driver.switchTo().defaultContent();

        driver.quit();
    }
}