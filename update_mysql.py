import mysql.connector
import ast
from time import sleep

def update_sanmames(sensor,status):

    print('--------------------')
    mydb = mysql.connector.connect(
        host="10.0.0.2",
        user="pit",
        password="My-sql1234",
        database="parkit_db"
    )

    mycursor = mydb.cursor()

    sql = "UPDATE Sensor SET value = {} WHERE id = {};".format(status,sensor)
    mycursor.execute(sql)
    mydb.commit()

    print(mycursor.rowcount, "record(s) affected")

    mydb.close()

if __name__ == '__main__':


    while True:

        f1 = open('1.txt', 'r')
        r1 = f1.read()
        f1.close()
        f2 = open('2.txt', 'r')
        r2 = f2.read()
        f2.close()
        f3 = open('3.txt', 'r')
        r3 = f3.read()
        f3.close()
        f4 = open('4.txt', 'r')
        r4 = f4.read()
        f4.close()
        f5 = open('5.txt', 'r')
        r5 = f5.read()
        f5.close()
        f6 = open('6.txt', 'r')
        r6 = f6.read()
        f6.close()
        f7 = open('7.txt', 'r')
        r7 = f7.read()
        f7.close()
        f8 = open('8.txt', 'r')
        r8 = f8.read()
        f8.close()
        f9 = open('9.txt', 'r')
        r9 = f9.read()
        f9.close()
        f10 = open('10.txt', 'r')
        r10 = f10.read()
        f10.close()
        f11 = open('11.txt', 'r')
        r11 = f11.read()
        f11.close()
        f12 = open('12.txt', 'r')
        r12 = f12.read()
        f12.close()
        f13 = open('13.txt', 'r')
        r13 = f13.read()
        f13.close()
        f14 = open('14.txt', 'r')
        r14 = f14.read()
        f14.close()
        f15 = open('15.txt', 'r')
        r15 = f15.read()
        f15.close()


        update_sanmames(1,r1)
        update_sanmames(2,r2)
        update_sanmames(3,r3)
        update_sanmames(4,r4)
        update_sanmames(5,r5)

        update_sanmames(6,r6)
        update_sanmames(7,r7)
        update_sanmames(8,r8)
        update_sanmames(9,r9)
        update_sanmames(10,r10)

        update_sanmames(11,r11)
        update_sanmames(12,r12)
        update_sanmames(13,r13)
        update_sanmames(14,r14)
        update_sanmames(15,r15)
        sleep(2)
