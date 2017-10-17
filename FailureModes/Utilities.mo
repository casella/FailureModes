within FailureModes;
package Utilities "Utility functions and models"
  extends Modelica.Icons.UtilitiesPackage;
  function f_sign "Computes the signum function"
    input Real x;
    output Real y;
  algorithm
    if x > 0 then
      y := 1;
    elseif x < 0 then
      y := -1;
    else
      y := 0;
    end if;
    annotation (Inline=false);
  end f_sign;
end Utilities;