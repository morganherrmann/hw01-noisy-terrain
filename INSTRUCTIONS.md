# Noise Based Terrain Generation

## Morgan Herrmann - moher@seas.upenn.edu (moher)
- https://morganherrmann.github.io/noisy-terrain - DEMO
- https://www.morganherrmann.com/

## Terrain
- With cartoons as an inspiration, this terrain system was developed using WebGL and TypeScript.  
- The user can move through various biomes using keyboard shortcuts (W/A/S/D), and can manipulate the camera by using the mouse.
         
         
![](https://drive.google.com/uc?export=view&id=1q-Xk3lnwXGWFyVdnX8bcnIFblukD9yT6)
Terrain implemented using sin and cosine curves randomized by fractal brownian motion.  

![](https://drive.google.com/uc?export=view&id=1XmwsUiZ0pWUAGwf6JoY8EQ636FOj9TxH)
Gradual tide pools with randomized, noise-based sand texture.

![](https://drive.google.com/uc?export=view&id=1dgAa1tNew9ZN7jdZlcqyMxx9yhfKUts7)
Oasis Mountain forms based on exponential functions and fractal Brownian Motion, which grow and shrink with respect to time.

### When placed in the demo, you can move RIGHT using 'D' to go to the cartoon mountains.  Moving left using 'A' will take you through the Tide Pools and after that, the Desert Oasis Mountains.


## Modifiable Features
![](giphy.gif)

In the upper right corner, you will find two features.
- Peak Height: Adjust this slider to modify the peak height and distribution in the Dr. Seuss inspired mountain region. This function works by amplifying the noise for greater values.
- Desert Cycle Speed: Use this slider to modify the speed at which the mountains sink and rise.  This function modifies the timing cycle of the mountain range, using a cosine curve with this value as an input, alongside time.
