within ;
package FailureModes "A collection of examples of failure modes for Modelica models"
  import SI = Modelica.SIunits;
  annotation(version = "1.1.0",
             uses(Modelica(version = "3.2.2")),
    Icon(graphics = {Polygon(fillPattern = FillPattern.Solid, points = {{-100, -100}, {-100, 100}, {-68, 42}, {-16, 50}, {-36, -4}, {24, 0}, {-2, -46}, {46, -46}, {28, -82}, {100, -100}, {-100, -100}}), Polygon(origin = {10, 9}, fillPattern = FillPattern.Solid, points = {{-82, 91}, {90, 91}, {90, -85}, {48, -73}, {66, -41}, {22, -39}, {44, 9}, {-18, 5}, {2, 61}, {-60, 53}, {-60, 53}, {-82, 91}})}, coordinateSystem(initialScale = 0.1)),
    Documentation(info = "<html><head></head><body><p>This library contains a collection of simple models that show many typical failure modes of Modelica models.</p>
<p>The main goal of the library is to provide paradigmatic use case for tool vendors to provide appropriate, user-friendly, and informative debug information to the users, so that they can recognize the root cause of the problem in their models and fix them.</p>
<p>The library can also have educational value for Modelica users, to learn in which ways Modelica models can fail and develop appropriate strategies to deal with each of these sources of trouble. This is particularly important in the context of declarative equation-based modelling, where the relationship between the run-time error and the root cause in the model may not be obvious at all.</p>
<p>The first version of the library was written in 2012 to provide test cases for the new debugging features of the OpenModelica tool, see Adrian Pop, Martin Sjölund, Adeel Asghar, Peter Fritzson and Francesco Casella, Static and Dynamic Debugging of Modelica Models, Proc. 9th International Modelica Conference, Munich, Germany, Sep. 3-5, 2012, pp. 443-454 (<a href=\"http://dx.doi.org/10.3384/ecp12076443\">PDF)</a>.</p>
<p>The source code of the library is hosted at <a href=\"https://github.com/casella/FailureModes\">https://github.com/casella/FailureModes</a>. Contributions by tool vendors and users are welcome; you are encouraged to use pull requests on GitHub for this purpose.</p>
</body></html>"),
uses(Modelica));
end FailureModes;
