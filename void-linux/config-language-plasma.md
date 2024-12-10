```
- doas nano /etc/locale.conf
LANG=es_AR.UTF-8
LC_ALL=es_AR.UTF-8

- doas nano ~/.config/plasma-localerc
[Formats]
LANG=es_AR.UTF-8
LC_ADDRESS=es_AR.UTF-8
LC_MEASUREMENT=es_AR.UTF-8
LC_MONETARY=es_AR.UTF-8
LC_NAME=es_AR.UTF-8
LC_NUMERIC=es_AR.UTF-8
LC_PAPER=es_AR.UTF-8
LC_TELEPHONE=es_AR.UTF-8
LC_TIME=es_AR.UTF-8

[Translations]
LANGUAGE=es

- doas nano /etc/default/libc-locales
es_ES.UTF-8 UTF-8
es_AR.UTF-8 UTF-8

- doas xbps-reconfigure -f glibc-locales
```
