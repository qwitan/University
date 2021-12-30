//CTS2: Vasquez, Christian (3138493)
package code;

import java.util.TreeMap;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;

public class Huffman {

	public static Code generateHuffmanCode(Code c) 
	{   
		if (c.size() < 1)
			throw new IllegalArgumentException(); //control error flow when size is less than one

		List<HuffmanNode> baum = new ArrayList<>();  //Creating a List of type Integer using ArrayList  
		TreeMap<String, Double> charRep = new TreeMap<>();

		for (int i =0; i < c.size(); i += 1) // fills up the queue with data from c; clear enco
		{
			charRep.put(c.getAt(i).getSymbol(), c.getAt(i).getProbability());
			if(c.getAt(i).getProbability() == 1) 
			{
				c.getAt(i).setEncoding("0");
				return c;
			}
		}
		for (int i = 0; i < c.size(); i += 1)
			baum.add(new HuffmanNode(c.getAt(i).getSymbol(), c.getAt(i).getProbability()));

		HuffmanNode root =  combine(baum);

		TreeMap<String, String> codes = new TreeMap<>();
		for (String n : charRep.keySet()) 
		{
			codes.put(n, root.item(n, ""));

			c.getBySymbol(n).setEncoding(root.item(n, ""));
		}
		return c;
	}
	private static HuffmanNode combine(List <HuffmanNode> list)
	{

		while (list.size() > 1) 
		{
			Collections.sort(list);
			HuffmanNode links = list.remove(0); //removes elements at the specified index
			HuffmanNode rechts = list.remove(0); //
			HuffmanNode eltern = new HuffmanNode(links, rechts, links.probability + rechts.probability);
			list.add(eltern);
		}
		return list.get(0);  // obtain element of set; !list_or_set.isEmpty()
	}

	public static class HuffmanNode implements Comparable<HuffmanNode> 
	{

		private HuffmanNode links;
		private HuffmanNode rechts;
		private String symbol;      // defined Zeichen
		private double probability; // defined Wahrscheinlichkeit

		public HuffmanNode(String symbol, double probability){
			this.symbol = symbol;
			this.probability = probability;
		}
		public HuffmanNode(HuffmanNode links, HuffmanNode rechts, double probability)
		{
			this.links = links;
			this.rechts = rechts;
			this.probability = probability;
		}
		public String getSymbol()
		{
			return symbol;
		}
		public double getProbability()
		{
			return probability;
		}


		public String item(String n, String m) 
		{
			if(symbol == n)
			{
				return m;
			}
			else
			{
				if(links != null)
				{
					String loc = links.item(n, m + "0");
					if(loc != null)
					{
						return loc;
					}
				}
				if(rechts != null)
				{
					String loc = rechts.item(n, m + "1");
					if(loc != null)
					{
						return loc;
					}
				}
			}
			return null;
		}
		@Override
		public int compareTo(HuffmanNode other) //compares two strings lexicographically
		{ 
			if(other == null)
				return -1;
			return Double.compare(probability, other.probability);
		}
	}
}