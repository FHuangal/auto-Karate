package com.nttdata;

import com.intuit.karate.Runner;

public class PetTest {

    public static void main(String[] args) {
        Runner.path("src/test/java/com/nttdata") // Ruta de la carpeta específica
                .outputCucumberJson(true) // Habilitar reporte Cucumber JSON
                .parallel(  5); // Ejecutar de forma secuencial
    }
}