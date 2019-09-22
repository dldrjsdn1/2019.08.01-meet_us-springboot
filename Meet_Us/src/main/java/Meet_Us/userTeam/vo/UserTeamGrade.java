package Meet_Us.userTeam.vo;

public class UserTeamGrade {

   private String user_id;
   // private String user_name;
   private String user_authority;
   private boolean rememberId;

   public String getUser_id() {
      return user_id;
   }

   public void setUser_id(String user_id) {
      this.user_id = user_id;
   }

   // public String getUser_name() {
   // return user_name;
   // }
   //
   // public void setUser_name(String user_name) {
   // this.user_name = user_name;
   // }

   public String getUser_authority() {
      return user_authority;
   }

   public void setUser_authority(String user_authority) {
      this.user_authority = user_authority;
   }

   public boolean isRememberId() {
      return rememberId;
   }

   public void setRememberId(boolean rememberId) {
      this.rememberId = rememberId;
   }

   @Override
   public String toString() {
      return "UserTeamGrade [user_id=" + user_id + ", user_authority=" + user_authority + ", rememberId=" + rememberId
            + "]";
   }

}