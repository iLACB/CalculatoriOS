//
//  CalculatoriOSTests.swift
//  CalculatoriOSTests
//
//  Created by Gonet on 22/05/18.
//  Copyright © 2018 Gonet. All rights reserved.
//

import XCTest
@testable import CalculatoriOS

class CalculatoriOSTests: XCTestCase {
    
    var prueba: Calculadora!
    var prueba2: OperacionesNoBasicas!
    
    override func setUp() {
        super.setUp()
        self.prueba = Calculadora()
        self.prueba2 = OperacionesNoBasicas()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSuma() {
        let test = self.prueba.suma(x: 5, y: 5)
        XCTAssertEqual(test,10)
    }
    
    func testResta() {
        let test = self.prueba.resta(x: 8, y: 8)
        XCTAssertEqual(test, 0)
    }
    
    func testMultiplicacion(){
        let test = self.prueba.multiplicacion(x: 7, y: 7)
        XCTAssertEqual(test, 49)
    }
    
    func testDivision(){
        let test = self.prueba.division(x: 16, y: 2)
        XCTAssertEqual(test, 8)
    }
    
    func testRaizCuadrada() {
        let valorPrueba = self.prueba2.raizCuadrada(numero: 25)
        XCTAssertEqual(valorPrueba, 5)
    }
    
    func testSeno() {
        let valorPrueba = self.prueba2.seno(numero: 90)
        XCTAssertEqual(valorPrueba, sin(90))
    }
    
    func testCoseno() {
        let valorPrueba = self.prueba2.coseno(numero: 75)
        XCTAssertEqual(valorPrueba, cos(75))
    }
    
    func testTangente() {
        let valorPrueba = self.prueba2.tangente(numero: 75)
        XCTAssertEqual(valorPrueba, tan(75))
    }

    
}
