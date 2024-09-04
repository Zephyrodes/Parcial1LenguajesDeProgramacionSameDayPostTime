// Generated from CalculadoraTrigonometrica.g4 by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link CalculadoraTrigonometricaParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface CalculadoraTrigonometricaVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link CalculadoraTrigonometricaParser#file}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFile(CalculadoraTrigonometricaParser.FileContext ctx);
	/**
	 * Visit a parse tree produced by {@link CalculadoraTrigonometricaParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr(CalculadoraTrigonometricaParser.ExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link CalculadoraTrigonometricaParser#func}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunc(CalculadoraTrigonometricaParser.FuncContext ctx);
}