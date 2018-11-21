package json;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import entity.Item;
import sql.MySQLAccess;

public class JsonCreator {

	private List<String> jsonList;

	public void create() {

		MySQLAccess mySQL = new MySQLAccess();
		List<String> jsonList = new ArrayList<String>();
		for (Item item : (List<Item>) mySQL.get()) {
			ObjectMapper mapper = new ObjectMapper();
			String json;
			try {
				json = mapper.writeValueAsString(item);
				jsonList.add(json);
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}
		}
		setJsonList(jsonList);

	}

	public List<String> getJsonList() {
		return jsonList;
	}

	public void setJsonList(List<String> jsonList) {
		this.jsonList = jsonList;
	}

}