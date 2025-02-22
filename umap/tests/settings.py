import os

from umap.settings.base import *  # pylint: disable=W0614,W0401

SECRET_KEY = "justfortests"
COMPRESS_ENABLED = False
FROM_EMAIL = "test@test.org"
EMAIL_BACKEND = "django.core.mail.backends.locmem.EmailBackend"

if os.environ.get("GITHUB_ACTIONS", False) == "true":
    DATABASES = {
        "default": {
            "ENGINE": "django.contrib.gis.db.backends.postgis",
            "NAME": "postgres",
            "USER": "postgres",
            "HOST": "localhost",
            "PORT": 5432,
            "PASSWORD": "postgres",
        }
    }

PASSWORD_HASHERS = [
    "django.contrib.auth.hashers.MD5PasswordHasher",
]
