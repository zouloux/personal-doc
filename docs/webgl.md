

# WebGL

- Tout est là: [thebookofshaders](https://thebookofshaders.com)
- Le glossaire super bien : https://thebookofshaders.com/glossary/


### Macros

Les mots clés commençants par un `#` sont des macros. Ils seront interprêtés lors de la compilation du script avant de le balancer au GPU.

- Si une constante est définie
```
#ifdef GL_ES
...
#endif
```

- Si une constante n'est pas définie
```
#ifndef GL_ES
...
#endif
```


### Précision

Définir la précision est important car elle impacte directement les performances

- Haute `precision highp float;`
- Moyenne `precision mediump float;`
- Basse `precision lowp float;`

La qualité moyenne en GL_ES est recommandée :
```
#ifdef GL_ES
precision mediump float;
#endif
```


### Syntaxe

##### Constantes

- Ces constantes sont définies via macro (le #define) :
```
#define PI 3.141592653589793
#define HALF_PI 1.5707963267948966
```

##### Float vs int

- Pour spécifier un float on met un point, sinon c'est un int `int 1` vs `float 1.0`
- Les vecteurs s'attendent à des floats `vec4(1.0, 0.0, 0.0, 1.0)` = rouge

##### Variables

- Déclarer une variable : 
```
float myVar = 1.0;
int myVar = 1;
bool myVar = true;
```

##### Vecteurs

- Caster un `vec3` dans un `vec4`
```
vec3 myVec3 = myVec3(1.0, 0.0, 0.0);
vec4 myVector = vec4( myVec3, 1.0);
```

- Caster une float sur toutes les valeurs d'un `vec3`
```
float floatPosition = 0.8;
vec3 vecColor = vec3(floatPosition); // Le vecteur sera un gris 0.8, pratique
```

- Accès au composantes d'un vecteurs (rgba = xyzw = stpq) :
```
vec4 vector;
vector[0] = vector.r = vector.x = vector.s;
vector[1] = vector.g = vector.y = vector.t;
vector[2] = vector.b = vector.z = vector.p;
vector[3] = vector.a = vector.w = vector.q;
```

- Syntax sugar appelé swizzle, on peut faire des opérations raccourcies de ouf :
```
vec3 yellow, magenta, green;

// Making Yellow 
yellow.rg = vec2(1.0);  // Assigning 1. to red and green channels
yellow[2] = 0.0;        // Assigning 0. to blue channel

// Making Magenta
magenta = yellow.rbg;   // Assign the channels with green and blue swapped

// Making Green
green.rgb = yellow.bgb; // Assign the blue channel of Yellow (0) to red and blue channels 
```


### Uniforms

Les `uniforms` sont des paramètres du shader modifiables depuis notre application. On peut les préfixer (`u_` ou `uCamel`, sur shaderToy par exemple c'est `iCamel`.

```
uniform vec2 uMousePosition; // Vecteur à deux dimensions contenant la position de la souris
uniform int uFrame; // Le nombre d'images écoulées
uniform float uTime; // Le nombre de secondes écoulées pour rester sync
```


### Fonctions

- [Liste complète ici](http://www.shaderific.com/glsl-functions/)
- Sinon voir le glossaire plus complet en haut de page.


### Varyings

Les varyings sont modifiées à chaque thread. Par exemple sur chaque pixel 

##### Inputs
- `gl_FragCoord` est un `vec2` représentant chaque position de l'image

##### Outputs
- `gl_FragColor` est un `vec4` représentant la couleur de sortie






