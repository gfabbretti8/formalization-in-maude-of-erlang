# Required criteria of the input semantic.

This document defines the format that the input semantics must respect for the reversible semantics to be successfully produced.

## Module SEM_ENTITIES
The semantics must contain a module named `SEM_ENTITIES` which defines the top-level operators. 
The following of this section defines the constraints that must be respected, by analyzing the various components of a module.

### Import List
No constraints.

### Sort
The module must declare the sort `Entities`.

### Subsort 
The module must declare the subsort `Entity < Entities`.

### Variables
No constraints.

### Operators
This module must only declare top-level operators. 

### Equations
No constraints.

### Rules 
No constraints.


## MODULE SEM_TRANSITION
The semantics must declare a module named `SEM_TRANSITION` which defines the rules of the system.
The following of this section defines the constraints that must be respected, by analyzing the various components of a module.

### Import List
No constraints.

### Sort
No constraints.

### Subsort 
No constraints.

### Variables
No constraints.

### Operators
No constraints.

### Equations
No constraints.

### Rules 
Only rules involving top-level operators must be defined here.



