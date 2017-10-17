within FailureModes;
package DifferentialSolverFailures "Models that trigger failure of the ODE solver"
  extends Modelica.Icons.ExamplesPackage;

  model FiniteEscapeTime "Solution with finite escape time"
    extends NonlinearSolverFailures.InitialFailure(y(start=20));
    SI.Temperature Ts(start=T0) "Output of pump discharge temperature sensor";
  equation
    tau*der(Ts) = T1 - Ts "Temperature sensor dynamics";
  initial equation
    der(Ts) = 0;

    annotation (Documentation(info= "<html><head></head><body><p>This model describes a simple hydraulic system with a pump, followed by a valve, which fills a reservoir.</p>
<p>As the reservoir level increase, the flow rate w_pump approaches zero. When it does, the energy balance equation causes the specific enthalpy h1, and thus the temperature T1, to approach infinity. The temperature T1 is the input of a first-order linear system, representing the temperature sensor dynamics. If a variable step-size solver with error control is used, it will try to compute the state trajectory, which also approaches infinity, so the solver eventually gets stuck around time t = 666.</p>
<p>The debugger should identify the state variable (Ts, in this case) whose error estimate is causing the step size to be reduced, then suggest the user to look at how its derivative der(Ts) is computed. It will be shown that it depends on T1, which diverges towards infinity. T1 in turn depends on h1, which also diverges to infinity. Finally, h1 depends on the energy balance equation, which depends on w_pump - at that point it will become apparent that as the flow rate w_pump goes to zero, the model wil become ill-posed, because of a division by zero.</p><p>The solution in this case is to change the pump model, by adding to the energy balance some dynamic energy storage and/or some heat transfer to the ambient, and by introducing a check-valve behaviour in the flow-head relationship to avoid flow reversal.</p>
</body></html>"), experiment(StopTime=1000));
  end FiniteEscapeTime;

end DifferentialSolverFailures;
