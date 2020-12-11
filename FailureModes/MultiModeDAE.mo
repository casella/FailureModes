within FailureModes;
package MultiModeDAE "A collection of MultiModeDAE examples"
  extends Modelica.Icons.ExamplesPackage;
  model MultiModeDAE
    extends Modelica.Icons.Example;
    Real x(start=100,fixed=true);
  equation
    if time<=0.5 then
      x=100;
    else
      der(x)=5;
    end if;
    annotation (Documentation(info="<html>

<p>Multimode DAE systems constitute the mathematical framework supporting the physical modeling of systems possessing different modes. 
Each mode exhibits different dynamics, captured by Differential Algebraic Equations (DAEs).
 Multimode DAE systems are the underlying framework of ‘object-oriented’ modeling languages such as Modelica, Amesim, or Simscape. 
But in most of the Modelica modeling environment, the current solvers used could NOT deal with Multimode DAE appropriately.</p>

<p>In this example model, the if statement includes two branches that have a different differential index. Although the model doesn't violate Modelica Specification, it still gets a runtime error at time = 0. It is beneficial if the simulation environment could give such information regarding the different differential indexes in different branches. </p>

Here are some discussions on <a href=\"https://stackoverflow.com/questions/65199823/an-error-of-using-multi-mode-daes-in-dymola/65216999#65216999\">Stack Overflow</a>  and <a href=\"https://github.com/modelica/ModelicaSpecification/issues/2411\">Github</a> Github.


See <a href=\"https://hal.inria.fr/hal-03045498/file/JARAP_726%20%281%29.pdf\">paper 1</a> and <a href=\"http://people.rennes.inria.fr/Albert.Benveniste/pub/MultimodeDAE_LNCS10000.pdf\">paper 2</a> for some information on how to solve Multimode DAE.
</html>"));
  end MultiModeDAE;
end MultiModeDAE;
