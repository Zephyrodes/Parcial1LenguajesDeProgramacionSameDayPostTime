import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import java.io.IOException;
import java.util.List;

public class Calculadora {
    public static void main(String[] args) {
        try {
            // Crear un flujo de entrada desde el archivo
            CharStream input = CharStreams.fromFileName("expr.in");

            // Crear un lexer y un parser para la entrada
            CalculadoraTrigonometricaLexer lexer = new CalculadoraTrigonometricaLexer(input);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            CalculadoraTrigonometricaParser parser = new CalculadoraTrigonometricaParser(tokens);

            // Analizar la entrada
            CalculadoraTrigonometricaParser.FileContext fileContext = parser.file();

            // Crear el visitante
            CalculadoraTrigonometricaVisitorImpl visitor = new CalculadoraTrigonometricaVisitorImpl();

            // Visitar cada expresión y mostrar el resultado
            for (CalculadoraTrigonometricaParser.ExprContext exprContext : fileContext.expr()) {
                double result = visitor.visit(exprContext);
                System.out.println(result);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
