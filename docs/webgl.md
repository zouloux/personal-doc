

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

- Haute `precision highp float;`
- Moyenne `precision mediump float;`
- Basse `precision lowp float;`


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


