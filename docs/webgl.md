

# WebGL


### Macros

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


### Uniforms

Les `uniforms` sont des paramètres du shader modifiables depuis notre application. On peut les préfixer (`u_` ou `uCamel`, sur shaderToy par exemple c'est `iCamel`.

```
uniform vec2 uMousePosition; // Vecteur à deux dimensions contenant la position de la souris
uniform int uFrame; // Le nombre d'images écoulées
uniform float uTime; // Le nombre de secondes écoulées pour rester sync
```

### Fonctions

##### Trigonométrie
Les fonction suivantes sont disponibles :
`sin(), cos(), tan(), asin(), acos(), atan(), pow(), exp(), log(), sqrt(), abs(), sign(), floor(), ceil(), fract(), mod(), min(), max(), clamp()` Liste complète [ici](http://www.shaderific.com/glsl-functions/)


