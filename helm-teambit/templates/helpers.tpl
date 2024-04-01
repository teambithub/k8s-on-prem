{{/* Generate env variables used across deployments */}}
{{- define "teambit.env_variables" }}
  - name: DJANGO_ENV
    value: production
  - name: DJANGO_SETTINGS_MODULE
    value: codice.settings
  - name: IS_ENV
    value: production
  - name: PYTHONUNBUFFERED
    value: "1"
  - name: CELERY_BROKER_URL
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: CELERY_BROKER_URL
  - name: DATABASE_URL
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: DATABASE_URL
  - name: POSTGRES_USER
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: POSTGRES_USER            
  - name: POSTGRES_DB
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: POSTGRES_DB
  - name: POSTGRES_PASSWORD
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: POSTGRES_PASSWORD
  - name: SECRET_KEY
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: SECRET_KEY

  - name: GOOGLE_CLIENT_ID
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: GOOGLE_CLIENT_ID
  - name: GOOGLE_SECRET
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: GOOGLE_SECRET

  - name: JIRA_CALLBACK_URL
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: JIRA_CALLBACK_URL
  - name: JIRA_CLIENT_ID
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: JIRA_CLIENT_ID
  - name: JIRA_CLIENT_SECRET
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: JIRA_CLIENT_SECRET
  - name: LOGIN_METHOD
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: LOGIN_METHOD
  - name: ADMIN_USER
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: ADMIN_USER
  - name: ADMIN_PASSWORD
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: ADMIN_PASSWORD
  - name: ADMIN_EMAIL
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: ADMIN_EMAIL
  - name: API_BASE_URL
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: API_BASE_URL
  - name: ORGANIZATION_NAME
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: ORGANIZATION_NAME
  - name: ORGANIZATION_DOMAIN
    valueFrom:
      secretKeyRef:
        name: app-env-secret
        key: ORGANIZATION_DOMAIN
  

{{- end }}
