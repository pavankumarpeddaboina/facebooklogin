package selenium;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Facebook {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		
		WebDriver driver = new ChromeDriver();
		
		driver.get("https://www.facebook.com/");
		driver.getCurrentUrl();
		System.out.println(driver.getCurrentUrl());
		
		driver.findElement(By.id("email")).sendKeys("sss@gmail.com");
		Thread.sleep(2000);
		driver.findElement(By.xpath("//input[@type='password']")).sendKeys("1234567");
		Thread.sleep(2000);
		
		driver.findElement(By.cssSelector("button[name='login']")).click();
		Thread.sleep(2000);
		
		//driver.close();

	}

}



package selenium;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class Facebook {
	
	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		
		WebDriverManager.chromedriver().setup();
		 WebDriver driver = new ChromeDriver();
		
		driver.get("https://www.facebook.com/");
		driver.getCurrentUrl();
		System.out.println(driver.getCurrentUrl());
	
		highlight(driver, driver.findElement(By.id("email")));
		driver.findElement(By.id("email")).sendKeys("sss@gmail.com");
		Thread.sleep(2000);
		driver.findElement(By.xpath("//input[@type='password']")).sendKeys("1234567");
		Thread.sleep(2000);
		
	System.out.println(driver.findElement(By.xpath("//h2[@class='_8eso']")).getText());
		
		driver.findElement(By.cssSelector("button[name='login']")).click();
		Thread.sleep(2000);
		
		//driver.close();
		//.sendKeys("sss@gmail.com");		  
	}

   public static void highlight(WebDriver driver, WebElement element) {
	JavascriptExecutor jsExecutor = (JavascriptExecutor) driver;
	jsExecutor.executeScript("arguments[0].setAttribute('style', 'border:2px solid red; background:yellow');",element);

}

}

