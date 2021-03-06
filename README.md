# Wooter
##### **Parallel & Distributed Systems**

##### **Semester Long Design Project: Due May 1st, 2015**

##### **Programmer: Robert Ryszewski**
------
**Objective:** To design a low-level website in stages that will ultimately be multi-threaded, networked, and replicated.

**Overview:**
- Stage 0: HTML Mock-up
- Stage 1: PHP Back-end & File Handling (No databases or SQL)
- Stage 2: Networked Back-end Server (PHP only client-facing)
- Stage 3: Multi-threaded Back-end Server
- Stage 4: Replicated Back-end Server

**Documentation:**
- Functions for each module are extensively documented
- Notes on multithreading and replication provided in separate README files

**Goals for Future Improvement :**
- Make use of separate compilation for the functions in each module
- Offload the testing code into a separate module of its own
    - Improve rigor of testing code in general
- Further improve overall robustness/error handling/worst case scenarios & race conditions
- Allow for a non-fixed # of RMs, to better represent arbitrary IP addresses of RMs
    - Do so by connecting to primary, and telling it and all known RMs to update their lists
    - Would need to store pairs of connection file descriptors with IP addresses
- Replace the current form of syncing the RM with the primary (calling "cp" on the local files) with a network-appropriate solution ("scp", a custom program, or an expansion to the .cpp).

**Quick Start Instructions :**
- 1) Pull repo into /var/www/html
- 2) Run make clean, make, to delete existing user accounts and to compile executable
- 3) Run "0_follow_gen.php" (by terminal or by web browsing to localhost/0_follow_gen.php)
- 4) User list is now populated. Run "0_woot_gen.php" to generate woots for them all
- 5) Login as any test user (username:password pairs defined in 0_follow_gen.php) and explore.
