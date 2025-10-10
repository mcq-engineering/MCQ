@echo off
echo 🔄 Building Flutter web app...
flutter build web

if %errorlevel% neq 0 (
    echo ❌ Build failed!
    pause
    exit /b
)

echo ✅ Build successful!

echo 🧠 Adding files to Git...
git add .
git commit -m "Update app"
git push

echo 🚀 Deploying to GitHub Pages...
flutter pub global run peanut

if %errorlevel% neq 0 (
    echo ❌ Peanut deploy failed!
    pause
    exit /b
)

git push origin gh-pages

echo ✅ Deployment complete!
echo 🌐 Check your live site: https://idplaystore49-design.github.io/MCQ/

pause
