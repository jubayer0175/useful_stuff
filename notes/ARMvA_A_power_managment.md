ARMv8-A Power Management
=======================
Power management-aware operating systems dynamically change the power states of cores, balancing the available compute capacity to the current workload, while attempting to use the minimum amount of power. Some of these techniques dynamically switch cores on and off, or place them into quiescent states, where they no longer perform computation. This means that they consume little power.

Idle management is normally under the control of the operating system. In such a case, when a core is idle, Operating System Power Management (OSPM) moves it into a low-power state. Typically, a choice of states is available, with different entry and exit latencies, and different levels of power consumption associated with each state
No explicit command is required by the OSPM to bring the core or cluster back into operation. The OSPM considers the affected core or cores to be always available even if they are currently in a low-power state.

Dynamic power is determined by the clock and both power is determined by removal of power.

Standby:  Clock gating (only wake up condition detector keeps running)
A request from the Snoop Control Unit (SCU) can also wake up the clock for a cache coherency operation in a cluster. This means that the cache of a core that is in standby state remains coherent with caches of other cores (but the core in standby does not necessarily execute the next instruction). A core reset always forces the core to exit from the standby condition.
To an OSPM, a standby state is mostly indistinguishable from a retention state. The difference is evident to an external debugger and in hardware implementation, but not evident to the idle management subsystem of an operating system.


Retention -->  The core state, including the debug settings, is preserved in low-power structures, enabling the core to be at least partially turned off. Changing from low-power retention to running operation does not require a reset of the core.
Power down --> Simply power off.
Dormant mode --> Caches are up but core logic is down. also low power retention state. In this mode coherency will not be maintained like retention mode.
Hotplug --> Connecting/disconnecting core to an existing cluster. Bootstrapping does that at boot phase.

Assembly language power instructions
-------------------------

ARM assembly language includes instructions that can be used to place the core in a low-power state. The architecture defines these instructions as hints, meaning that the core is not required to take any specific action when it executes them.
In the Cortex-A processor family, however, these instructions are implemented in a way that shuts down the clock to almost all parts of the core. This means that the power consumption of the core is reduced so that only static leakage currents are drawn, and there is no dynamic power consumption.

