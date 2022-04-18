#run:
#	docker run -d -p 3000:4200 --env-file ./config/.env --name logsapp logsapp:env
run:
	docker run -d -p 3000:3000 -v logs:/app/data --rm --name logsapp logsapp:volume
run-dev:
	docker run -d -p 3000:3000 -v "G:\GitHub\logs-app:/app" -v /app/node_modules -v logs:/app/data --rm --name logsapp logsapp:volume
stop:
	docker stop logsapp
node:
	node app.js