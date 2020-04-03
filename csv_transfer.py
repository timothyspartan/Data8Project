import pyodbc #odbc is open database connectivity
server = 'localhost,1433'
database = 'sparta'
username = 'SA'
password = 'Passw0rd2018'
docker_sparta = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER='+server+';DATABASE='+database+';UID='+username+';PWD='+ password)
cursor = docker_sparta.cursor()

cursor.execute("SELECT @@version;") #This may work already. But might need preplacing

row = cursor.execute('SELECT * FROM business_test').fetchall()

cursor.execute('''
                INSERT INTO sparta.dbo.business_test (spartan_name, trainer, IH_W1)
                VALUES
                ('Jenny','David', 55)
                ''')

docker_sparta.commit()

