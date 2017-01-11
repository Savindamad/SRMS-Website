
package Beans;
public class PromotionDetails {
    String id,title,description,imagePath;

    public PromotionDetails(String id, String title,String description,String imagePath) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.imagePath = imagePath;
    }

    public String getId() {
        return id;
    }
    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getImagePath() {
        return imagePath;
    }
    
}
