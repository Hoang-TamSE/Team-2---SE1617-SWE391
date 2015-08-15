package uts.wsd.rest.client;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.core.util.MultivaluedMapImpl;

public class LipsumClient {

	public static final String PARAGRAPHS = "paragraphs", WORDS = "words",
			BYTES = "bytes", LISTS = "lists";
	private static final String URL = "http://www.lipsum.com/feed/xml";

	public static String getText(int amount, String type) {
		Client client = Client.create();
		WebResource resource = client.resource(URL);
		MultivaluedMap<String, String> params = new MultivaluedMapImpl();
		// ?amount=5&apm;what=paras&start=0"
		params.add("amount", String.valueOf(amount));
		params.add("what", type);
		params.add("start", "yes");
		ClientResponse response = resource.queryParams(params)
				.accept(MediaType.APPLICATION_XML).get(ClientResponse.class);

		int status = response.getStatus();
		if (status == 200) {
			Lipsum lipsum = response.getEntity(Lipsum.class);
			return lipsum.getLipsum();
		} else {
			System.out.println("Lipsum web service returned with status "
					+ status);
			return null;
		}
	}
}
