# Verilog-AMS Resources
**Purpose**: An assemblage of helpful resources for writing development using Verilog-AMS.  
**Author**: Derek Hockenberry

---
Note: I may also refer to Verilog-AMS as VerilogAMS/ verilogAMS/ verilogams/ VAMS/ vams.

---
## Table of Contents  
1. [Online Resources](#online-resources)
2. [Local Resources](#local-resources)

---
## Online Resources  
1. [The Designer's Guide (DG) community page for Verilog-AMS](https://designers-guide.org/verilog-ams/index.html)
    - Online webpage home to the Verilog-AMS Language Reference Manual and links to Verilog-AMS tutorials
    - Includes Verilog-A models for download: 
        - Basic models (RLCs, I/V sources, ideal opamp...)
        - Functional models (data converter, frequency dividers, oscillators, modulators...)
        - Semiconductor models (MOS 11, JFET, varactor, varistor...)
        - RF models (frequency divider, lossy capacitor, lossy inductor...)
        - Multidisciplinary models (motor, mechanical stop, MEMS elements)
    - Includes Verilog-AMS models for download:
        - Basic models (inverter, clock, flip-flop...)
        - Functional models (data converters, digital-controlled switch, VCO...)
        - Connect models (electrical-to-logic connect modules, D-A connect module, bidirectional connect modules)
2. [Verilog-AMS Quick Reference](https://verilogams.com/quickref/index.html)
    - Quick links for info on the Basics, Expressions, and Modules
3. [Verilog-AMS Tutorials](https://verilogams.com/tutorials/index.html)
    - Gives an introduction to Verilog-A as well as functional modeling. Covers defining branches, nodes, parameters, etc. Explains how Verilog-A works (enforcement of Kirchoff's laws via contribution statements). Provides some examples through tutorials showing best practices and what to avoid.  
4. The Designer's Guide to Verilog-AMS book by Kenneth Kundert and Olaf Zinke
    - Here is a [link to excerpts](https://designers-guide.org/verilog-ams/dg-vams/index.html), though the entire book is available for purchase online if you go looking. Please support the original authors. For clarity, here is the listing information for the text:  
    ISBN 1-4020-8044-1 (hardbound)  
    ISBN 1-4020-8045-X (eBook)  
    Library of Congress Call Number TK7874 .K856 2004  


## Local Resources
### Official Verilog-A Documents
1. [Verilog-AMS Language Reference Manual](./official_vams/VerilogAMS-2.4.0.pdf)
    - The official reference manual for Verilog-AMS, released by Accellera. Version 2.4.0 -- May 30, 2024
2. 
### Element/ Model Documents

1. Ideal Opamp
    - [VAMS functional model of a comparator from the VAMS DG webpage](./element_docs/ideal_opamp/listing01/opamp.vams)
2. Comparator
    - [VAMS functional model of a comparator from the VAMS DG webpage](./element_docs/comparator/listing14/comparator.vams)
3. Integrating Opamp
    - [QUCS Verilog-A Modular Macromodel for Operational Amplifiers Report](./element_docs/integrating_op_amp/qucs_mod_opamp.pdf) (tangentially related)
        - Quite Universal Circuit Simulator release under GNU Free Documentation License Version 1.1+