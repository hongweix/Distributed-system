/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Hongwei Xie
 * @version 1.3
 */
import java.net.*;
import java.io.*;

public class TCPSpyUsingTEAandPasswords {
    public static void main(String args[]) {
        // new socket
        Socket s = null;
        // string to store symmetric key
        String spysymmetrickey;
        // string to store spy id
        String spyid;
        // string to store password
        String spypassword;
        // string to store spy location
        String spylocation;
        // string to store clear text
        String cleartext;
        try {
            // server port
            int serverPort = 7896;
            // instantiate a new socket
            s = new Socket("127.0.0.1", serverPort);
            // input stream
            DataInputStream in = new DataInputStream(s.getInputStream());
            // output stream
            DataOutputStream out = new DataOutputStream(s.getOutputStream());
            // new buffered reader to read input stream
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            System.out.println("Enter symmetric key for TEA (taking first sixteen bytes): ");
            // store symmetric key
            spysymmetrickey = br.readLine();
            System.out.print("Enter your ID: ");
            // store spy id
            spyid = br.readLine();
            System.out.print("Enter your Password: ");
            // store spy password
            spypassword = br.readLine();
            System.out.print("Enter your location: ");
            // store spy location
            spylocation = br.readLine();
            // close buffered reader
            br.close();
            // store cleartext
            cleartext = spyid + "," + spypassword + "," + spylocation;
            // instantiate TEA object with symmetric key
            TEA spytea = new TEA(spysymmetrickey.getBytes());
            // encrypt clear text to cypher text
            byte[] cyphertext = spytea.encrypt(cleartext.getBytes()); 
            // out write cyphertext
            out.write(cyphertext);
            // buffered reader to read reply from input stream
            BufferedReader br2 = new BufferedReader(new InputStreamReader(in));
            String reply = br2.readLine();
            // if reply is "Wrong Symmetrickey", then throw exception
            if(reply.equals("Wrong Symmetrickey")){
                Exception e = new Exception();
                throw e;
            }
            // else out print reply
            else{
                System.out.println(reply);
            }    
        } catch (UnknownHostException e) {
            System.out.println("Socket:" + e.getMessage());
        } catch (EOFException e) {
            System.out.println("EOF:" + e.getMessage());
        } catch (IOException e) {
            System.out.println("readline:" + e.getMessage());
        } catch (Exception e) {
            System.out.println("Exception: Wrong Symmetrickey.");
        }finally {
            if (s != null) {
                try {
                    s.close();
                } catch (IOException e) {
                    System.out.println("close:" + e.getMessage());
                }
            }
        }
    }
}
