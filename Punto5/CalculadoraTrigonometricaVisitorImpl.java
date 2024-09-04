import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;

public class CalculadoraTrigonometricaVisitorImpl extends CalculadoraTrigonometricaBaseVisitor<Double> {
    private double result;

    @Override
    public Double visitExpr(CalculadoraTrigonometricaParser.ExprContext ctx) {
        String function = ctx.func().getText();
        double value = Double.parseDouble(ctx.NUMBER().getText());

        // Convertir grados a radianes
        double radians = Math.toRadians(value);

        switch (function) {
            case "Sin":
                result = Math.sin(radians);
                break;
            case "Cos":
                result = Math.cos(radians);
                break;
            case "Tan":
                result = Math.tan(radians);
                break;
            default:
                throw new IllegalArgumentException("Función desconocida: " + function);
        }
        return result;
    }

    public double getResult() {
        return result;
    }
}
