/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package com.controlador;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author starlink
 */
public class ControladorTest {
    
    public ControladorTest() {
    }

    @Test
    public void testProcessRequest() throws Exception {
        System.out.println("processRequest");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        Controlador instance = new Controlador();
        instance.processRequest(request, response);
        fail("The test case is a prototype.");
    }

    @Test
    public void testDoGet() throws Exception {
        System.out.println("doGet");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        Controlador instance = new Controlador();
        instance.doGet(request, response);
        fail("The test case is a prototype.");
    }

    @Test
    public void testDoPost() throws Exception {
        System.out.println("doPost");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        Controlador instance = new Controlador();
        instance.doPost(request, response);
        fail("The test case is a prototype.");
    }

    @Test
    public void testGetServletInfo() {
        System.out.println("getServletInfo");
        Controlador instance = new Controlador();
        String expResult = "";
        String result = instance.getServletInfo();
        assertEquals(expResult, result);
        fail("The test case is a prototype.");
    }

    @Test
    public void testAgregarCarrito() {
        System.out.println("agregarCarrito");
        HttpServletRequest request = null;
        Controlador instance = new Controlador();
        instance.agregarCarrito(request);
        fail("The test case is a prototype.");
    }
    
}
