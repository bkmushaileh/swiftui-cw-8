import UIKit

var theker = ["استغفرالله العظيم", "سبحان الله وبحمده", "لا حول ولا قوة الا بالله"]
print (theker[0])
print (theker[2])
theker.append("الحمدلله")
print (theker)
theker.remove(at: 2)
print (theker)
print (theker.randomElement()!)
theker[2] = "لا حول ولا قوة الا بالله العلي العظيم"
print (theker)
theker.removeAll()
print (theker)

