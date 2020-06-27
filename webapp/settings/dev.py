# Archivo de configuracion para entorno de desarrollo de Django

# Hereda todo de base
from .base import *

INSTALLED_APPS += [
    'django_extensions',
    'debug_toolbar',
]
