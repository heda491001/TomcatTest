package com.runoob.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class Printer {
	public static void print(HttpServletResponse response, String... txt) throws IOException {
		PrintWriter out= response.getWriter();
		for (String string : txt) {
			out.println(string);
		}
	}
	public static void outprint(HttpServletResponse response, String docType, String title) throws IOException {
		response.getWriter()
				.println(docType + "<html>\n" + "<head><title>" + title + "</title></head>\n"
						+ "<body bgcolor=\"#f0f0f0\">\n" + "<h1 align=\"center\">" + title + "</h1>\n"
					);
	}
	
	public static void printExcel(HttpServletResponse response, String... items) throws IOException {
		print(response,"<tr>\n");
		for (String item : items) {
				print(response,"  <td>",item,"</td>\n");
			}
		print(response,"</tr>\n");
	}
}
