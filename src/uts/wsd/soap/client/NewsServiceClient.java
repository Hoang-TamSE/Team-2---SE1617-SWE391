package uts.wsd.soap.client;

import java.rmi.RemoteException;
import java.util.Calendar;
import java.util.Scanner;

import javax.xml.rpc.ServiceException;

public class NewsServiceClient {

	public static void main(String[] args) {
		try {
			NewsServiceSOAPServiceLocator locator = new NewsServiceSOAPServiceLocator();
			NewsServiceSOAP newsService = locator.getNewsServiceSOAPPort();
			printInstructions(newsService);
			String input;
			Scanner scanner = new Scanner(System.in);
			while (scanner.hasNextLine()) {
				input = scanner.nextLine();
				if (input.equals("exit")) {
					break;
				}
				long id = Long.parseLong(input);
				Article article = newsService.deleteArticle(id);
				if (article != null) {
					System.out.println("article \"" + article.getTitle()
							+ "\" successfully deleted!");
				} else {
					System.out.println("article with id " + id + " not found.");
				}
				printInstructions(newsService);
			}
			scanner.close();
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private static void printInstructions(NewsServiceSOAP newsService)
			throws RemoteException {
		if (newsService.getArticles().getArticles().length > 0) {
			System.out.println(articlesToString(newsService.getArticles()));
		} else {
			System.out.println("No articles found.");
		}
		System.out.print("Enter ID to delete article: ");
	}

	private static String articlesToString(Articles articles) {
		String result = "";
		for (Article article : articles.getArticles()) {
			result += articleToString(article) + "\n";
		}
		return result;
	}

	private static String articleToString(Article article) {
		return "Article [id=" + article.getId() + ", title="
				+ article.getTitle() + ", publishedDate="
				+ article.getPublishedDate().get(Calendar.DAY_OF_MONTH) + "/"
				+ article.getPublishedDate().get(Calendar.MONTH) + "/"
				+ article.getPublishedDate().get(Calendar.YEAR) + ", author="
				+ article.getAuthor().getName() + ", category="
				+ article.getCategory() + ", shortText="
				+ article.getShortText() + ", text=" + article.getText()
				+ ", publicallyVisible=" + article.getPublicallyVisible() + "]";
	}

}
