# Noise Based Terrain Generation

## Morgan Herrmann - moher@seas.upenn.edu (moher)
- https://morganherrmann.github.io/noisy-terrain - DEMO
- https://www.morganherrmann.com/

## Terrain
- With cartoons as an inspiration, this terrain system was developed using WebGL and TypeScript.  
- The user can move through various biomes using keyboard shortcuts (W/A/S/D), and can manipulate the camera by using the mouse.
         
         
![](https://drive.google.com/uc?export=view&id=1q-Xk3lnwXGWFyVdnX8bcnIFblukD9yT6)
DR. SEUSS LAND 

* Terrain implemented using sin and cosine curves randomized by fractal brownian motion.  Randomization of these curves with fractal motion causes small islands to be dispersed throughout the range, varying in height and color.
* Color - The coloring pallette was stylized based on "Oh, the Places You'll Go!" Colors were mapped based on height, and every interval between colors was given a black color to simulate hand drawn ink lines.  Colors at each height also fade into other colors in proportion to distance.
* The shapes of the peaks are modifiable, as well.  Please see "Modifiable Features" below.

![](https://drive.google.com/uc?export=view&id=1XmwsUiZ0pWUAGwf6JoY8EQ636FOj9TxH)
SHY GUY BEACH
 * Gradual tide pools with randomized, noise-based sand texture.
 * Terrain implemented using a broad fractal brownian noise function, creating a smooth, bumpy texture. All points below a certain height were set to water.
 * Sand Texture - I noticed that lots of cartoons draw sand by peppering bright colors onto a solid tan color.  I used reds, blues, and green specks with random distribution to create the effect of sand.
 ![](https://media.giphy.com/media/3oKHWh2PSp6mxGZG9i/giphy.gif)

![](https://drive.google.com/uc?export=view&id=1dgAa1tNew9ZN7jdZlcqyMxx9yhfKUts7)
DESERT MOUNTAINS
* Terrain forms based on exponential functions and fractal Brownian Motion, which grow and shrink with respect to time. I computed fractal Brownian motion and applied an exponential function to create peaks that came to a sharp point.
* Coloring is height based to create a water valley appearance at the bottom with visible jagged peaks at the top.

## Movement/Camera Instructions

### When placed in the demo, you can move RIGHT using 'D' to go to the cartoon mountains.  Moving left using 'A' will take you through the Tide Pools and after that, the Desert Oasis Mountains.


## Modifiable Features
![](giphy.gif)

In the upper right corner, you will find two features.
- Peak Height: Adjust this slider to modify the peak height and distribution in the Dr. Seuss inspired mountain region. This function works by amplifying the noise for greater values.
- Desert Cycle Speed: Use this slider to modify the speed at which the mountains sink and rise.  This function modifies the timing cycle of the mountain range, using a cosine curve with this value as an input, alongside time.
