within FailureModes;

package SingularModels "Singular models"
  extends Modelica.Icons.ExamplesPackage;

  model GroundlessCircuit1
    extends Modelica.Icons.Example;
    Modelica.Electrical.Analog.Basic.Resistor R1(R = 1) annotation(
      Placement(visible = true, transformation(origin = {-20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Electrical.Analog.Sources.ConstantVoltage Vs annotation(
      Placement(visible = true, transformation(origin = {10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  equation
    connect(R1.p, Vs.p) annotation(
      Line(points = {{-20, 10}, {-20, 18}, {10, 18}, {10, 10}}, color = {0, 0, 255}));
    connect(R1.n, Vs.n) annotation(
      Line(points = {{-20, -10}, {-20, -18}, {10, -18}, {10, -10}}, color = {0, 0, 255}));
    annotation(
      Documentation(info = "<html>
<p>This simple DC circuit model lacks a ground component, so its equations are singular. On the other hand, it has infinitely many solutions, whereby the circulating current is 1 A and the voltage difference across the two components is 1 V.</p>

There are two acceptable results for this model. Either a meaningful error message like \"Missing ground component in system\" is issued, or the tool can somehow process the equations so as to compute one valid solution, possibly warning the user that this is just one of multiple possible solutions.

See <a href=\"http://www.ep.liu.se/ecp/132/064/ecp17132565.pdf\">paper 1, Section 5</a> and <a href=\"http://www.ep.liu.se/ecp/076/021/ecp12076021.pdf\">paper 2, Section 5</a> for some ideas how to obtain these results.
</html>"));
  end GroundlessCircuit1;
end SingularModels;
