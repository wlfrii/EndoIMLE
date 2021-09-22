# EndoIMLE

This is a class named 'Endoscopic Image Luminance Enhancement', aimed at improving the uniformity and luminance of endoscopic images.

## Instruction

A demo script is provided, seeing `demo.m`. Several images provided in `./test_data` folder to test the codes.

The construtor requires six parameters, as follows
```MATLAB
% Constructor
Object = EndoIMLE(width,height,distance,fov,tc,ts)
% The details of all of these input arguments could be found in the artical.
```

If no input argument specified, default property will be used, which are as follows
```MATLAB
height = 1080; 
width = 1920;
distance = 60;
fov = deg2rad(90);
tc = 4.05;
ts = 7;
```

The public interfaces included in this class are as follows.
```MATLAB
1. [] = reset(varargin)
2. [imout] = enhanceLeftImage(imin, varargin)
3. [imout] = enhanceRighttImage(imin, varargin)
```
For the first function `reset()`, the optional arguments are same as the reguired parameters in Constructor. And these parameters could be optionally set as follows.
```MATLAB
obj = EndoIMLE(...);
...
obj.reset('height', 720, 'width', 1280);
obj.reset('distance', 100);
...
```

For the other two functions `enhanceLeftImage()` and `enhanceRightImage()`, the optional arguments are as follows. One who perfers to know the details of these parameters are suggest to read the artical.
```MATLAB
% L_ref
% s_ref
% k1
% k2
% guided_epsilon
% guass_sigma
% guass_r
```

If no input argument specified, `k1` and `k2` will be determined based on the input image, and other parameters will be displaced by default property as follows.
```MATLAB
L_ref = 0.5207
s_ref = 0.6
guided_epsilon = 0.0035
guass_sigma = 5
guass_r = 3
```