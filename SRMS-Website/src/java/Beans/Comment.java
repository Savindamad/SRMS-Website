package Beans;

/**
 *
 * @author savinda
 */
public class Comment {
    String commentId;
    String name;
    String comment;
    String date;

    public Comment(String commentId, String name, String comment, String date){
        this.commentId=commentId;
        this.name= name;
        this.comment = comment;
        this.date = date;
    }
    public String getCommentId() {
        return commentId;
    }

    public String getName() {
        return name;
    }

    public String getComment() {
        return comment;
    }

    public String getDate() {
        return date;
    }
    
    
    
}
