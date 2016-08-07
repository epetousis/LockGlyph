# LockGlyph
Adds the Apple Pay completed payment animation to the lockscreen, and animates when unlocking the device with Touch ID.

## Facts about PKGlyphView
### Default RGB colour values for properties:  
primaryColor 188 188 188  
secondaryColor 119 119 119  

### The PKGlyphView states:  
0 - Regular fingerprint glyph (default)  
1 - Fingerprint scanning  
2 - Loading circle  
3 - Empty circle  
4 - Move iphone to reader animation  
5 - Custom image state  
6 - The successful payment tick  

### The PKGlyphView styles:  
(passed as the argument in initWithStyle:)  
0 - Normal, no colour blending  
1 - Blend colours into background  