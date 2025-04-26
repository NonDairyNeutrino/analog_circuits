using ModelingToolkit, OrdinaryDiffEq, Plots
using ModelingToolkitStandardLibrary.Electrical
using ModelingToolkitStandardLibrary.Blocks: Constant
using ModelingToolkit: t_nounits as t

@mtkmodel circuit begin
    @parameters begin
        r1val = 4.0
        r2val = 6.0
        r3val = 12.0
        r4val = 4.0

        iRval = 6.0
        iLval = 18.0

        dVval = 9.0
    end
    
    @components begin
        r1 = Resistor(R = r1val)
        r2 = Resistor(R = r2val)
        r3 = Resistor(R = r3val)
        r4 = Resistor(R = r4val)
        
        dVsource = Voltage()
        dVconst  = Constant(k = dVval)
        
        iLsource = Current()
        iLconst  = Constant(k = iLval)
        iRsource = Current()
        iRconst  = Constant(k = iRval)
    end
    
    @equations begin
        connect(iLconst.output, iLsource.I)
        connect(iRconst.output, iRsource.I)
        connect(dVconst.output, dVsource.V)

        # left branch
        # .p is the positive terminal
        # .n is the negative terminal
        connect(iLsource.p, r1.n, r2.n, r3.n)
        
        # top branch
        connect(r2.p, dVsource.p)
        connect(dVsource.n, r4.n)

        # middle branch
        connect(r3.p, r4.n)

        # right branch
        connect(iRsource.p, r4.n)

        # bottom branch
        connect(iLsource.n, r1.p, r4.p, iRsource.n)
#        connect(iLsource.n, ground)
#        connect(r1.p, ground)
#        connect(r4.p, ground)
#        connect(iRsource.n, ground.g)
    end
end

@mtkbuild model = circuit()

println("The system of equations that model this circuit are")
equations(model) |> display
println()

println("The unknowns are")
unknowns(model) |> display
println()

#println("The parameters are")
#parameters(model) |> display
#println()

#println("The observed set of equations are")
#observed(model) |> display
#println()

init_conds = Pair[model.r3.i => 0.0, model.r4.i => 0.0]
prob = ODEProblem(circuit, init_conds, (0, 1.0))
display(prob)
sol = solve(prob)
display()
#
#plot(sol, idxs = [model.capacitor.v, model.resistor.i],
#    title = "RC Circuit Demonstration",
#    labels = ["Capacitor Voltage" "Resistor Current"])
