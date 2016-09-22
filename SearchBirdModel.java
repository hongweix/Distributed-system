/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Hongwei Xie
 * @version 1.2
 * @since Feb 2, 2016
 */
/* 
 * This file is the Model component of the MVC, and it models the business
 * logic for the web application.  In this case, the business logic involves
 * making a request to flickr.com and then screen scraping the HTML that is
 * returned in order to fabricate an image URL.
 */
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

public class SearchBirdModel {
    private String originalTag; // The original search tag
    private String pictureTag; // The search string of the desired picture
    private String onepictureURL; // The URL of the picture image
    private String onepictureAU; // The author of the picture
    /**
     * Arguments.
     *
     * @param searchTag The tag of the photo to be searched for.
     */
    public void doFlickrSearch(String searchTag) {
        originalTag = searchTag;
        //if searchTag contains " "
        if(searchTag.contains(" ")){
            //if searchTag contains "'s", pictureTag equals searchTag replace "'s" with "%27s+"
            if(searchTag.contains("'s")){
                pictureTag = searchTag.replace("'s ", "%27s+");
            }
            //else pictureTag equals searchTag replace " " with "+"
            else{
                pictureTag = searchTag.replace(" ", "+");
            }
        }
        //else pictureTag equals searchTag
        else{
            pictureTag = searchTag;
        }
        String response = "";
        // Create the URL for the desired page
        String flickrURL = "http://nationalzoo.si.edu/scbi/migratorybirds/featured_photo/bird.cfm?pix=" + pictureTag;
        // store all things in of that url in the response
        response = fetch(flickrURL);

        /*
         * Find the picture URL and author and store them in two array list
         *
         * Screen scraping is an art that requires looking at the HTML
         * that is returned creatively and figuring out how to cut out
         * the data that is important to you.
         * 
         */
        ArrayList<String> pictureURL = new ArrayList<String>();
        ArrayList<String> pictureAU = new ArrayList<String>();
        //cutLeft and cutRight used to get substring
        int cutLeft =0;
        int cutRight = 0;
        //while there is still picture url
        while(response.indexOf("src=\"https://ids", cutLeft)!=-1){
           /**
            * cut the picture url and add it to pictureURL array list
            */
           cutLeft = response.indexOf("src=\"https://ids", cutRight);
           cutLeft += 5;
           cutRight = response.indexOf("\"", cutLeft);
           pictureURL.add(response.substring(cutLeft, cutRight));
           /**
            * cut the author and add it to pictureAU array list
            */
           cutLeft = response.indexOf("this photographer", cutRight);
           cutLeft += 19;
           cutRight = response.indexOf("<", cutLeft);
           pictureAU.add(response.substring(cutLeft, cutRight));   
        }; 
        //randomly generate the index
        int index = (int)(Math.random()*pictureURL.size());
        //randomly choose one picture url
        onepictureURL = pictureURL.get(index);
        //randomly choose on author
        onepictureAU = pictureAU.get(index);
    }

    /*
     * Return a URL of an image of appropriate size
     * and author of this image
     * Arguments
     * @param picsize The string "mobile" or "desktop" indicating the size of
     * photo requested.
     * @return The URL an image of appropriate size.
     */
    public String interestingPictureSize(String picsize) {
        //find the size controller 
        int finalDot = onepictureURL.indexOf("max_h");
        int finalDot2 = onepictureURL.indexOf("&id");
        //according to user type choose the size, max_w=250 for mobile
        //max_w=500 for desktop
        String sizeLetter = (picsize.equals("mobile")) ? "max_w=250" : "max_w=500";
        /*
         * return the adjusted picture url and author
         */
        return (onepictureURL.substring(0, finalDot)+sizeLetter+onepictureURL.substring(finalDot2)+"\t"+onepictureAU);
    }

    /*
     * Return the picture tag.  I.e. the search string.
     * 
     * @return The tag that was used to search for the current picture.
     */
    public String getPictureTag() {
        return (originalTag);
    }
    
    
    
    /*
     * Make an HTTP request to a given URL
     * 
     * @param urlString The URL of the request
     * @return A string of the response from the HTTP GET.  This is identical
     * to what would be returned from using curl on the command line.
     */
    private String fetch(String urlString) {
        String response = "";
        try {
            URL url = new URL(urlString);
            /*
             * Create an HttpURLConnection.  This is useful for setting headers
             * and for getting the path of the resource that is returned (which 
             * may be different than the URL above if redirected).
             * HttpsURLConnection (with an "s") can be used if required by the site.
             */
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            // Read all the text returned by the server
            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
            String str;
            // Read each line of "in" until done, adding each to "response"
            while ((str = in.readLine()) != null) {
                // str is one line of text readLine() strips newline characters
                response += str;
            }
            in.close();
        } catch (IOException e) {
            System.out.println("Eeek, an exception");
            // Do something reasonable.  This is left for students to do.
        }
        return response;
    }
}

