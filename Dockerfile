# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["python", "spacex_dash_app.py"]
EXPOSE 3000