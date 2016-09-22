/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.HashMap;
import java.security.MessageDigest;
import sun.misc.BASE64Encoder;
/**
 *
 * @author Hongwei Xie
 * @version 1.3
 */
public class PasswordHash {
    //string to store spy id
    private String spyid;
    //string to store spy password
    private String spypassword;
    // hashmap to store spy id and his corresponding salt
    private HashMap<String, String> idsalt = new HashMap<String, String>();
    // hashmap to store spy id and his hashed password
    private HashMap<String, String> idsaltpassword = new HashMap<String, String>();
    /**
     * constructor method
     */
    public PasswordHash(){
        // put each id and his corresponding salt in the idsalt hashmap
        idsalt.put("jamesb", "s01");
        idsalt.put("joem", "s02");
        idsalt.put("mikem", "s03");
        // put each id and his corresponding hashed password
        idsaltpassword.put("jamesb", "Fn0RTeEz/wg49lIdoqQ05w==");
        idsaltpassword.put("joem", "oYQcf2jje7RqSsmnbbn/tQ==");
        idsaltpassword.put("mikem", "ll7gDCAA2/bDmUS0mV2rEA==");
    }
    /**
     * Method to check if the user input the right password
     * @param id input id
     * @param password input password
     * @return true or false
     */
    public boolean isValid(String id, String password){
         // store new computed hashed value in this result 
         String result = "";
          try {
                /* Instantiate a MseesageDigest object which has a instance type the same as User's choice. */
                MessageDigest md = MessageDigest.getInstance("MD5");
                /* Update the digest using array of bytes. */
                md.update((idsalt.get(id) + password).getBytes());
                /* Completes the hash computation by performing final operations such as padding. */
                byte[] by = md.digest();
                /* Instantiate a BASE64Encoder instance. */
                BASE64Encoder be = new BASE64Encoder();
                /* Compute the base64 encode of text. */
                result = be.encode(by);
                // catch exception
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        // if this new computed result equals stored hash value return true
        if(idsaltpassword.get(id).equals(result)){
            return true;
        }
        // else if not equal then return false
        else{
            return false;
        }   
    }
}
