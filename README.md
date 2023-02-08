# Experiments with XSLT


## Preceding with the same ancestor as self

The goal is to sequentially number disp-formulas which belong to the same section `<sec id="X">`.

```sh
xsltproc count.xsl count.xml
```

It looks awkward, but the idea is to walk up the tree and for each branch get its descendant elements.

```
ancestor::*[...]/preceding-sibling::*/descendant-or-self::disp-formula 
```
