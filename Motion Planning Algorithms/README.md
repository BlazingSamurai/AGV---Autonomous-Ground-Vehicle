# Motion Planning Algorithms

There is a wide range of motion planning algorithms, but for this project, I am focusing on the Potential Field Algorithms.

### Artificial Potential Field

The artificial potential field algorithm is at its core, mimicking the potential field of charges. The basic understanding of this algorithm is that it assumes the **Mobile Manipulator (R)** to be a **positive charge**, the **Goal or Destination (G)** to be a **negative charge** and the **Obstacles (O)** to be a **positive charge**.

From this assumption we can easily see that the ****R and G**** will have an ******Attractive Potential (Pa)****** thereby having an ******************************Attractive Force (Fa)******************************, and the ********R and O******** will have a ******Repulsive Potential (Pr)****** thereby having a **Repulsive Force (Fr)**. The resultant of **************Fa and Fr************** is calculated, and the **position** of ************************R************************ is **updated**. 

***Simulation of Artificial Potential Field Algorithm in Matlab***

[![Watch the video](https://img.youtube.com/vi/XGqrnpYg8Wk/0.jpg)](https://youtu.be/XGqrnpYg8Wk)

The following is the mathematics of implementing this algorithm.

![Untitled](Motion%20Planning%20Algorithms/Untitled.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%201.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%202.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%203.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%204.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%205.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%206.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%207.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%208.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%209.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%2010.png)

A step-by-step breakdown will be updated soon.

A most important to remember is that this algorithm can only be used if the positions of all the involved parties, i.e. the Mobile Manipulator, Goal point and the obstacles with respect to a reference frame, are to be known.

### Virtual Force Field

This is an extension of the Artificial Potential Field theory. The major change here is the introduction of the ************************Certainty Value (CV)************************. In the method, the entire workplace is marked as a **Histogram grid**. Within this grid, there will be a group of cells called **************************Active cells**************************, which are in close proximity to the Mobile Manipulator. This cluster of **********************************************Active cells********************************************** is called an ****************************Active region****************************. 

Now, within this Histogram grid, every cell is awarded a CV based on how close they are to an obstacle. Now, in this method, we incorporate a new concept, that is, we consider that every cell in the ****************************Active region**************************** repels the ************************************Mobile Manipulator************************************, and the attraction happens only between the Mobile Manipulator and the Goal. 

![Untitled](Motion%20Planning%20Algorithms/Untitled%2011.png)

![Untitled](Motion%20Planning%20Algorithms/Untitled%2012.png)

![Total Repulsive Force](Motion%20Planning%20Algorithms/Untitled%2013.png)

Total Repulsive Force

![Total Attractive Force](Motion%20Planning%20Algorithms/Untitled%2014.png)

Total Attractive Force

![Resultant Force](Motion%20Planning%20Algorithms/Untitled%2015.png)

Resultant Force

A step-by-step breakdown will be updated soon.

### Euclidean Signed Distant Field

To be updated soon.
