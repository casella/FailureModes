# FailureModes
A collection of examples of runtime failure modes for Modelica models

Modelica is an equation-based, object-oriented modelling language based on the principle of model/solver
separation. The language allows to define models in a convenient way for the modeller, using differential-algebraic
equations, a-causal connections and graphical system diagrams. Ideally, the Modelica tool takes care of
automatically turning this very high-level model description into simulation code, so that you click on the
simulation button and just get simulation results. In real-life this often doesn't work, particularly during
the development of new system models, which may have issues such as incorrect parametrization, incorrect
initialization, or use outside validity boundaries, that prevent a numerical solution to be found and produce
runtime errors. In these cases, Modelica tools should provide appropriate, high-level, user-friendly debug
information to the users, so that they can identify the root cause of the runtime problems in their models
and get them to work. 

The goal of this library is thus to collect simple paradigmatic test cases that demonstrate typical numerical runtime
failure modes of Modelica models, to be used by Modelica tool developers to assess how far they can get at
helping the end user identify and fix them.

The library can also have educational value for Modelica users, to learn in which ways Modelica models can fail
for numerical reasons and develop appropriate strategies to deal with each of these sources of trouble, using their
Modelica tool(s) of choice. This is particularly important in the context of declarative equation-based modelling,
where the relationship between the run-time error and the root cause in the model may not be obvious at all.

The first version of the library was written in 2012 to provide test cases for the new debugging features of the
OpenModelica tool, see Adrian Pop, Martin Sjölund, Adeel Asghar, Peter Fritzson and Francesco Casella, Static and
Dynamic Debugging of Modelica Models, Proc. 9th International Modelica Conference, Munich, Germany, Sep. 3-5, 2012, pp. 443-454.

Contributions by tool vendors and users are welcome; you are encouraged to use pull requests on GitHub for this purpose.
