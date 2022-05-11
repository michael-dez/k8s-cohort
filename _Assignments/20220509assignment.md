## Problem 1: What is a 12 Factor App?
### The Twelve Factors
1. **Codebase** - One codebase tracked in revision control, many deploys.
2. **Dependencies** - Explicitly declare and isolate dependencies.
3. **Config** - Store config in the environment.
4. **Backing services** - Treat backing services as attached resources.
5. **Build, release, run** - Strictly separate build and run stages.
6. **Processes** - Execute the app as one or more stateless processes.
7. **Port binding** - Export services via port binding.
8. **Concurrency** - Scale out via the process model.
9. **Disposability** - Maximize robustness with fast startup and graceful shutdown.
10. **Dev/prod parity** - Keep development, staging, and production as similar as possible.
11. **Logs** - Treat logs as event streams.
12. **Admin processes** - Run admin/management tasks as one-off processes
*[\[Source\]](https://12factor.net)*
## Problem 2: Create a DockerHub account
[my profile](https://hub.docker.com/u/michaeldez)
## Problem 3: Examine the analogy of "Pets vs Cattle vs Chicken"
The analogy appears to be originally attributed to [Gavin McCance](https://www.slideshare.net/gmccance/cern-data-centre-evolution). Gavin compares qualities of a pre-virtualization architecture model (pets) with a post-virtualization model (cattle). 
### Pets:
* are given names like `pussinboots.cert.ch`
* are unique, lovingly hand raised and cared for
* are nursed back to health when they become ill
### Cattle:
* are given numbers like `vm0042.cern.ch`
* are almost identical to other cattle
* are replacable when they become ill
### Chickens (containers):
* short lived
* small
* capable of being kept at a larger scale

