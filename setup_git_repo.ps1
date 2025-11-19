# Git Repository Setup Script
# Run this after Git is installed

Write-Host "Setting up Git repository..." -ForegroundColor Green

# Navigate to project directory
Set-Location "C:\Users\faizs\Downloads\workshop\workshop1"

# Initialize git repository
Write-Host "`n1. Initializing git repository..." -ForegroundColor Yellow
git init

# Add remote repository
Write-Host "`n2. Adding remote repository..." -ForegroundColor Yellow
git remote add origin https://github.com/NiellQiu/Bilqis_Workshop1.git

# Verify remote
Write-Host "`n3. Verifying remote..." -ForegroundColor Yellow
git remote -v

# Stage all files
Write-Host "`n4. Staging all files..." -ForegroundColor Yellow
git add .

# Create initial commit
Write-Host "`n5. Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit"

# Set default branch to main
Write-Host "`n6. Setting default branch..." -ForegroundColor Yellow
git branch -M main

Write-Host "`n✅ Setup complete!" -ForegroundColor Green
Write-Host "`nTo push to remote, run:" -ForegroundColor Cyan
Write-Host "  git push -u origin main" -ForegroundColor White
Write-Host "`nWhen prompted:" -ForegroundColor Cyan
Write-Host "  Username: Your GitHub username" -ForegroundColor White
Write-Host "  Password: Your Personal Access Token" -ForegroundColor White


