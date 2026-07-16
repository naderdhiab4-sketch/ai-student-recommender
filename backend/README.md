# Backend (ASP.NET Core) - README

ملاحظات تشغيل سريعة:

متطلبات:
- .NET 7 SDK أو أحدث
- Docker (اختياري لتشغيل PostgreSQL عبر docker-compose)

تشغيل محلي (بدون Docker):
1. افتح مجلد backend في IDE (Visual Studio / VS Code)
2. اضبط سلسلة الاتصال في appsettings.Development.json إلى قاعدة بيانات محلية (SQLite أو Postgres)
3. نفّذ:
   dotnet restore
   dotnet build
   dotnet run

عند تشغيل الخدمة، ستتوفر Endpoints حسب API spec الموجود في docs/ (ملف API_SPEC.md سيتم إضافته لاحقاً).
