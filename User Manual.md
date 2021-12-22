#  📘 User manual Algorave

Welcome to Algoraves collabrotive robot! This tutorial will help you get started co performing with a robot live coder.

At the moment the tool is build for a livecoding environment called [Mercury](https://github.com/tmhglnd/mercury/). I will describe how to download Mercury, but if you want a in depth tutorial please visit [Mercury Tutorial page.](https://github.com/tmhglnd/mercury/blob/master/docs/tutorial.md) 

# Table of Contents
- [Install Mercury](#-install-mercury)
- [Install Processing](#install-processing)
- [Install Murgee Autotyper](#install-processing)
- [Starting up](#starting-up)

# 💻 Install Mercury

Mercury runs in Max8 (sometimes also called MaxMSP), a node-based creative coding environment from Cycling'74. **You do not need to buy a Max-license in order to use Mercury!** 😎

1. Please download Max8 through any of the links below.

- [Windows](https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max808_x64_190808.zip)
- [Mac](https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max808_190808.dmg)
- If links are not working you can go to [https://cycling74.com/downloads/older](https://cycling74.com/downloads/older)

2. Once you installed Max8 you can launch it. It will create a `Max 8` folder in your `Documents`. In there you may create a folder named `Projects`. The full path should now look like this: `<User>/Documents/Max 8/Projects`

3. Now [download the latest release](https://github.com/tmhglnd/mercury/releases)

	```
	Download latest release and unzip entire folder in ~/Documents/Max 8/Projects
	```
	
	Now your filepath should look something like: `<User>/Documents/Max 8/Projects/mercury-v.0.13.0-alpha`

# 🚀 Launch Mercury

Launch Mercury by double clicking `mercury_ide.maxproj` located in the folder `mercury-v.x.x.x/mercury-ide`.

- ⏳ Give it some time to load, this might take a bit depending on your computers processor.

Once it's ready you will see two windows:

1. The `_mercury_main` window 
2. The  `mercury` window (still black). 

The main window is used to quickly access the most important functions in Mercury such as turning the audio on/off and starting a recording of your sound. When you turn the Rendering on you will start to see the text-editor in the `mercury` window. This is the window were you will type your code.

- 📺 Turn the **Rendering on**
- 🔈 Turn the **Audio on**

You are now ready to start coding your first sounds! 🎶💻🎶

# Install Processing

1. Dowload Processing Through any of the links below.
- [Download for Windows](https://github.com/processing/processing4/releases/download/processing-1277-4.0b2/processing-4.0b2-windows64.zip)
- [Download for Mac](https://github.com/processing/processing4/releases/download/processing-1277-4.0b2/processing-4.0b2-macosx.zip)

2. Download the Processing sketch (code)[here](/Code/Processing_Datarave).

3. Open Processing_Datarave.pde 

# Install Murgee autotyper

1. Download the Murgee Auto typer [here](https://www.murgee.com/auto-typer/download/setup.exe)

2. Download the latest settings on my github [here](\Datarave\Code)

3. When installed import the settings by clicking the 3 dots in Murgee auto typer

# Starting Up

1. launch Mercury as described in [Launch Mercury](-launch-mercury)

2. launch Processing opening Processing_Datarave.pde

3. launch Murgee Autotyper

4. In Processing start the sketch by clicking the play button.

5. A window will pop up with "start robot"

6. IMPORTANT focus you cursor to Mercury by clicking the Mercury code environment.

7. The robot will now start to write code!