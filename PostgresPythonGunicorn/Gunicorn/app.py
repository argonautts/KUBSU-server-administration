import psycopg2

def app(environ, start_response):
    conn = psycopg2.connect(
        host="localhost",
        database="kubsu",
        user="kubsu",
        password="kubsu",
        port = "5432"
    )
    cur = conn.cursor()
    cur.execute("SELECT * FROM users")
    rows = cur.fetchall()
    cur.close()
    conn.close()

    content = '\n'.join([str(row) for row in rows]).encode('utf-8')
    status = '200 OK'
    headers = [('Content-type', 'text/plain; charset=utf-8')]

    start_response(status, headers)
    return [content]