import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.time.Duration;

public class ChatbotInIframeClick {
    public static void main(String[] args) {
        WebDriver driver = new ChromeDriver();
        driver.get("https://your-website.com");

        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(20));

        try {
            // 1. Wait for the iframe to appear and switch to it
            WebElement iframe = wait.until(ExpectedConditions.presenceOfElementLocated(
                By.xpath("//iframe[contains(@src, 'chat')]") // Adjust to your iframe src or class/id
            ));
            driver.switchTo().frame(iframe);

            // 2. Wait for the chat button inside the iframe
            WebElement chatButton = wait.until(ExpectedConditions.presenceOfElementLocated(
                By.xpath("//button[contains(text(), 'Start Chat')]") // Or any XPath you verified
            ));

            // 3. Click using JavaScriptExecutor
            JavascriptExecutor js = (JavascriptExecutor) driver;
            js.executeScript("arguments[0].click();", chatButton);

            System.out.println("✅ Chat button clicked inside iframe.");

            // 4. Switch back to main content
            driver.switchTo().defaultContent();

        } catch (Exception e) {
            System.out.println("❌ Error interacting with chatbot: " + e.getMessage());
            e.printStackTrace();
        } finally {
            driver.quit();
        }
    }
}