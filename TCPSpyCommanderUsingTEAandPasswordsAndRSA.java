/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * TCPSpyCommanderUsingTEAandPasswordsAndRSA class
 * @author Hongwei Xie
 * @version 1.3
 */
import java.net.*;
import java.io.*;
import java.math.BigInteger;
public class TCPSpyCommanderUsingTEAandPasswordsAndRSA {
	public static void main (String args[]) {
		try{
                    // server port
                    int serverPort = 7896; 
                    // instantiate RSA object
                    RSA commanderrsa = new RSA();
                    // get the private key from RSA object
                    BigInteger[] privatekey = commanderrsa.getRSAPrivate();
                    // generate the kml file which stores original spy location
                    ToKML kml = new ToKML();
                    // generate a file which store RSA public key
                    commanderrsa.showRSAPublic();
                    System.out.println("Waiting for spies to visit…");
                    // instantiate a server socket
		    ServerSocket listenSocket = new ServerSocket(serverPort);
		    while(true) {
                        // listen client socket
			Socket clientSocket = listenSocket.accept();
                        // construct connection, parameter including client socket, commander tea, and kml
		        Connection c = new Connection(clientSocket, kml, privatekey);
		    }
		} catch(IOException e) {System.out.println("Listen socket:"+e.getMessage());}
	}
}
/**
 * Connection class
 * @author Hongwei Xie
 */
class Connection extends Thread {
        // input stream
	DataInputStream in;
        // output stream
	DataOutputStream out;
        // client socket
	Socket clientSocket;
        // TEA object
        TEA checktea;
        // BigInteger[] array 
        BigInteger[] privatekey;
        // string to store reply
        String reply;
        // kml file
        ToKML kml;
        // static counter to count how many visits occured
        static int counter = 0;
	public Connection (Socket aClientSocket, ToKML beginkml, BigInteger[] key) {
		try {
                        /**
                         * initialize variables
                         */
			clientSocket = aClientSocket;
                        kml = beginkml;
                        privatekey = key;
			in = new DataInputStream( clientSocket.getInputStream());
			out =new DataOutputStream( clientSocket.getOutputStream());
                        // start the run method
			this.start();
                        // when a connection constructed, counter plus 1
                        counter += 1;
		} catch(IOException e) {System.out.println("Connection:"+e.getMessage());}
	}
	public void run(){
		try {	
                    // input stream read cypher 
                    BigInteger cypher = new BigInteger(in.readUTF());
                    // use private key to decrypt cypher to clear
                    BigInteger clear = cypher.modPow(privatekey[0], privatekey[1]);
                    // get the teakey
                    String teakey = new String(clear.toByteArray());
                    // instantiate checktea object by using the teakey 
                    checktea = new TEA(teakey.getBytes());
                        // instantiate a new byte[] array
                        byte[] b = new byte[1000];
                        // InputStream method that return the actual input byte[] length 
                        int actuallength = in.read(b);
                        // cyphertext to store the actual info
                        byte[] cyphertext = new byte[actuallength];
                        for(int i = 0;i < actuallength;i++){
                            cyphertext[i] = b[i];
                        }
                // decrypt the cyphertext to cleartext
                byte[] cleartext = checktea.decrypt(cyphertext);
                // heck if cleartext is ASCII format
                if (checkASCII(cleartext)) {
                    // convert cleartext byte[] to string
                    String bytetostring = new String(cleartext);
                    String[] spydata = bytetostring.split(",");
                    // store spy id
                    String spyid = spydata[0];
                    String spypassword = spydata[1];
                    // store spy password
                    String newlocation = spydata[2] + "," + spydata[3] + "," + spydata[4];
                    PasswordHash check = new PasswordHash();
                    //If this spy is valid, then update his location in kml file;
                    if (check.isValid(spyid, spypassword)) {
                        System.out.println("Got visit " + counter + " from " + spyid);
                        // update the kml with new spy id and location
                        kml.updateKML(spyid, newlocation);
                        // give reply
                        reply = "Thank you. Your location was securely transmitted to Intelligence Headquarters.";
                    }
                    // else do not need to store the information
                    else{
                        System.out.println("Got visit " + counter + " from " +spyid + ". Illegal ID or password attempt. This may be an attack.");
                        // give reply
                        reply = "Not a valid user-id or password.";
                    }
                    // out write reply
                    out.write(reply.getBytes());
                } //if it's not true, then ignore this request
                else {
                    System.out.println("Got visit " + counter + " illegal symmetric key used. This may be an attack.");
                    // give reply
                    reply = "Wrong Symmetrickey";
                    // out write reply
                    out.write(reply.getBytes());
                    // close client socket
                    clientSocket.close();
                }
		}catch (EOFException e){System.out.println("EOF:"+e.getMessage());
		} catch(IOException e) {System.out.println("readline:"+e.getMessage());
		} finally{ try {clientSocket.close();}catch (IOException e){/*close failed*/}}
	}
        /**
         * Method to check if the clear text is ASCII
         * @param b byte[] array
         * @return true or false
         */
        public boolean checkASCII(byte[] b){
            byte[] a = b;
            boolean returnvalue = true;
            // for loop to check value of every byte, it should locate between 0 and 127
            for(int i = 0;i < a.length;i++){
                // if true continue
                if(a[i]>=0 && a[i]<=127){
                    continue;
                }
                // if one value false then break, and return value should be false
                else{
                    returnvalue = false;
                    break;
                }
            }
            return returnvalue;
        }
}
