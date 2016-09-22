/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * TCPSpyUsingTEAandPasswordsAndRSA class
 * @author Hongwei Xie
 * @version 1.3
 */
import java.net.*;
import java.io.*;
import java.util.Random;
import java.math.BigInteger;

public class TCPSpyUsingTEAandPasswordsAndRSA {

    public static void main(String args[]) {
        // new socket
        Socket s = null;
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
            // string to store teakey
            String teakey = "";
            /**
             * generate a random 16 bytes array, because we need to convert it to BigInteger
             * to avoid failure we let the random range to be positive and between 0-127 
             */
            Random r = new Random();
            byte[] randombytes = new byte[16];
            for(int i = 0;i<16;i++){
                randombytes[i] = (byte)r.nextInt(128);
                teakey += (char)randombytes[i];
            }
            // read the commander published Public key file
            BufferedReader br1 = new BufferedReader(new FileReader("Public Key.txt"));
            String publickeyinfo = br1.readLine();
            br1.close();
            // get e and n for public key
            BigInteger e = new BigInteger(publickeyinfo.split(",")[0]);
            BigInteger n = new BigInteger(publickeyinfo.split(",")[1]);
            // convert original teakey to BigInteger
            BigInteger m = new BigInteger(teakey.getBytes());
            // encrypt the original teakey
            BigInteger c = m.modPow(e, n);
            // write the original teakey to commander using UTF format
            out.writeUTF(c.toString());
            // new buffered reader to read input stream
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in)); 
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
            // instantiate TEA object with teakey
            TEA spytea = new TEA(teakey.getBytes());
            // encrypt clear text to cypher text
            byte[] cyphertext = spytea.encrypt(cleartext.getBytes()); 
            // out write cyphertext
            out.write(cyphertext);
            // buffered reader to read reply from input stream
            BufferedReader br2 = new BufferedReader(new InputStreamReader(in));
            String reply = br2.readLine();
            // if reply is "Wrong Symmetrickey", then throw exception
            if(reply.equals("Wrong Symmetrickey")){
                Exception ex = new Exception();
                throw ex;
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
        } catch (Exception ex) {
            System.out.println("Exception: Wrong teakey.");
        } finally {
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
