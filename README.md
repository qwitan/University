# Programming 1: Java 
Java Assignments

_________________________________________________________________________________________________________________________________________________________

#Numbers in German Monitered Assignment 
-----------------------------
Translation of numbers to the German language

------------

public abstract class InGerman {

	// The method "inGerman" converts an int value to a String representation as German cardinal number word.
	// The method converts such values from a range from 0 to 999999.
	// For all other values, inGerman returns "<<<unbekannt>>>".
	// The strings returned are all lowercase and without any whitespace.
	//
	// Examples:
	// -3 ---> "<<<unbekannt>>>"
	// 0 ---> "null"
	// 1 ---> "eins"
	// 18 ---> "achtzehn"
	// 184 ---> "einhundertvierundachtzig"
	// 674 ---> "sechshundertvierundsiebzig"
	// 915 ---> "neunhundertf�nfzehn"
	// 1001 ---> "eintausendeins"
	// 4711 ---> "viertausendsiebenhundertelf"
	// 101101 --- "einhunderteintausendeinhunderteins"
	// 768434 ---> "siebenhundertachtundsechzigtausendvierhundertvierunddrei�ig"
	// 1000001 ---> "<<<unbekannt>>>"
		
	public static String inGerman(int number) {
		
		return "<<<unbekannt>>>";
		
	}
}

_________________________________________________________________________________________________________________________________________________________
