package com.mmm.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;

public class TextUtil {

	public static String newSysID() {
		Random r = new Random();
		int r1 = r.nextInt(90000) + 10000;
		int r2 = r.nextInt(90000) + 10000;
		int r3 = r.nextInt(90000) + 10000;
		String id = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar
				.getInstance().getTime());
		id = id + r1 + r2 + r3;
		return id;
	}

}
