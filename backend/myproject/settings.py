from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# Quick-start development settings - unsuitable for production
SECRET_KEY = 'django-insecure-r$tbfqz1uke3169rk@5&%@=1(_bjgx26(6ui7ub@8*oa&#ic4_'
DEBUG = True

# Allow all hosts for development purposes
ALLOWED_HOSTS = ['*', '127.0.0.1', 'localhost', '.ngrok-free.app']


# Application definition
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'rest_framework',
    'corsheaders',
    'knox',  # Add Knox for token authentication
    'myapp',  # Your app
]

MIDDLEWARE = [
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'myproject.urls'

CORS_ALLOWED_ORIGINS = [
    'http://localhost:5173',  # สำหรับการเข้าถึงจาก local
    'https://ce90-2403-6200-8833-bb2f-85d3-fbe7-ff01-3048.ngrok-free.app',  # URL จาก ngrok
]
CORS_ALLOW_ALL_ORIGINS = True  # ใช้สำหรับการพัฒนา (สามารถตั้ง False สำหรับโปรดักชัน)



TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'myproject.wsgi.application'

# Knox Token Authentication
REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': ['knox.auth.TokenAuthentication'],
}

# Database Configuration (MySQL)
DATABASES = {
    'default': {
        "ENGINE": "django.db.backends.mysql",
        "NAME": "caa1",
        "USER": "root",
        "PASSWORD": "",
        "HOST": "127.0.0.1",
        "PORT": "3306",
        'OPTIONS': {
            'init_command': "SET time_zone = '+07:00';"
        },
    }
}

# Password validation
AUTH_PASSWORD_VALIDATORS = [
    {'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',},
    {'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',},
    {'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',},
    {'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',},
]

# Localization
LANGUAGE_CODE = 'en-us'
TIME_ZONE = 'Asia/Bangkok'
USE_TZ = False
USE_I18N = True
CORS_ALLOW_ALL_ORIGINS = True  

# Session and Cookies Settings
SESSION_COOKIE_DOMAIN = ".ngrok-free.app"  # Allow session cookie on ngrok subdomains
SESSION_COOKIE_SAMESITE = None  # Allow cross-site cookies for Ngrok
ALLOWED_HOSTS = ['*']  # Allows access from all domains (can be more restrictive)
CORS_ALLOW_ALL_ORIGINS = True  # Allow all origins for testing

# Static files settings
STATIC_URL = 'static/'

# Default primary key field type
DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
