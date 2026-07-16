# AI Student Recommender

مشروع: ai-student-recommender

وصف سريع:
هذا المستودع يحتوي على scaffold لمشروع "مُرشِّح المحتوى الشخصي الذكي لطلبة الجامعة" (Flutter front, ASP.NET Core backend, Python FastAPI ML microservice). تم إعداد الحزمة لتعمل محلياً عبر Docker Compose مع خيار تشغيل محلي بدون Docker.

المخرجات المبدئية الموجودة هنا:
- /flutter_app : واجهة Flutter (scaffold وشاشات أساسية).  
- /backend : ASP.NET Core (C#) skeleton مع endpoints أساسية.  
- /ml_service : FastAPI (Python) microservice لبناء embeddings والبحث عبر FAISS.  
- /data/resources.json : موارد مبدئية (عربي/إنجليزي).  
- docker-compose.yml : إعداد تشغيل مبدئي (Postgres + ml_service + backend).
- docs/ : مسودة تقرير وخطة عرض.
- TASKS.md : قائمة مهام لفريقكم.

ملف README هذا يحتوي تعليمات تشغيل سريعة في قسم "Quick start".


## Quick start (مبسط - تشغيل عبر Docker)
1. تأكّد من تثبيت Docker و Docker Compose.
2. استنساخ المستودع:
   git clone https://github.com/naderdhiab4-sketch/ai-student-recommender.git
   cd ai-student-recommender
3. بناء وتشغيل الحاويات:
   docker-compose up --build
4. بعد إقلاع الخدمات:
   - backend API: http://localhost:8000 (مثال)
   - ml_service: http://localhost:8001
   - Flutter app: شغّل عبر Flutter run أو افتح المجلد flutter_app في IDE


لمزيد من التفاصيل، راجع README داخل كل مجلد (backend/, ml_service/, flutter_app/).
