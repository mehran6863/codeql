// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from ConstructorRefCallExpr x, Expr getFunction, Expr getBaseExpr
where
  toBeTested(x) and
  not x.isUnknown() and
  getFunction = x.getFunction() and
  getBaseExpr = x.getBaseExpr()
select x, "getFunction:", getFunction, "getBaseExpr:", getBaseExpr