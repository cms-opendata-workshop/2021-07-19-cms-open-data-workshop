## Welcome
Welcome to the second version of the workshop on the use of open data from the CMS experiment. We are really happy to have you here!
In order to make the best use of the time during the event, we have prepared a set of pre-exercises, which you are requested to go through before the workshop.

Yes, **requested**: this is because we know that setting up the proper environment may take some time, and it may happen that you would need help.
We can help you get started before the workshop, but during the workshop we really want to concentrate on the use of open data.  We will do our best if all technicalities are settled down in advance.

In this page, we try to explain why we have chosen those pre-exercises, please read though!

## Analysis workflow

Analysis of CMS data is most commonly done in two steps
- **first**, selecting the data of interest and writing it to a new, smaller format
- **second**, analysing the selected data.

The **first** step will almost inevitably be done using the CMS software (CMSSW) and in a computing environment compatible with the open data.

For the computing environment, you can either
 - download a virtual machine (VM) image and run it on your computer.
 - download a docker container.

Setting up this environment is the first pre-exercise. The choice between these two options - VM or docker - depends on your own setup and your goals.
We give a list of features which you can take into consideration when choosing between these two options at the end of this page.

In order to use the CMS software to extract the physics information you need from the CMS open data, certain familiarity and knowledge of how physics objects and built in CMS will be needed.  This is why, an introduction to CMS physics objects is the second pre-exercise.

Learning some basics of CMSSW is the third pre-exercise.
We understand that not all of you are keen on learning the details of CMSSW,
but some basic knowledge of it is definitely needed in order get hold of the data.
Note that the code and commands to run are the same in VM and in docker.

During the workshop we need to deliver lots of information about how to access different physics objects.  The trigger system is important, a bit obscure but very intuitive.  This is why you will also have to save some time in order to learn about this system in the next pre-exercise.

In the **second** step, during this workshop, we will use the **`ROOT`** data analysis framework. This is because
- the format of the output files from the first step is in root format
- the facilitators are familiar with root
- root is already installed in the CMS open data computing environment.

Learning some basics of root useful for this workshop is the last pre-exercise.
Note that if you do not wish to use root, you can use the analysis tools of your choice afterwards,
but we will not be able to cover different options during this short workshop.
This is why we ask you to go through some basic notions of root, even if you do not intend to use it later.
In case you need to refresh your C++ skills, this pre-exercise will serve you well also.

The second, analysis step can be done in the CMS open data virtual environment (whether VM or docker)
or by passing the output files to your local setup and analysing them there.
If you are familiar with root and have it installed on your local system, you may prefer doing it there.
In this case, check the root pre-exercise to be sure that you have the right root version used in the open data analysis example.

## Workshop structure

In order to facilitate the delivery of information, we have classified the material in six topics.  The color coding help differentiate them:

* <span style="background-color:#ff0000;color:white">General guidance</span>
* <span style="background-color:#ff8000;color:black">Datasets and access</span>
* <span style="background-color:#ffff00;color:black">Basic physics objects</span>
* <span style="background-color:#00ff00;color:black">Advanced physics objects</span>
* <span style="background-color:#00ffff;color:black">Analysis flow</span>
* <span style="background-color:#0000ff;color:white">Cloud computing</span>

## Different operating system

Traditionally, CMSSW is developed, validated and run in a well-defined version of linux operating system,
which we have made available together with open data.
Linux users will find their way through fairly smoothly, although they will need to use these old versions compatible with the data.
Mac users have traditionally worked it through and it is quite common in use considering the amount of apples in some of our meetings
(when we still used to sit in a common physical meeting room).
For Windows, recently, there have been some quite interesting developments, mainly with docker and WSL, and we hope to bring through
Windows users as well, without too many hiccups.

Please take note that this is a learning process for us as well,
we really want to learn from the eventual difficulties you may encounter so that we can improve. However, bear with us,
for the normal analysis work of CMS data we keep to those well-defined versions of linux, and we may not have
all solutions for different environments ready.

## VM or docker

Right at the start, for the first pre-exercise, you will need to decide if you want to go for VM or docker.
Here we list some features which may help you in choosing between these two computing environments.

VM:
- is quick to start, and only requires installation of a hypervisor program on your computer.
- opens root GUI without problems in all OS (including Windows) so you can see what you are plotting
- can be cumbersome to use (slow response)
- is good to get a first touch with CMS open data or small-scale analysis, but is not practical when analysing large amounts of data.
- may have some issues with clipboard for copying files

Docker:
- is more convenient for those used to the linux environment
- requires installation of docker on your local system
- opening root GUI in the docker container running on Windows requires quite some work (but works fine at the end and we have instructions)
- scales better for large-scale analysis

Note that you can try both, if you wish. Windows WSL users may need to change a setting and reboot between switching from VM to docker
