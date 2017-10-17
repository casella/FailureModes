# FailureModes
A collection of examples of failure modes for Modelica models

This library contains a collection of simple models that show many typical failure modes of Modelica models. The main
goal of the library is to provide paradigmatic use case for tool vendors to provide appropriate, user-friendly, and
informative debug information to the users, so that they can recognize the root cause of the problem in their models
and fix them.

The library can also have educational value for Modelica users, to learn in which ways Modelica models can fail
and develop appropriate strategies to deal with each of these sources of trouble. This is particularly important
in the context of declarative equation-based modelling, where the relationship between the run-time error and the
root cause in the model may not be obvious at all.

The first version of the library was written in 2012 to provide test cases for the new debugging features of the
OpenModelica tool, see Adrian Pop, Martin Sjölund, Adeel Asghar, Peter Fritzson and Francesco Casella, Static and
Dynamic Debugging of Modelica Models, Proc. 9th International Modelica Conference, Munich, Germany, Sep. 3-5, 2012, pp. 443-454.

Contributions by tool vendors and users are welcome; you are encouraged to use pull requests on GitHub for this purpose.
