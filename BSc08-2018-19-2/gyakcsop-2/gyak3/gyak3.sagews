︠56308a54-6e33-4edc-b252-eed21efe3993︠
#Sage 'notebook'-ban kódblokkok vannak melyeket a SHIFT+ENTER vagy ALT+ENTER billentyűkkel tudunk végrehajani.
#A programblokkokban sage utasítások és/vagy python nyelven írt kód kerülhet. (Az utasításokat nem kell lezárni.)
2+2
︡7b576d83-0966-47a9-ae23-ac9e9b678ea6︡︡{"stdout":"4\n","done":false}︡{"done":true}
︠f03eedf0-a224-47d8-8dc9-cfb9ca28a191o︠
2^30
print 2+2
print(2+2)
4+2
︡bad09a4e-de4c-4ace-a151-f495784de349︡{"stdout":"4\n"}︡{"stdout":"6\n"}︡{"done":true}︡
︠2fee1c3c-d5c7-4723-a534-cc635740d4eeo︠
#Python "védett" karakterei nem használhatóak
10!
︡f088c9d2-1a6b-43c9-a01d-4918c292b31b︡︡{"done":false,"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.9/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"<string>\", line 1\n    Integer(10)!\n               ^\nSyntaxError: invalid syntax\n"}︡{"done":true}
︠26a352bb-986d-4bb4-a77d-2a01bd16a9b6o︠
#helyette
factorial(100)
︡74845e14-71e8-4102-a0ec-c93d2c57eb82︡︡{"stdout":"93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000\n","done":false}︡{"done":true}
︠9b20e775-36af-4740-bb74-2bf7649d97f4o︠
#több mint egy standalone python
factor(123456789101112)
is_prime(118253)
numerator(2/3)
cos(pi)
︡cd8b5781-72e8-4e53-b142-e17fb616bb2b︡{"stdout":"3^2 * 3607 * 3803\n"}︡{"stdout":"2\n"}︡{"done":true}︡
︠8b30fd34-3dc8-4f95-a887-1ab667298a68o︠
#lebegőpontos számokra való áttérésre használható az n() függvény
n(1/(99^2))
n(1/(99^2),200) #vagy nagyobb pontossággal
n(pi, 400) ## de ez biztosan nem 400 helyiérték (decimálisan)
︡f15c2945-161f-45fc-aa55-743bd73fbe76︡{"stdout":"0.000102030405060708\n"}︡{"stdout":"0.00010203040506070809101112131415161718192021222324252627282930\n"}︡{"stdout":"3.14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230665\n"}︡{"done":true}︡
︠f0e5f3cd-e73b-4026-a0dd-afb3096d9324o︠
# használjuk a help-et
n? #vagy ?n
︡013eb4ea-e777-4e7b-b51c-aa5c8315dccf︡︡{"code":{"source":"File: /projects/sage/sage-6.9/local/lib/python2.7/site-packages/sage/misc/functional.py\nSignature : n(x, prec=None, digits=None, algorithm=None)\nDocstring :\nReturns a numerical approximation of an object \"x\" with at least\n\"prec\" bits (or decimal \"digits\") of precision.\n\nNote: Both upper case \"N\" and lower case \"n\" are aliases for\n  \"numerical_approx()\", and all three may be used as methods.\n\nINPUT:\n\n* \"x\" - an object that has a numerical_approx method, or can be\n  coerced into a real or complex field\n\n* \"prec\" (optional) - an integer (bits of precision)\n\n* \"digits\" (optional) - an integer (digits of precision)\n\n* \"algorithm\" (optional) - a string specifying the algorithm to\n  use for functions that implement more than one\n\nIf neither the \"prec\" or \"digits\" are specified, the default is 53\nbits of precision.  If both are specified, then \"prec\" is used.\n\nEXAMPLES:\n\n   sage: numerical_approx(pi, 10)\n   3.1\n   sage: numerical_approx(pi, digits=10)\n   3.141592654\n   sage: numerical_approx(pi^2 + e, digits=20)\n   12.587886229548403854\n   sage: n(pi^2 + e)\n   12.5878862295484\n   sage: N(pi^2 + e)\n   12.5878862295484\n   sage: n(pi^2 + e, digits=50)\n   12.587886229548403854194778471228813633070946500941\n   sage: a = CC(-5).n(prec=40)\n   sage: b = ComplexField(40)(-5)\n   sage: a == b\n   True\n   sage: parent(a) is parent(b)\n   True\n   sage: numerical_approx(9)\n   9.00000000000000\n\nYou can also usually use method notation.\n\n   sage: (pi^2 + e).n()\n   12.5878862295484\n   sage: (pi^2 + e).N()\n   12.5878862295484\n   sage: (pi^2 + e).numerical_approx()\n   12.5878862295484\n\nVectors and matrices may also have their entries approximated.\n\n   sage: v = vector(RDF, [1,2,3])\n   sage: v.n()\n   (1.00000000000000, 2.00000000000000, 3.00000000000000)\n\n   sage: v = vector(CDF, [1,2,3])\n   sage: v.n()\n   (1.00000000000000, 2.00000000000000, 3.00000000000000)\n   sage: _.parent()\n   Vector space of dimension 3 over Complex Field with 53 bits of precision\n   sage: v.n(prec=20)\n   (1.0000, 2.0000, 3.0000)\n\n   sage: u = vector(QQ, [1/2, 1/3, 1/4])\n   sage: n(u, prec=15)\n   (0.5000, 0.3333, 0.2500)\n   sage: n(u, digits=5)\n   (0.50000, 0.33333, 0.25000)\n\n   sage: v = vector(QQ, [1/2, 0, 0, 1/3, 0, 0, 0, 1/4], sparse=True)\n   sage: u = v.numerical_approx(digits=4)\n   sage: u.is_sparse()\n   True\n   sage: u\n   (0.5000, 0.0000, 0.0000, 0.3333, 0.0000, 0.0000, 0.0000, 0.2500)\n\n   sage: A = matrix(QQ, 2, 3, range(6))\n   sage: A.n()\n   [0.000000000000000  1.00000000000000  2.00000000000000]\n   [ 3.00000000000000  4.00000000000000  5.00000000000000]\n\n   sage: B = matrix(Integers(12), 3, 8, srange(24))\n   sage: N(B, digits=2)\n   [0.00  1.0  2.0  3.0  4.0  5.0  6.0  7.0]\n   [ 8.0  9.0  10.  11. 0.00  1.0  2.0  3.0]\n   [ 4.0  5.0  6.0  7.0  8.0  9.0  10.  11.]\n\nInternally, numerical approximations of real numbers are stored in\nbase-2. Therefore, numbers which look the same in their decimal\nexpansion might be different:\n\n   sage: x=N(pi, digits=3); x\n   3.14\n   sage: y=N(3.14, digits=3); y\n   3.14\n   sage: x==y\n   False\n   sage: x.str(base=2)\n   '11.001001000100'\n   sage: y.str(base=2)\n   '11.001000111101'\n\nIncreasing the precision of a floating point number is not allowed:\n\n   sage: CC(-5).n(prec=100)\n   Traceback (most recent call last):\n   ...\n   TypeError: cannot approximate to a precision of 100 bits, use at most 53 bits\n   sage: n(1.3r, digits=20)\n   Traceback (most recent call last):\n   ...\n   TypeError: cannot approximate to a precision of 70 bits, use at most 53 bits\n   sage: RealField(24).pi().n()\n   Traceback (most recent call last):\n   ...\n   TypeError: cannot approximate to a precision of 53 bits, use at most 24 bits\n\nAs an exceptional case, \"digits=1\" usually leads to 2 digits (one\nsignificant) in the decimal output (see\nhttp://trac.sagemath.org/11647):\n\n   sage: N(pi, digits=1)\n   3.2\n   sage: N(pi, digits=2)\n   3.1\n   sage: N(100*pi, digits=1)\n   320.\n   sage: N(100*pi, digits=2)\n   310.\n\nIn the following example, \"pi\" and \"3\" are both approximated to two\nbits of precision and then subtracted, which kills two bits of\nprecision:\n\n   sage: N(pi, prec=2)\n   3.0\n   sage: N(3, prec=2)\n   3.0\n   sage: N(pi - 3, prec=2)\n   0.00\n\nTESTS:\n\n   sage: numerical_approx(I)\n   1.00000000000000*I\n   sage: x = QQ['x'].gen()\n   sage: F.<k> = NumberField(x^2+2, embedding=sqrt(CC(2))*CC.0)\n   sage: numerical_approx(k)\n   1.41421356237309*I\n\n   sage: type(numerical_approx(CC(1/2)))\n   <type 'sage.rings.complex_number.ComplexNumber'>\n\nThe following tests http://trac.sagemath.org/10761, in which \"n()\"\nwould break when called on complex-valued algebraic numbers.\n\n   sage: E = matrix(3, [3,1,6,5,2,9,7,3,13]).eigenvalues(); E\n   [18.16815365088822?, -0.08407682544410650? - 0.2190261484802906?*I, -0.08407682544410650? + 0.2190261484802906?*I]\n   sage: E[1].parent()\n   Algebraic Field\n   sage: [a.n() for a in E]\n   [18.1681536508882, -0.0840768254441065 - 0.219026148480291*I, -0.0840768254441065 + 0.219026148480291*I]\n\nMake sure we've rounded up log(10,2) enough to guarantee sufficient\nprecision (http://trac.sagemath.org/10164):\n\n   sage: ks = 4*10**5, 10**6\n   sage: check_str_length = lambda k: len(str(numerical_approx(1+10**-k,digits=k+1)))-1 >= k+1\n   sage: check_precision = lambda k: numerical_approx(1+10**-k,digits=k+1)-1 > 0\n   sage: all(check_str_length(k) and check_precision(k) for k in ks)\n   True\n\nTesting we have sufficient precision for the golden ratio\n(http://trac.sagemath.org/12163), note that the decimal point adds\n1 to the string length:\n\n   sage: len(str(n(golden_ratio, digits=5000)))\n   5001\n   sage: len(str(n(golden_ratio, digits=5000000)))  # long time (4s on sage.math, 2012)\n   5000001\n\nCheck that http://trac.sagemath.org/14778 is fixed:\n\n   sage: n(0, algorithm='foo')\n   0.000000000000000","mode":"text/x-rst","lineno":-1,"filename":null},"done":false}︡{"done":true}
︠f432f256-f064-4ca3-b726-6bab5a07b7aco︠
n(pi, digits=400) ## ez már jó
︡bd14e1f8-6b4d-4dff-bed2-0e7cb147ad60︡︡{"stdout":"3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982148086513282306647093844609550582231725359408128481117450284102701938521105559644622948954930381964428810975665933446128475648233786783165271201909145648566923460348610454326648213393607260249141273724587006606315588174881520920962829254091715364367892590360011330530548820466521384146951941511609\n","done":false}︡{"done":true}
︠f8191e9b-0e4f-4d07-90e6-abfd6001b6b1o︠
pi.n(digits=400) # így is működik
︡09108683-6b68-403f-bf31-fd258d0cfe38︡︡{"stdout":"3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982148086513282306647093844609550582231725359408128481117450284102701938521105559644622948954930381964428810975665933446128475648233786783165271201909145648566923460348610454326648213393607260249141273724587006606315588174881520920962829254091715364367892590360011330530548820466521384146951941511609\n","done":false}︡{"done":true}
︠3dca2485-ebcd-4ef3-b729-5c8d2b025b49o︠
# változó deklarálása az = operátorral (python)
x = pi
n(x, 40)
︡cfe18073-1cd5-49d9-ac9d-aafaf9fd9bf9︡︡{"stdout":"3.1415926536\n","done":false}︡{"done":true}
︠93e50af8-3301-46a2-8d2d-1de40c54255eo︠
# Ha kifejezésben szeretnénk használni, akkor sokszor meg kell adni, hogy az változó (ha már van n szimbólum: n(pi, 199))
var('n')
sum(n^2, n, 1, 10)
︡06d7b163-7088-4c9d-b957-3ef59ac976e5︡︡{"stdout":"n\n","done":false}︡{"stdout":"385","done":false}︡{"stdout":"\n","done":false}︡{"done":true}
︠45ef0d4d-9bc6-4b40-853c-ba47af39ee3eo︠
# lista
range(1, 11)
︡2e29ef4d-5b42-4594-876e-a9c286911c9a︡︡{"stdout":"[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\n","done":false}︡{"done":true}
︠e67a8658-2e11-496b-8b2e-a24f12f78443o︠
range(1, 11, 2)
︡072cc235-a9bf-46eb-aa9b-1a8733ef16a9︡︡{"stdout":"[1, 3, 5, 7, 9]\n","done":false}︡{"done":true}
︠16eb7dc9-c344-4df0-882a-efaa78171d55o︠
#lista hossza
len(range(1,51,2))
︡48d4881d-5f5d-4cc6-be14-4264436b0fb8︡{"stdout":"25\n"}︡{"done":true}︡
︠49468113-994b-48d2-9a91-01b578366152o︠
# lista másképp
[1..10]
︡d32a9a72-eb3c-4645-8dac-260febc1fba0︡︡{"stdout":"[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\n","done":false}︡{"done":true}
︠1fc872b2-6da7-4e07-b8d1-d94435a590efo︠
# lista (elemei kifejezéssel)
[n^2 for n in [1..10]]
︡72456232-668d-477b-8031-c572486e0149︡︡{"stdout":"[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]\n","done":false}︡{"done":true}
︠fd72a00d-3fee-47c0-aa08-647caae3beec︠
# lista változó felsorolással (értékadásnál nincs kiírható eredmény -- általában nem is szeretnénk)
L = [1, 3, 5, 7]
︡dc7ddb1a-fed3-404e-8129-a4ffb11ec870︡{"done":true}︡
︠c6976fa1-1fe6-469e-948f-254a75b3be53o︠
# lista elemeinek összege
sum(L)
sum(range(1, 11))
︡7513385d-d208-4a91-bbf3-994eea242bbb︡︡{"stdout":"16\n","done":false}︡{"done":true}
︠70b6656e-3b24-473f-8c6e-08798e1452cfo︠
# szorzata
prod(L)
︡5fdfaf0f-7299-4e49-ba02-3f4d4a5d2b37︡︡{"stdout":"105\n","done":false}︡{"done":true}
︠59946d2f-9b9f-48e6-a001-02ed8fd93ba8o︠
[i^2 for i in range(1,11)]
︡af46692c-a1b8-4aea-8e12-ce088a43017a︡︡{"stdout":"[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]\n","done":false}︡{"done":true}
︠20623fb2-ae07-420e-ae00-6edf961a2672︠
L = [i^2 for i in range(1,11) if is_prime(i)] #nem fogja kiírni az eredményt
︡8eb838f9-2ad8-4a20-94ab-c53e0fb99441︡︡{"done":true}
︠9c60d057-0d01-44ee-859e-339e38a2e3cbo︠
L
︡2bbb9c7b-f023-423c-a1ae-3aeff676a33a︡︡{"stdout":"[4, 9, 25, 49]\n","done":false}︡{"done":true}
︠5baf5cb1-8387-4322-8519-1804c1155b69o︠
sum(L)
︡ac8715d5-4941-4600-924b-748802820d89︡︡{"stdout":"87\n","done":false}︡{"done":true}
︠48031f0b-2348-4de9-9f3a-df532a7dd37bo︠
#szummáció nemcsak listára
var('n')
sum(n, n, 1, 10)
︡6f31c96d-43c7-4a3c-a13a-dae02419e764︡{"stdout":"n"}︡{"stdout":"\n"}︡{"stdout":"55"}︡{"stdout":"\n"}︡{"done":true}︡
︠5f6e2f8d-86ef-4e93-b1dc-bb1f3c4d3eb3o︠
sum(1/n^2, n, 1, infinity) # végtelen jele infinity
︡5b4adaf7-a6af-4572-8b4a-9a8332fbc2e2︡︡{"stdout":"1/6*pi^2","done":false}︡{"stdout":"\n","done":false}︡{"done":true}
︠43c5c399-a390-40f8-b073-bc56156789d6o︠
# most mi is az n?
n(pi)
︡4dd3d854-5980-4531-a18b-7934443a92e3︡︡{"stdout":"pi\n","done":false}︡{"done":false,"stderr":"/projects/sage/sage-6.9/local/lib/python2.7/site-packages/smc_sagews/sage_server.py:905: DeprecationWarning: Substitution using function-call syntax and unnamed arguments is deprecated and will be removed from a future release of Sage; you can use named arguments instead, like EXPR(x=..., y=...)\nSee http://trac.sagemath.org/5930 for details.\n  exec compile(block+'\\n', '', 'single') in namespace, locals\n"}︡{"done":true}
︠e49bb34c-1673-48bb-8a55-6c86184e4862o︠
reset('n')
n(pi) # igy mar jo
︡58b4aa2f-33ca-4b11-ac5a-c1452523a787︡︡{"stdout":"3.14159265358979\n","done":false}︡{"done":true}
︠26bf3fac-77a3-408a-bfaa-b98f973ab4dbo︠
var('n')
numerical_approx(pi) # ez azonos az n()-el (sokat használjuk), ha nem szeretnénk resetet
︡7ffc294b-d3f3-42a4-940e-ae1fd67c236d︡︡{"stdout":"n\n","done":false}︡{"stdout":"3.14159265358979\n","done":false}︡{"done":true}
︠27a0a9cd-7fc8-4285-99e1-84284e93dfb7o︠
#Prímek
is_prime(1245123)
︡95275286-d787-43ad-970b-10f1e8b4ef8c︡{"stdout":"False\n"}︡{"done":true}︡
︠a4dfa022-9cda-4b80-b3d4-49fbda16d39bo︠
next_prime(2^100)
︡4521167a-b8dc-4d00-8b92-a320344e0be3︡{"stdout":"1267650600228229401496703205653"}︡{"stdout":"\n"}︡{"done":true}︡
︠4871d55c-48cb-426f-9aef-c9be641ba8ebo︠
nth_prime(20)
︡eecbd6cb-23a1-4f58-b675-828fd190e43c︡{"stdout":"71\n"}︡{"done":true}︡
︠411f97a5-9cdf-41af-8a26-3e4e285a8b67o︠
primes_first_n(30)
︡691d21a9-7951-4e8f-8dc8-fdebf5f70bac︡{"stdout":"[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113]\n"}︡{"done":true}︡
︠60b734fb-f25b-4af1-a550-9c50107d7413︠
is_prime?
︡7ff1764d-d1ee-42b6-90ac-882f545728d8︡
︠129486da-fe49-42b4-b651-44e3942e21d5o︠
#deriválás
derivative?
︡695c1fc8-430a-48c6-92cc-ca9b1328abb5︡{"code":{"filename":null,"lineno":-1,"mode":"text/x-rst","source":"File: /projects/sage/sage-7.5/local/lib/python2.7/site-packages/sage/calculus/functional.py\nSignature : derivative(*args, **kwds)\nDocstring :\nThe derivative of f.\n\nRepeated differentiation is supported by the syntax given in the\nexamples below.\n\nALIAS: diff\n\nEXAMPLES: We differentiate a callable symbolic function:\n\n   sage: f(x,y) = x*y + sin(x^2) + e^(-x)\n   sage: f\n   (x, y) |--> x*y + e^(-x) + sin(x^2)\n   sage: derivative(f, x)\n   (x, y) |--> 2*x*cos(x^2) + y - e^(-x)\n   sage: derivative(f, y)\n   (x, y) |--> x\n\nWe differentiate a polynomial:\n\n   sage: t = polygen(QQ, 't')\n   sage: f = (1-t)^5; f\n   -t^5 + 5*t^4 - 10*t^3 + 10*t^2 - 5*t + 1\n   sage: derivative(f)\n   -5*t^4 + 20*t^3 - 30*t^2 + 20*t - 5\n   sage: derivative(f, t)\n   -5*t^4 + 20*t^3 - 30*t^2 + 20*t - 5\n   sage: derivative(f, t, t)\n   -20*t^3 + 60*t^2 - 60*t + 20\n   sage: derivative(f, t, 2)\n   -20*t^3 + 60*t^2 - 60*t + 20\n   sage: derivative(f, 2)\n   -20*t^3 + 60*t^2 - 60*t + 20\n\nWe differentiate a symbolic expression:\n\n   sage: var('a x')\n   (a, x)\n   sage: f = exp(sin(a - x^2))/x\n   sage: derivative(f, x)\n   -2*cos(-x^2 + a)*e^(sin(-x^2 + a)) - e^(sin(-x^2 + a))/x^2\n   sage: derivative(f, a)\n   cos(-x^2 + a)*e^(sin(-x^2 + a))/x\n\nSyntax for repeated differentiation:\n\n   sage: R.<u, v> = PolynomialRing(QQ)\n   sage: f = u^4*v^5\n   sage: derivative(f, u)\n   4*u^3*v^5\n   sage: f.derivative(u)   # can always use method notation too\n   4*u^3*v^5\n\n   sage: derivative(f, u, u)\n   12*u^2*v^5\n   sage: derivative(f, u, u, u)\n   24*u*v^5\n   sage: derivative(f, u, 3)\n   24*u*v^5\n\n   sage: derivative(f, u, v)\n   20*u^3*v^4\n   sage: derivative(f, u, 2, v)\n   60*u^2*v^4\n   sage: derivative(f, u, v, 2)\n   80*u^3*v^3\n   sage: derivative(f, [u, v, v])\n   80*u^3*v^3"}}︡{"done":true}︡
︠28e4b8d5-9bdb-446f-adba-53b6f1dfb009o︠
#néhány példa deriválásra
diff(x^2)
diff(x^2, x)
f(x,y) = x^2 + y^2
diff(f, x)
diff(f, x, x)
diff(x^10, x, 5)
︡9829f78b-9007-4902-97e8-b1cb34cdcf25︡{"stdout":"2*x\n"}︡{"stdout":"2*x\n"}︡{"stdout":"(x, y) |--> 2*x\n"}︡{"stdout":"(x, y) |--> 2\n"}︡{"stdout":"30240*x^5\n"}︡{"done":true}︡
︠a7a47574-4797-40d0-abac-b980ee39c500o︠
# integrálás
integral?
︡98de24b8-8142-4342-8a54-1130d1b48d67︡︡{"code":{"source":"File: /projects/sage/sage-6.9/local/lib/python2.7/site-packages/sage/misc/functional.py\nSignature : integral(*args, **kwds)\nDocstring :\nReturns an indefinite or definite integral of an object x.\n\nFirst call x.integral() and if that fails make an object and\nintegrate it using Maxima, maple, etc, as specified by algorithm.\n\nFor symbolic expression calls \"sage.calculus.calculus.integral()\" -\nsee this function for available options.\n\nEXAMPLES:\n\n   sage: f = cyclotomic_polynomial(10)\n   sage: integral(f)\n   1/5*x^5 - 1/4*x^4 + 1/3*x^3 - 1/2*x^2 + x\n\n   sage: integral(sin(x),x)\n   -cos(x)\n\n   sage: y = var('y')\n   sage: integral(sin(x),y)\n   y*sin(x)\n\n   sage: integral(sin(x), x, 0, pi/2)\n   1\n   sage: sin(x).integral(x, 0,pi/2)\n   1\n   sage: integral(exp(-x), (x, 1, oo))\n   e^(-1)\n\nNumerical approximation:\n\n   sage: h = integral(tan(x)/x, (x, 1, pi/3)); h\n   integrate(tan(x)/x, x, 1, 1/3*pi)\n   sage: h.n()\n   0.07571599101...\n\nSpecific algorithm can be used for integration:\n\n   sage: integral(sin(x)^2, x, algorithm='maxima')\n   1/2*x - 1/4*sin(2*x)\n   sage: integral(sin(x)^2, x, algorithm='sympy')\n   -1/2*cos(x)*sin(x) + 1/2*x\n\nTESTS:\n\nA symbolic integral from http://trac.sagemath.org/11445 that was\nincorrect in earlier versions of Maxima:\n\n   sage: f = abs(x - 1) + abs(x + 1) - 2*abs(x)\n   sage: integrate(f, (x, -Infinity, Infinity))\n   2\n\nAnother symbolic integral, from http://trac.sagemath.org/11238,\nthat used to return zero incorrectly; with Maxima 5.26.0 one gets\n\"1/2*sqrt(pi)*e^(1/4)\", whereas with 5.29.1, and even more so with\n5.33.0, the expression is less pleasant, but still has the same\nvalue.  Unfortunately, the computation takes a very long time with\nthe default settings, so we temporarily use the Maxima setting\n\"domain: real\":\n\n   sage: sage.calculus.calculus.maxima('domain: real')\n   real\n   sage: f = exp(-x) * sinh(sqrt(x))\n   sage: t = integrate(f, x, 0, Infinity); t            # long time\n   1/4*sqrt(pi)*(erf(1) - 1)*e^(1/4) - 1/4*(sqrt(pi)*(erf(1) - 1) - sqrt(pi) + 2*e^(-1) - 2)*e^(1/4) + 1/4*sqrt(pi)*e^(1/4) - 1/2*e^(1/4) + 1/2*e^(-3/4)\n   sage: t.canonicalize_radical()  # long time\n   1/2*sqrt(pi)*e^(1/4)\n   sage: sage.calculus.calculus.maxima('domain: complex')\n   complex\n\nAn integral which used to return -1 before maxima 5.28. See\nhttp://trac.sagemath.org/12842:\n\n   sage: f = e^(-2*x)/sqrt(1-e^(-2*x))\n   sage: integrate(f, x, 0, infinity)\n   1\n\nThis integral would cause a stack overflow in earlier versions of\nMaxima, crashing sage. See http://trac.sagemath.org/12377. We don't\ncare about the result here, just that the computation completes\nsuccessfully:\n\n   sage: y = (x^2)*exp(x) / (1 + exp(x))^2\n   sage: _ = integrate(y, x, -1000, 1000)","mode":"text/x-rst","lineno":-1,"filename":null},"done":false}︡{"done":true}
︠bc3e0a4c-fcc9-4c2d-9fa8-35149bd1cca1o︠
reset('x')
#határozatlan
integral(x^2, x)
︡205058fa-9374-4fba-a9b5-855f822f7b69︡︡{"stdout":"1/3*x^3\n","done":false}︡{"done":true}
︠d814103a-03a5-4672-9096-3e44568e9c87o︠
#határozott
integral(x^2, x, 0, 1)
︡e0afc980-f896-4618-8938-19a59cd2f755︡︡{"done":true}
︠deb8e3ca-d548-4bc4-86a3-4ee4295e0b11o︠
# elvileg szinte mindent kiszámol
next_prime(2^10000) ## kiértékelés megszakítása
︡190fbb7f-6296-41a2-bd1a-9371d5db4c97︡{"stderr":"Error in lines 1-1\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 982, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/sage/arith/misc.py\", line 1091, in next_prime\n    return ZZ(n).next_prime(proof)\n  File \"sage/rings/integer.pyx\", line 5341, in sage.rings.integer.Integer.next_prime (/projects/sage/sage-7.5/src/build/cythonized/sage/rings/integer.c:34825)\n    p = Integer(self._pari_().nextprime(True))\n  File \"sage/libs/cypari2/gen.pyx\", line 4232, in sage.libs.cypari2.gen.gen.nextprime (/projects/sage/sage-7.5/src/build/cythonized/sage/libs/cypari2/gen.c:124908)\n    sig_on()\n  File \"src/cysignals/signals.pyx\", line 97, in cysignals.signals.sig_raise_exception (build/src/cysignals/signals.c:1303)\nKeyboardInterrupt\n"}︡{"stderr":"*** WARNING: Code contains non-ascii characters ***\n"}︡{"done":true}︡
︠163b7ca1-d1f7-4ea2-8a50-5cdf8bc2d1a5o︠
#Logikai kifejezések (not/or/and, bw: ~|&^)
20 % 2 != 1 & 20 != 5 != 1
20 % 2 != 1 and 20 != 5 != 1
︡63444170-4fe3-4030-a3aa-9a128ca9c6c8︡{"stdout":"False\n"}︡{"stdout":"True\n"}︡{"done":true}︡
︠c8aecf75-0def-457f-b307-70f1f5e9f013o︠
[i for i in range(1, 100) if (i % 2 != 1) & (i % 3 != 1)]
︡d111a08d-744e-4f45-b654-d94234f5ecc3︡{"stdout":"[2, 6, 8, 12, 14, 18, 20, 24, 26, 30, 32, 36, 38, 42, 44, 48, 50, 54, 56, 60, 62, 66, 68, 72, 74, 78, 80, 84, 86, 90, 92, 96, 98]\n"}︡{"done":true}︡
︠37b8b817-5108-4928-ad3f-2befc7b49122o︠
#Halmazok
H1 = Set([1, 2, 3,3])
H1
︡5ec16c9e-2d15-4aac-8037-46c8b31c4c81︡︡{"stdout":"{1, 2, 3}\n","done":false}︡{"done":true}
︠9dddc750-712d-4ab8-b4bf-fc5500cba4f5o︠
H2 = Set([3, 4, 5]); H2 # ilyenkor kell a szeparáló karakter
︡848cb69f-8a33-472f-bdbd-70b0a28c16a1︡︡{"stdout":"{3, 4, 5}\n","done":false}︡{"done":true}
︠5c5791a5-573e-4541-8973-c6d4deb0577ao︠
H1.intersection(H2)
︡6ab7feae-c3e7-453f-b95d-5e722a8421d7︡︡{"stdout":"{3}\n","done":false}︡{"done":true}
︠e726c4ff-9a76-4253-bedd-2697ea7ecdb0o︠
#Random számok
random?
︡2d11a2bc-ae0a-489a-a6bd-2c8a7b13947e︡{"code":{"filename":null,"lineno":-1,"mode":"text/x-rst","source":"File: /projects/sage/sage-7.5/local/lib/python2.7/site-packages/sage/misc/prandom.py\nSignature : random()\nDocstring :\nGet the next random number in the range [0.0, 1.0).\n\nEXAMPLES:\n\n   sage: [random() for i in [1 .. 4]]\n   [0.111439293741037, 0.5143475134191677, 0.04468968524815642, 0.332490606442413]"}}︡{"done":true}︡
︠d7947e48-5502-43cb-9374-0f31c5775c60o︠
#Előző számítási eredmény használata
2+2
_+3
︡f19519b1-cb5a-41c1-9fbc-9b9579e176ab︡{"stdout":"4\n"}︡{"stdout":"7\n"}︡{"done":true}︡
︠d2bf42e5-dd83-47e0-b60b-b500aa4b18f1o︠
_+3
︡f61418cc-72a3-4143-ba4c-c375cde3a8d7︡{"stdout":"10\n"}︡{"done":true}︡
︠cc569a8a-ab91-4766-a041-8aba321b90efo︠
#Komplez szám
var('i')
︡c391dd75-4c9b-462e-acc9-42b799ba9d09︡{"stdout":"i\n"}︡{"done":true}︡
︠9eb6e628-a62d-489b-b1e0-830a1e19d697o︠
i^2
︡3273354c-6608-4383-9ed0-3c36c1ae63f8︡︡{"stdout":"i^2\n","done":false}︡{"done":true}
︠df7fa68f-1a97-4879-a92c-cd5d3d08e4aco︠
reset('i')
︡ee79c290-34af-4399-9af0-4f2460dded70︡︡{"done":true}
︠81efead4-f288-4129-b13a-80a76957b848o︠
i^2









