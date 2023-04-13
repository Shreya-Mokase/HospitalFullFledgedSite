import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

import javax.net.ssl.HttpsURLConnection;

public class SmsGateway {
	public static void sendConfirmationSMS(String message,String number) {
		try
		{

			String apiKey="bgDrf5kzNAqZevwyt0USdna1TGC3cXMB9VlhjiL8OpJoR6xmPKpIWEXUBlwPgL8a5qC1m4ZdMiThnuQs";
			String sendId="FTWSMS";
			message=URLEncoder.encode(message, "UTF-8");
			String myUrl=" https://www.fast2sms.com/dev/bulkV2?authorization=bgDrf5kzNAqZevwyt0USdna1TGC3cXMB9VlhjiL8OpJoR6xmPKpIWEXUBlwPgL8a5qC1m4ZdMiThnuQs&route=q&message="+message+"&language=english&flash=0&numbers="+number+"";
			URL url=new URL(myUrl);
			HttpsURLConnection con=(HttpsURLConnection)url.openConnection();
			con.setRequestMethod("GET");		  
			con.setRequestProperty("cache-control", "no-cache");
			int code=con.getResponseCode();
			System.out.println("Response code : "+code);
			StringBuffer response=new StringBuffer();
			BufferedReader br=new BufferedReader(new
					InputStreamReader(con.getInputStream()));
			while(true) { String line=br.readLine(); if(line==null) { break; }
			response.append(line); }
			System.out.println(response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
