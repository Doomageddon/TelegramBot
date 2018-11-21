package parsing;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import entity.Item;
import sql.MySQLAccess;

public class JsoupParser {

	public void parse() {
		Document doc;
		try {
			doc = Jsoup.connect("https://www.atbmarket.com/hot/akcii/economy/").get();
			Elements selectedTitle = doc.select("span.promo_info_text");
			Elements selectedPriceGrn = doc.select("div.promo_price");
			Elements selectedPriceKop = doc.select("div.promo_price > span:not(span.currency)");
			Elements selectedUrl = doc.select("img.lazyModal");
			MySQLAccess mySQL = new MySQLAccess();
			mySQL.truncate();
			for (int i = 0; i < selectedUrl.size(); i++) {
				Element title = selectedTitle.get(i);
				Element priceStringGrn = selectedPriceGrn.get(i);
				Element priceStringKop = selectedPriceKop.get(i);
				Element url = selectedUrl.get(i);
				String priceGrn = priceStringGrn.text().substring(0, priceStringGrn.text().length() - 6);
				int discount = Integer
						.parseInt(correctDiscountList().get(i).substring(0, correctDiscountList().get(i).length() - 1));
				Item item = new Item(title.text(), discount, Integer.parseInt(priceGrn),
						Integer.parseInt(priceStringKop.text()), Double.parseDouble(correctOldPriceList().get(i)),
						url.attr("abs:data-src"));
				mySQL.save(item);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static List<String> correctOldPriceList() throws IOException {
		List<String> oldPriceList = new ArrayList<String>();
		Document doc = Jsoup.connect("https://www.atbmarket.com/hot/akcii/economy/").get();
		Elements selectedOldPrice = doc.select("div.price_box.small_box.red_box.floated_right > span.promo_old_price");
		for (Element oldPrice : selectedOldPrice) {
			if (oldPrice.text().isEmpty()) {
				oldPriceList.add("0");
			} else {
				oldPriceList.add(oldPrice.text());
			}
		}
		return oldPriceList;
	}

	public static List<String> correctDiscountList() throws IOException {
		List<String> discountList = new ArrayList<String>();
		Document doc = Jsoup.connect("https://www.atbmarket.com/hot/akcii/economy/").get();
		Elements box = doc.select("div.price_box.small_box.red_box.floated_right");
		Elements selectedDiscount = doc
				.select("div.price_box.small_box.red_box.floated_right span:eq(1):not(span.currency)");
		for (int i = 0; i < selectedDiscount.size(); i++) {
			if (box.get(i).text().length() < 15) {
				discountList.add("0000");
			} else {
				Element discount = selectedDiscount.get(i);
				discountList.add(discount.text());
			}
		}
		return discountList;
	}
}
