up:
	docker-compose up -d

down:
	docker-compose down

install-requirements:
	cd SalesTransactionGenerator && source venv/bin/activate && pip3 install -r requirements.txt

run-generator:
	cd SalesTransactionGenerator && source venv/bin/activate && python3 main.py