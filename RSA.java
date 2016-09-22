/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.FileNotFoundException;
import java.math.BigInteger;
import java.util.Random;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
/**
 *
 * @author Hongwei Xie
 * @version 1.3
 */
public class RSA {
    // BigInteger and random used to generate public key and private key
    private BigInteger n;
    private BigInteger d;
    private BigInteger e;
    Random rnd;
    private BigInteger p;
    private BigInteger q;
    // BigInteger array to store RSA public key
    private BigInteger[] RSAPublic = new BigInteger[2];
    // BigInteger array to store RSA private key
    private BigInteger[] RSAPrivate = new BigInteger[2];
    public RSA(){
        rnd = new Random();
        // Step 1: Generate two large random primes.
        // We use 400 bits here, but best practice for security is 2048 bits.
        p = new BigInteger(400,100,rnd);
        q = new BigInteger(400,100,rnd);
        // Step 2: Compute n by the equation n = p * q.
        n = p.multiply(q);
        // Step 3: Compute phi(n) = (p-1) * (q-1)
        BigInteger phi = (p.subtract(BigInteger.ONE)).multiply(q.subtract(BigInteger.ONE));
        // Step 4: Select a small odd integer e that is relatively prime to phi(n).
        // By convention the prime 65537 is used as the public exponent.
        e = new BigInteger ("65537");
        // Step 5: Compute d as the multiplicative inverse of e modulo phi(n).
        d = e.modInverse(phi);
        // RSA public key contains e and n
        RSAPublic[0] = e;
        RSAPublic[1] = n;
        // RSA private key contains d and n
        RSAPrivate[0] = d;
        RSAPrivate[1] = n;
    }
    // Method to get RSA public key
    public BigInteger[] getRSAPublic(){
        return RSAPublic;
    }
    // Method to get RSA private key
    public BigInteger[] getRSAPrivate(){
        return RSAPrivate;
    }
    // Method to show RSA public key to public
    public void showRSAPublic()throws FileNotFoundException, UnsupportedEncodingException{
        // write a file contains RSA public key
        PrintWriter writer = new PrintWriter("Public Key.txt", "UTF-8");
        writer.write(RSAPublic[0] + "," + RSAPublic[1]);
        writer.close();
    }
}
