package com.yezic.com.util;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import javax.print.Doc;
import javax.print.DocFlavor;
import javax.print.DocPrintJob;
import javax.print.PrintService;
import javax.print.PrintServiceLookup;
import javax.print.SimpleDoc;

public class TicketPrintUtil {

	// web调用打印
	public static void doPrint(int index, String bf) {
		try {
			DocFlavor flavor = DocFlavor.INPUT_STREAM.AUTOSENSE;

			// 使用默认打印机，如果默认打印机不是POS打印机，请通过名称查找。
			PrintService printer = PrintServiceLookup.lookupDefaultPrintService();
			
			// job
			DocPrintJob job = printer.createPrintJob();
			byte[] buf = bf.getBytes();
			InputStream stream = new ByteArrayInputStream(buf);
			Doc doc = new SimpleDoc(stream, flavor, null);

			// print
			job.print(doc, null);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 充值打印(打印模板)(打印机下标,卡号,操作卡号,余额,充值,搭膳,实际充值)
	public static void czPrint(int index, String cardNo, String opCardNo, String cm, String m1, String m2, String m3) {
		StringBuffer bf = new StringBuffer();
		bf.append("               充值回单 　　　　　　\n");
		bf.append("----------------------------------------\n");
		bf.append("卡号:" + cardNo + "\n");
		bf.append("充值金额:" + m1 + ",搭膳费:" + m2 + ",实际充值:" + m3 + "\n");
		bf.append("充值时间:2009-08-02 10:10:10\n");
		bf.append("操作员卡号:" + opCardNo + "\n");
		bf.append("打印时间:2009-08-02 10:10:10\n");
		bf.append("----------------------------------------\n");
		bf.append("卡上余额:" + cm + "\n\n\n\n\n\n\n");
		doPrint(index, bf.toString());
	}

	public static void main(String[] args) {
		czPrint(1, "0000", "8888", "12.25", "100", "10", "90");
	}
}
