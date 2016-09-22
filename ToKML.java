/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
/**
 *
 * @author Hongwei Xie
 * @version 1.3
 */
public class ToKML {
    // hash map to store spy id and new location
    private HashMap<String, String> spylocation = new HashMap<String, String>();
    // printwriter to write file
    PrintWriter writer;
    /**
     * constructor method which writes the original kml file storing the location of 3 spy and commander
     * @throws FileNotFoundException
     * @throws UnsupportedEncodingException 
     */
    public ToKML() throws FileNotFoundException, UnsupportedEncodingException {
        // put all spy and commander id and location in the hash map
        spylocation.put("seanb", "-79.945289,40.44431,0.00000");
        spylocation.put("jamesb", "-79.945389,40.444216,0.00000");
        spylocation.put("joem", "-79.945389,40.444216,0.00000");
        spylocation.put("mikem", "-79.945389,40.444216,0.00000");
        /**
         * write the title part of the kml file
         */
        writer = new PrintWriter("SecretAgents.kml", "UTF-8");
        writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>");
		writer.println("<kml xmlns=\"http://earth.google.com/kml/2.2\">");
		writer.println("<Document>");
		writer.println("<Style id=\"style1\">");
		writer.println("<IconStyle>");
		writer.println("<Icon>");
		writer.println("<href>http://maps.gstatic.com/intl/en_ALL/mapfiles/ms/micons/blue-dot.png</href>");
		writer.println("</Icon>");
		writer.println("</IconStyle>");
		writer.println("</Style>");
		/**
		 * use for loop to write all crimes in placemarks 
		 */
		for(String key: spylocation.keySet()){
			/*
			 * using split to fill offense, street, lat and long 
			 */
			String spyid = key;
                        String[] location = spylocation.get(key).split(",");
                        String longitude = location[0];
                        String latitude = location[1];
                        String altitude = location[2];
                        String spytype = spyid.endsWith("seanb")?"Spy Commander":"Spy";
			writer.println("<Placemark>");
			//fill the name part
			writer.println("<name>" + spyid + "</name>");
			//fill the description part
                        
			writer.println("<description>" + spytype + "</description>");
			writer.println("<styleUrl>#style1</styleUrl>");
			//fill the longitude and latitude and set height as 0
			writer.println("<Point>");
			writer.println("<coordinates>" + longitude + "," + latitude + "," + altitude + "</coordinates>");
			writer.println("</Point>");
			writer.println("</Placemark>");
		}
		/**
		 * finish writing
		 */
		writer.println("</Document>");
		writer.println("</kml>");
		writer.close();
    }
    /**
     * Method to update kml file when it receive new location
     * @param id spy id
     * @param newlocation spy location
     * @throws FileNotFoundException
     * @throws UnsupportedEncodingException 
     */
    public void updateKML(String id, String newlocation)throws FileNotFoundException, UnsupportedEncodingException{
        // put the id with new location in the hashmap it will override the old value
        spylocation.put(id, newlocation);
        // write the title of the kml file
        writer = new PrintWriter("SecretAgents.kml", "UTF-8");
        writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>");
		writer.println("<kml xmlns=\"http://earth.google.com/kml/2.2\">");
		writer.println("<Document>");
		writer.println("<Style id=\"style1\">");
		writer.println("<IconStyle>");
		writer.println("<Icon>");
		writer.println("<href>http://maps.gstatic.com/intl/en_ALL/mapfiles/ms/micons/blue-dot.png</href>");
		writer.println("</Icon>");
		writer.println("</IconStyle>");
		writer.println("</Style>");
		/**
		 * use for loop to write all crimes in placemarks 
		 */
		for(String key: spylocation.keySet()){
			/*
			 * using split to fill spy id, spy type, longitude, latitude and altitude 
			 */
			String spyid = key;
                        String[] location = spylocation.get(key).split(",");
                        String longitude = location[0];
                        String latitude = location[1];
                        String altitude = location[2];
                        String spytype = spyid.endsWith("seanb")?"Spy Commander":"Spy";
			writer.println("<Placemark>");
			//fill the name part
			writer.println("<name>" + spyid + "</name>");
			//fill the description part
                        
			writer.println("<description>" + spytype + "</description>");
			writer.println("<styleUrl>#style1</styleUrl>");
			//fill the longitude and latitude and set height as 0
			writer.println("<Point>");
			writer.println("<coordinates>" + longitude + "," + latitude + "," + altitude + "</coordinates>");
			writer.println("</Point>");
			writer.println("</Placemark>");
		}
		/**
		 * finish writing
		 */
		writer.println("</Document>");
		writer.println("</kml>");
		writer.close();
    }
}
