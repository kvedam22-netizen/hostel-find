# Hostel Lost & Found

A full-stack starter for a hostel lost-and-found portal. The frontend works immediately with demo data; the backend provides the core Spring Boot + MySQL API.

## Run the frontend

Open `frontend/index.html` in a browser, or serve it locally:

```bash
cd frontend
python3 -m http.server 8080
```

## Run the backend

1. Create the database using `backend/src/main/resources/schema.sql`.
2. Update MySQL credentials in `backend/src/main/resources/application.properties`.
3. Start it with `cd backend && mvn spring-boot:run`.

The API runs at `http://localhost:8081/api`. Set `API_BASE` in `frontend/js/app.js` to that address when you want the UI to use it.

## Current API

- `GET /api/items?category=&type=&q=` — approved, public items
- `GET /api/items/{id}`
- `POST /api/items` — submit a report (pending approval)
- `PUT /api/items/{id}` — admin item/status update
- `DELETE /api/items/{id}`
- `POST /api/claims` — submit a claim
- `GET /api/claims/item/{itemId}` — claims for an item
- `POST /api/auth/register` and `POST /api/auth/login` — student registration/login
- `GET /api/admin/items` — all reports, including pending/rejected ones
- `PATCH /api/admin/items/{id}/status` — approve/reject/return an item
- `PATCH /api/admin/claims/{id}?status=APPROVED|REJECTED` — process a claim

Email registration only accepts the configured hostel domain (default: `@hostel.edu`). The current password check is a development-only implementation; replace it with BCrypt + Spring Security/JWT before production deployment, and protect every `/api/admin/**` endpoint.
