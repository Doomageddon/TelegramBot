package bot;


import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.telegram.telegrambots.bots.TelegramLongPollingBot;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;
import org.telegram.telegrambots.meta.api.methods.send.SendPhoto;
import org.telegram.telegrambots.meta.api.methods.send.SendSticker;
import org.telegram.telegrambots.meta.api.objects.Update;
import org.telegram.telegrambots.meta.api.objects.replykeyboard.ReplyKeyboardMarkup;
import org.telegram.telegrambots.meta.api.objects.replykeyboard.buttons.KeyboardButton;
import org.telegram.telegrambots.meta.api.objects.replykeyboard.buttons.KeyboardRow;
import org.telegram.telegrambots.meta.exceptions.TelegramApiException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import entity.Item;
import json.JsonCreator;

public class Bot extends TelegramLongPollingBot {

	public void onUpdateReceived(Update update) {

		if (update.hasMessage() && update.getMessage().hasText()) {
			long chatId = update.getMessage().getChatId();
			ReplyKeyboardMarkup replyKeyboardMarkup = new ReplyKeyboardMarkup();
			List<KeyboardRow> keyboardRowList = new ArrayList<>();
			KeyboardRow keyboardRow = new KeyboardRow();
			KeyboardButton keyboardButton1 = new KeyboardButton();
			KeyboardButton keyboardButton2 = new KeyboardButton();
			keyboardButton1.setText("Интересно");
			keyboardButton2.setText("Проваливай, бот");
			keyboardRow.add(keyboardButton1);
			keyboardRow.add(keyboardButton2);
			keyboardRowList.add(keyboardRow);
			replyKeyboardMarkup.setKeyboard(keyboardRowList).setSelective(true).setResizeKeyboard(true);
			SendMessage message = new SendMessage().setChatId(chatId);
			try {
				switch (update.getMessage().getText()) {
				case "/start":
					message.setText("Привет, у меня есть скидки с АТБ для тебя, интересно?")
							.setReplyMarkup(replyKeyboardMarkup);
					execute(message);
					break;
				case "Интересно":
					JsonCreator jsonCreator = new JsonCreator();
					jsonCreator.create();
					for (String jsonHolder : jsonCreator.getJsonList()) {
						ObjectMapper mapper = new ObjectMapper();
						Item jsonString;
						jsonString = mapper.readValue(jsonHolder, Item.class);
						SendPhoto photo = new SendPhoto().setChatId(chatId).setPhoto(jsonString.getUrl())
								.setReplyMarkup(replyKeyboardMarkup).disableNotification();
						if (jsonString.getDiscount() == 0 || jsonString.getOldPrice() == 0.0) {
							photo.setCaption("Назва: " + jsonString.getTitle() + "\nЦіна: " + jsonString.getPriceGrn()
									+ "." + jsonString.getPriceKop() + " грн");
						} else if (jsonString.getPriceKop() == 0) {
							photo.setCaption(
									"Назва: " + jsonString.getTitle() + "\nЕкономія: " + jsonString.getDiscount() + "%"
											+ "\nЦіна: " + jsonString.getPriceGrn() + "." + jsonString.getPriceKop()
											+ "0 грн" + "\nСтара ціна: " + jsonString.getOldPrice() + "0 грн");
						} else {
							photo.setCaption(
									"Назва: " + jsonString.getTitle() + "\nЕкономія: " + jsonString.getDiscount() + "%"
											+ "\nЦіна: " + jsonString.getPriceGrn() + "." + jsonString.getPriceKop()
											+ " грн" + "\nСтара ціна: " + jsonString.getOldPrice() + "0 грн");
						}
						execute(photo);
					}
					break;
				case "Проваливай, бот":
					InputStream stickerFile = getClass().getResourceAsStream("/image/sticker.webp");
					SendSticker sticker = new SendSticker().setChatId(chatId).setSticker("run", stickerFile)
							.setReplyMarkup(replyKeyboardMarkup);
					execute(sticker);
					break;
				default:
					message.setText("Прости, не понимаю, о чём ты(").setReplyMarkup(replyKeyboardMarkup);
					execute(message);
				}
			} catch (TelegramApiException e) {
				e.printStackTrace();
			} catch (JsonParseException e1) {
				e1.printStackTrace();
			} catch (JsonMappingException e1) {
				e1.printStackTrace();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
	}

	public String getBotUsername() {

		return "SatomerBot";
	}

	@Override
	public String getBotToken() {

		return "756285649:AAEbelr88FkA_Fo8IPS4EpajEEjVI1kwvpI";
	}

}
