# ML Service (FastAPI) - README

المسؤول عن:
- بناء embeddings من ملف data/resources.json
- إنشاء FAISS index محلي
- تقديم endpoint /search و /generate_quiz

تشغيل محلي (venv):
1. python3 -m venv venv && source venv/bin/activate
2. pip install -r requirements.txt
3. python setup_index.py  # يبني الـembeddings والـFAISS index
4. uvicorn main:app --reload --port 8001

ملحوظة: الخدمة تستخدم مكتبة sentence-transformers محلياً لتجنب الحاجة لمفاتيح مدفوعة.
