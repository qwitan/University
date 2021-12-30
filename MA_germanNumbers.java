
public class InGerman {

	private final static String[] EINS = {
			"",
			"ein",
			"zwei",
			"drei",
			"vier",
			"fünf",
			"sechs",
			"sieben",
			"acht",
			"neun"
	};

	private final static String[] ZEHNS = {
			"zehn",
			"elf",
			"zwölf",
			"dreizehn",
			"vierzehn",
			"fünfzehn",
			"sechzehn",
			"siebzehn",
			"achtzehn",
			"neunzehn"

	};


	private final static String[] ZIG = {
			"",
			"",
			"zwanzig",
			"dreißig",
			"vierzig",
			"fünfzig",
			"sechzig",
			"siebzig",
			"achtzig",
			"neunzig"
	};

	public static String inGerman(int number) {

		if (number == 0) {
			return "null";
		}
		String sNumber = inGermanCall(number);
		if (number % 100 == 1 && number < 999999 && number > 0) {
			sNumber += "s";
		}
		return sNumber;
	}

	public static String inGermanCall(int number) {

		if (number < 0) {
			return "<<<unbekannt>>>";

		} else if (number <= 99) {
			return withinHundert(number);

		} else if (number <= 999) {
			return withinTausend(number);

		} else if (number <= 999999) {
			return withinMillion(number);
		}
		return "<<<unbekannt>>>";
	}

	private static String withinHundert(int number) {

		if (number <= 9) {
			return EINS[number];

		} else if (number < 20) {
			return ZEHNS[number % 10];

		} else if (number % 10 == 0) {
			return ZIG[number / 10];

		}
		return EINS[number % 10]
				+ "und" +
				ZIG[number / 10];
	}


	private static String withinTausend(int number) {

		return EINS[number / 100]
				+ "hundert" +
				withinHundert(number % 100);
	}

	private static String withinMillion(int number) {

		int tempNumber = number / 1000;

		if (tempNumber <= 99) {
			return inGermanCall(number / 1000) + "tausend" + ((number % 1000 > 0) ? "" + inGermanCall(number % 1000) : "");
		}
		else if (tempNumber <= 999) {
			return inGermanCall(number / 1000) + "tausend" + ((number % 1000 > 0) ? "" + inGermanCall(number % 1000) : "");
		}
		else if (number <= 999999) {
			return inGermanCall(number / 1000) + "tausend" + ((number % 1000 > 0) ? "" + inGermanCall(number % 1000) : "");
		}
		else return "<<<unbekannt>>>";
	}

}