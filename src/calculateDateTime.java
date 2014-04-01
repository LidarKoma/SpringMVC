import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


// A simple constructor.
	class calculateDateTime{
		
			long diffHours;
			long diffDays;
			long diffMinutes;
	
		calculateDateTime( String dateS,String dateE,String timeS,String timeE) throws ParseException {
			  
		 String space= " ";
			
			String dateStart = dateS.concat(space).concat(timeS);
			String dateStop = dateE.concat(space).concat(timeE);
	 
			//HH converts hour in 24 hours format (0-23), day calculation
			SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy hh:mm a");
	 
			Date d1 = null;
			Date d2 = null;
	
			
				d1 = format.parse(dateStart);
				d2 = format.parse(dateStop);
	 
				//in milliseconds
				long diff = d2.getTime() - d1.getTime();
	 
				//long diffSeconds = diff / 1000 % 60;
				//long diffMinutes = diff / (60 * 1000) % 60;
				long day=24 * 60 * 60 * 1000;
				long hour=60 * 60 * 1000;
				long minute =(60 * 1000);
				long hourDiff = diff - day;
				long minuteDiff= hourDiff-hour;
				diffHours = hourDiff / (60 * 60 * 1000) % 24;
				diffDays = diff / (24 * 60 * 60 * 1000);
				diffMinutes = minuteDiff / (60 * 1000) % 60;
				//System.out.print(diffDays + " days, ");
				//System.out.print(diffHours + " hours, ");
				//System.out.print(diffMinutes + " minutes, ");
		
		
	
		}
	   
	}