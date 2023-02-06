composer install
npm install
cp .env.dist .env

Adjust settings in .env file

Set debug mode and your current environment
    YII_DEBUG   = true
    YII_ENV     = dev
Set DB configuration
    DB_DSN           = mysql:host=127.0.0.1;port=3306;dbname=yii2-starter-kit
    DB_USERNAME      = user
    DB_PASSWORD      = password
Set application canonical urls
    API_HOST_INFO         = http://api.yii2-starter-kit.localhost
    FRONTEND_HOST_INFO    = http://yii2-starter-kit.localhost
    BACKEND_HOST_INFO     = http://backend.yii2-starter-kit.localhost
    STORAGE_HOST_INFP     = http://storage.yii2-starter-kit.localhost


docker-compose up --force-recreate

php console/yii app/setup
npm run build