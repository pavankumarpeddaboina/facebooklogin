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
