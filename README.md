# Generation in Maude of a Reversible Semantics for Erlang

The purpose of the project is twofold: i) having a mechanized semantics of the Erlang programming language and ii) having an automatic tool to derive a reversible mechanized semantics given a non-reversible one.

## Project Contents
Inside the folder `case-studies/erlang` one can find the formalization of Erlang. 
Inside the folder `code-transformation` one can find the code to derive the reversible semantics given a forward one.

## Project Usage
### Erlang Semantics
To experiment with the Erlang semantics navigate to `/case-studies/erlang`, then launch a Maude console and load the file named `framework.maude`.
Samples Erlang program can be found in `/case-studies/erlang/tests`, to load a program, after having loaded the framework, it suffices to invoke the command `load filename`. Finally, one can either execute the program step-by-step by the commad `(interactive-step(P))`, where P must be replaced with the pid of the intended process, or execute the program until completion by means of the command `fwd-step`.


### Generating Reversible Semantics
To generate a reversible semantics it suffices to navigate to `/code-transformation` and invoke the command `./produce-rev-sem.sh formalism`, where formalism must be replace by the intended semantics (currently it can only be replace by `erlang`).
