// generated by codegen/codegen.py
import codeql.swift.elements.expr.Expr

class LazyInitializerExprBase extends @lazy_initializer_expr, Expr {
  override string getAPrimaryQlClass() { result = "LazyInitializerExpr" }

  Expr getSubExpr() {
    exists(Expr x |
      lazy_initializer_exprs(this, x) and
      result = x.resolve()
    )
  }
}