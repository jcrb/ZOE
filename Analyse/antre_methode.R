Autres méthodes
---------------
    
    On fait la somme des notes attribuées à chaque technique. Plus le total est bas, plus le choix est orienté vers cette technique:
    
    ```{r}
sort(apply(pref, 2, sum))
```



Avec cette méthode il apparait que l'homéopathie est la méthode la plus employée et les médications le moins.

Si on considère la note moyenne obtenue par technique:
```{r}
# on transforme les 0 (technique non disponible) en NA
prefc <- pref
prefc[prefc == 0] <- NA
boxplot(prefc)
sort(apply(prefc, 2, mean, na.rm = TRUE))

```