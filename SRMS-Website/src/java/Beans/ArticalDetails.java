package Beans;
public class ArticalDetails {
    String id, title, content,aboutArticle,articleLink;

    public ArticalDetails(String id, String title,String content,String aboutArticle, String articleLink) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.aboutArticle = aboutArticle;
        this.articleLink = this.articleLink;
    }

    public String getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public String getAboutArticle() {
        return aboutArticle;
    }

    public String getArticleLink() {
        return articleLink;
    }
    
        
}
