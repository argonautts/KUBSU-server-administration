import psycopg2

conn = psycopg2.connect(
host="localhost",
port=5432,
database="kubsu",
user="kubsu",
password="kubsu"
)

cursor = conn.cursor()

cursor.execute("SELECT * FROM users;")

rows = cursor.fetchall()

with open('users.txt', 'w') as f:
	for row in rows:
		print(row)
		f.write(str(row))

cursor.close()
conn.close()
