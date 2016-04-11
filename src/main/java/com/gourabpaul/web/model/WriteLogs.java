package com.gourabpaul.web.model;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;


public class WriteLogs {
	public static void visitLogs(String ip, String url) throws IOException {
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy h:mm:ss a");
		String formattedDate = sdf.format(date);
		System.out.println(formattedDate); 
		
		File fout = new File("/online/resume/visit_logs_gp.txt");
		FileOutputStream fos = new FileOutputStream(fout,true);

		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(fos));

		bw.write("Time: "+formattedDate+" --- Ip: "+ip+" --- Url: "+url);
		bw.write("\r\n");

		bw.close();
	}
}
