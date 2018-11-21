

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import org.telegram.telegrambots.ApiContextInitializer;
import org.telegram.telegrambots.meta.TelegramBotsApi;
import org.telegram.telegrambots.meta.exceptions.TelegramApiException;

import bot.Bot;
import parsing.JsoupParser;

public class App {
	public static void main(String[] args) {

		Runnable r = () -> {
			JsoupParser parser = new JsoupParser();
			parser.parse();
			System.out.println("Database was refreshed");
		};
		ScheduledExecutorService pool = Executors.newScheduledThreadPool(1);
		LocalDate date = LocalDate.of(2018, 11, 23);
		long delay = LocalDate.now().until(date, ChronoUnit.DAYS);
		pool.scheduleWithFixedDelay(r, delay, delay, TimeUnit.DAYS);

		ApiContextInitializer.init();

		TelegramBotsApi botsApi = new TelegramBotsApi();
		try {
			botsApi.registerBot(new Bot());
		} catch (TelegramApiException e) {
			e.printStackTrace();
		}
	}
}
