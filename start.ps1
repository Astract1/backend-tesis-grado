Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Backend Tesis Grado - Iniciando...  " -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Deteniendo contenedores previos..." -ForegroundColor Yellow
docker-compose down

Write-Host "Iniciando servicios con hot reload..." -ForegroundColor Yellow
docker-compose up --build -d

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "Servicios iniciados:" -ForegroundColor Green
    Write-Host "  API:      http://localhost:3000" -ForegroundColor White
    Write-Host "  Swagger:  http://localhost:3000/api/docs" -ForegroundColor White
    Write-Host "  pgAdmin:  http://localhost:5050 (admin@admin.com / admin)" -ForegroundColor White
    Write-Host ""
    Write-Host "Hot reload activado - Los cambios se aplicaran automaticamente" -ForegroundColor Cyan
    Write-Host ""
} else {
    Write-Host "Error al iniciar." -ForegroundColor Red
    exit 1
}
