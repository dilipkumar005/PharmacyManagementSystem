/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import java.io.File;
/**
 *
 * @author Lucky
 */


public class PharmacyUtils {
    public static String billPath = "D:\\PharmacyBill\\";

    static {
        File folder = new File(billPath);
        if (!folder.exists()) {
            boolean created = folder.mkdirs();
            if (!created) {
                System.err.println("Failed to create directory: " + billPath);
            }
        }
    }
}

