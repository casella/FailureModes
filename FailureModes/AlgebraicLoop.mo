within FailureModes;
package AlgebraicLoop "An example of generating algebraic loop"
  extends Modelica.Icons.ExamplesPackage;
  model WithoutAlgebraicLoop "An normal example without algebraic loop"
    extends Modelica.Icons.Example;
    Real x;
    Real y(start=1, fixed=true);
  equation
    when x > 0.5 then
      y = 1*time;
    end when;
    x = sin(10*time);
  end WithoutAlgebraicLoop;

  model WithAlgebraicLoop_Wrong "An example of generating algebraic loop"
    extends Modelica.Icons.Example;
    Real x;
    Real y(start=1, fixed=true);
  equation
    when x > 0.5 then
      y = 1*time;
    end when;
    x = sin(y*10*time);
  end WithAlgebraicLoop_Wrong;

  model WithAlgebraicLoop_Wrong2 "Demonstration of how to avoid generating algebraic loop,
  but end up with internal error in code generation for pre"
    extends Modelica.Icons.Example;
    Real x;
    Real y(start=1, fixed=true);
  equation
    when pre(x > 0.5) then
      y = 1*time;
    end when;
    x = sin(y*10*time);
  end WithAlgebraicLoop_Wrong2;

  model WithAlgebraicLoop_Right "Demonstration of how to avoid generating algebraic loop"
    extends Modelica.Icons.Example;
    Real x;
    Real y(start=1, fixed=true);
    Boolean cond;
  equation
    cond = x > 0.5;
    when pre(cond) then
      y = 1*time;
    end when;
    x = sin(y*10*time);
  end WithAlgebraicLoop_Right;
  annotation (                                 Documentation(info="<html>
<p>This package includes a few related examples to illustrate:</p>
<ul>
<li>why using when clause would generate algebraic loops;</li>
<li>how to use <a href=\"ModelicaReference.Operators.'pre()'\">`pre` operator </a>to avoid algebraic loops;</li>
</ul>
<p>See more discussions at Stack Overflow.<a href=\"https://stackoverflow.com/a/8028369/12160919\">[1]</a> and <a href=\"https://stackoverflow.com/a/65123167/12160919\">[2]</a></p>
</html>"));
end AlgebraicLoop;
