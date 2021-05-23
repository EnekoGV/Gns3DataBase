import mysql.connector
import ast
from time import sleep

def update_sanmames(sensor,status):

    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="contraseña",
        database="parkit_db"
    )

    mycursor = mydb.cursor()

    sql = "UPDATE Sensor SET value = "+str(status)+" WHERE id = "+str(sensor)
    val = (status)

    mycursor.execute(sql, val)

    mydb.commit()

    print(mycursor.rowcount, "record(s) affected")

if __name__ == '__main__':

    while True:

        f1 = open('./1.txt', 'r')
        r1 = f1.read()
        f1.close()
        f2 = open('./2.txt', 'r')
        r2 = f2.read()
        f2.close()
        f3 = open('./3.txt', 'r')
        r3 = f3.read()
        f3.close()
        update_sanmames(1,ast.literal_eval(r1))
        update_sanmames(2,ast.literal_eval(r2))
        update_sanmames(3,ast.literal_eval(r3))
        print('--------------------')
        sleep(10)