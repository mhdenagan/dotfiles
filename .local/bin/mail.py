#!/usr/bin/python

import imaplib
#from notifypy import Notify
#notification = Notify()
#notification.title = "New mail message"
#notification.message = "Please read your mail"
#notification.icon = "/home/dmtr/Pictures/mail.png"
#notification.audio = "/home/dmtr/Downloads/114136296.wav"

obj = imaplib.IMAP4_SSL('imap-mail.outlook.com',993)
obj.login('dimitrije.r@live.com','r@sLJic4.4')
obj.select()
number = len(obj.search(None, 'UnSeen')[1][0].split())
if number>0:
        print('📬', + number)
        #notification.send()
else:
        pass
