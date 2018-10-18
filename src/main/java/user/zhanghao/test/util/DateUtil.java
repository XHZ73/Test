package user.zhanghao.test.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xml.crypto.Data;

public class DateUtil {
	private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	
	//把date类型转换为String
	public static String parseToDate(Date date) throws Exception {
		String str = dateFormat.format(date);
		return str;
	}
	
	//把String类型转换为Date类型
	public static Date parseToString(String dateStr) throws Exception {
		Date date = dateFormat.parse(dateStr);
		return date;
	}

	//截取身份证号码
	public static Date getBirthdayByIdCard(String idCard) throws Exception {
		//判断给定的idCard有可能为null
		if (idCard != null) {
			String birthday = idCard.substring(6,14);
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
			return dateFormat.parse(birthday);
		}
		return null;
	}
}
