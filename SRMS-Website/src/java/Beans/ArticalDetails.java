package Beans;
public class ArticalDetails {
    String id, title, content;

    public ArticalDetails(String id, String title,String content) {
        this.id = id;
        this.title = title;
        this.content = content;
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
        
}
