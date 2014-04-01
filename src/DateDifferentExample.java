import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
 
public class DateDifferentExample {
 
	public static void main(String[] args) throws ParseException {
		//calculateDateTime("01/14/2012", "01/18/2012","11:00:58 am","10:31:48 pm");
		calculateDateTime a = new calculateDateTime("01/14/2012", "01/18/2012","9:00 pm","10:34 pm");
	     System.out.println("diffDays: " + a.diffDays);
	     System.out.println("diffHours: " + a.diffHours);
	     System.out.println("diffMinutes: " + a.diffMinutes);
	     int totalMoney= (int) (a.diffDays *16);
	     if(a.diffHours>1)
	     {
	    	 totalMoney +=16;
	     }
	     if(a.diffHours==1 && a.diffMinutes>30)
	     {
	    	 totalMoney +=16;
	     }

System.out.println("$" +totalMoney);
	}
}