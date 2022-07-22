︠8941bd19-c379-4a9f-8d0d-aebd27b5d514s︠
p , q = random_prime(2^512), random_prime(2^512)
n = p*q
ZZn = IntegerModRing(n)
print(ZZn)
︡06ec9678-faa7-45f2-8f03-e4f0d92857a6︡{"stdout":"Ring of integers modulo 49024158303925786047458506369310099415355573452326985620536122960296575849727371534230948843285194129783214812432019037905450009485788947225800236260297612580159166093285473276036299013577049890083596113545007093039490664971200853595949064984256596303233795399336940370735210555612410220588911831986310544193\n"}︡{"done":true}
︠1a516fe6-fa73-4a12-8f15-257dcc4a9971s︠
r = (p-1)*(q-1)
ZZr = IntegerModRing(r)
print(ZZr)
︡50300856-b470-479d-9c7a-666642967800︡{"stdout":"Ring of integers modulo 49024158303925786047458506369310099415355573452326985620536122960296575849727371534230948843285194129783214812432019037905450009485788947225800236260297598038524292339549850991510230731717255551516922412035326859200573836417235292445683425843563405147348736043544258387238872770466841623352290210324035983808\n"}︡{"done":true}
︠0ddb6c0c-6ea6-4a33-8374-69ddd1c3a3efs︠
e = ZZ.random_element(r)
while gcd(e,r) != 1:
    e = ZZ.random_element(r)
︡e9daea30-724b-4a2d-9cc2-f00196f1a0a6︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.9/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"sage/rings/integer_ring.pyx\", line 759, in sage.rings.integer_ring.IntegerRing_class.random_element (build/cythonized/sage/rings/integer_ring.c:6641)\n    if x is not None and y is None and x <= 0:\nTypeError: '<=' not supported between instances of 'function' and 'int'\n"}︡{"done":true}︡
︠ce01995c-83fe-4d35-9996-306cd14c2b98s︠
type(e)    
︡558b6448-4cdd-4373-86e2-790a072b17b5︡{"stdout":"<class 'sage.rings.integer.Integer'>\n"}︡{"done":true}
︠ed8cf8e9-06f4-44df-a94d-7efe918001e5s︠
type(ZZr(e))
︡2ce69967-71aa-4d08-b0fe-82e8db34e217︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n"}︡{"stderr":"  File \"sage/symbolic/expression.pyx\", line 1507, in sage.symbolic.expression.Expression._integer_ (build/cythonized/sage/symbolic/expression.cpp:36224)\n    n = self.pyobject()\n  File \"sage/symbolic/expression.pyx\", line 768, in sage.symbolic.expression.Expression.pyobject (build/cythonized/sage/symbolic/expression.cpp:33363)\n    raise TypeError(\"self must be a numeric expression\")\nTypeError: self must be a numeric expression\n\nDuring handling of the above exception, another exception occurred:\n\nTraceback (most recent call last):\n  File \"sage/rings/finite_rings/integer_mod.pyx\", line 381, in sage.rings.finite_rings.integer_mod.IntegerMod_abstract.__init__ (build/cythonized/sage/rings/finite_rings/integer_mod.c:6199)\n    z = integer_ring.Z(value)\n  File \"sage/structure/parent.pyx\", line 897, in sage.structure.parent.Parent.__call__ (build/cythonized/sage/structure/parent.c:9450)\n    return mor._call_(x)\n  File \"sage/structure/coerce_maps.pyx\", line 287, in sage.structure.coerce_maps.NamedConvertMap._call_ (build/cythonized/sage/structure/coerce_maps.c:6154)\n    cdef Element e = method(C)\n  File \"sage/symbolic/expression.pyx\", line 1509, in sage.symbolic.expression.Expression._integer_ (build/cythonized/sage/symbolic/expression.cpp:36273)\n    raise TypeError(\"unable to convert %r to an integer\" % self)\nTypeError: unable to convert e to an integer\n\nDuring handling of the above exception, another exception occurred:\n\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.9/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"sage/structure/parent.pyx\", line 897, in sage.structure.parent.Parent.__call__ (build/cythonized/sage/structure/parent.c:9450)\n    return mor._call_(x)\n  File \"sage/structure/coerce_maps.pyx\", line 161, in sage.structure.coerce_maps.DefaultConvertMap_unique._call_ (build/cythonized/sage/structure/coerce_maps.c:4734)\n    raise\n  File \"sage/structure/coerce_maps.pyx\", line 156, in sage.structure.coerce_maps.DefaultConvertMap_unique._call_ (build/cythonized/sage/structure/coerce_maps.c:4626)\n    return C._element_constructor(x)\n  File \"/ext/sage/9.6/local/var/lib/sage/venv-python3.10.3/lib/python3.10/site-packages/sage/rings/finite_rings/integer_mod_ring.py\", line 1185, in _element_constructor_\n    return integer_mod.IntegerMod(self, x)\n  File \"sage/rings/finite_rings/integer_mod.pyx\", line 202, in sage.rings.finite_rings.integer_mod.IntegerMod (build/cythonized/sage/rings/finite_rings/integer_mod.c:4878)\n    return t(parent, value)\n  File \"sage/rings/finite_rings/integer_mod.pyx\", line 385, in sage.rings.finite_rings.integer_mod.IntegerMod_abstract.__init__ (build/cythonized/sage/rings/finite_rings/integer_mod.c:6292)\n    value = value.pyobject()\n  File \"sage/symbolic/expression.pyx\", line 712, in sage.symbolic.expression.Expression.pyobject (build/cythonized/sage/symbolic/expression.cpp:33440)\n    cpdef object pyobject(self):\n  File \"sage/symbolic/expression.pyx\", line 768, in sage.symbolic.expression.Expression.pyobject (build/cythonized/sage/symbolic/expression.cpp:33363)\n    raise TypeError(\"self must be a numeric expression\")\nTypeError: self must be a numeric expression\n"}︡{"done":true}︡
︠353cc928-a9ac-4fb3-907a-c573ef21112fs︠
d = ZZr(e)^-1
m = ZZn.random_element()
s = m^e
s^d == m
︡3c499f26-7560-46ac-b388-f883a1b7bef3︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.9/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\nNameError: name 'ZZr' is not defined\n"}︡{"done":true}︡
︠86c80094-23de-4680-ae54-f42442aa36b6︠
# lattices

## Integer Matrices
A = random_matrix(ZZ, 100, 100, x = -2^32, y =2^32)
A*A
︡f7db45a5-e237-420a-a58b-51cba1b52575︡{"stdout":"100 x 100 dense matrix over Integer Ring\n"}︡{"done":true}
︠9c56d0a7-1918-4684-8c60-bcdaaf7cca39s︠
A.norm().log(2).n()
︡caa86b4b-ed93-43d3-9d2e-2cfbca1313da︡{"stdout":"35.5554845917909"}︡{"stdout":"\n"}︡{"done":true}
︠ae97cfab-4511-42c8-a98b-fbe77ad62c64s︠
abs(A.det()).log(2).n()
︡e551fcf6-b874-496d-8bb2-6f371afb0f6d︡{"stdout":"3380.35751028989"}︡{"stdout":"\n"}︡{"done":true}
︠099180f1-e8fa-4e3e-aea8-737bd6285339s︠
## basis for Q-Aryy lattices
### We construct a basis for q-lattice
### We pick parameters
︡4c36225e-538f-4cdf-a246-809f6f297b0d︡{"done":true}
︠2a1af457-6338-499a-9f91-8bd91a4bfb7ds︠
m,n,q = 5,3,101
︡653b9832-d751-494c-86ba-1a1b9265d1b6︡{"done":true}
︠ce87d909-2c08-4279-848a-c88fa1201f32s︠
# compute the reduced row-echelon form of A
A = random_matrix(GF(q),n,m)
A.echelonize()
︡72d41f68-b655-4699-9681-f5f9761c6dd8︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.9/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\nNameError: name 'q' is not defined\n"}︡{"done":true}︡
︠ea1e60bf-9296-43b1-8bb2-50ee517c4766s︠
# we stack A on top of a matrix accounting for modular reductions
N = A.change_ring(ZZ)
S = matrix(ZZ, m-n, n).augment(q * identity_matrix(m-n))
N.stack(S, subdivide=True)
︡77f0eee9-73b4-4064-aa71-ac0ddcb73203︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.9/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\nNameError: name 'm' is not defined\n"}︡{"done":true}︡
︠53158960-27ea-46af-9ce0-7ffb2fbc168fs︠
# instance generator
## if you want some typical lattice to play with
sage.crypto.gen_lattice(m=10, seed=135, type='modular')
︡480ea548-ef2e-4e29-aa98-7724653328ba︡{"stdout":"[11  0  0  0  0  0  0  0  0  0]\n[ 0 11  0  0  0  0  0  0  0  0]\n[ 0  0 11  0  0  0  0  0  0  0]\n[ 0  0  0 11  0  0  0  0  0  0]\n[ 2 -4 -5  0  1  0  0  0  0  0]\n[-3 -3  1  5  0  1  0  0  0  0]\n[ 1 -5 -3  4  0  0  1  0  0  0]\n[ 1  2 -4  2  0  0  0  1  0  0]\n[ 4 -5  3 -3  0  0  0  0  1  0]\n[ 5  3 -3  4  0  0  0  0  0  1]\n"}︡{"done":true}
︠dff5ae09-b134-4978-99d8-ab6a73371bd6s︠
### LLL is available
A = sage.crypto.gen_lattice(m=10, seed=135, type='modular')
A.LLL(delta=0.99, eta=0.51)
︡e4b50a4d-9e74-456d-8fd2-57b4a7511ee9︡{"stdout":"[ 1  1  0  0  1  1  1  1  0  0]\n[ 0  1  1  1  1  1  0  0 -1  1]\n[ 0  0  1  0 -1 -1  1  0  1  1]\n[ 1  0  1  1  1 -1 -1 -1  1  1]\n[-1 -1  0  1  1  1  1  1  1  1]\n[-1  0  0  0  0 -2  1  0 -2  0]\n[-1  1  0 -2  1 -1 -1  0  0 -1]\n[ 1 -2  0  0  1  0  1 -2  0  0]\n[-1  0  1  1  0 -1  1  1  1 -2]\n[ 0 -2  1 -1  0 -1 -1  1 -1 -2]"}︡{"stdout":"\n"}︡{"done":true}
︠3631fd21-8ac5-4217-a6c7-8a59b90fa125s︠
## BKZ is available
A = sage.crypto.gen_lattice(m=100, seed=135, q = next_prime(2^20))
B = A.BKZ(block_size=60, proof=False)
B[0].norm().log(2).n()
︡4b33f2e8-a073-479a-b5bc-8712ba8e0d6f︡{"stdout":"2.29248125036058"}︡{"stdout":"\n"}︡{"done":true}︡
︠c4da4c4f-6aa0-4d71-afe6-42792fdde4f7s︠
# Passing proof=False enables BKZ 2.0 with some decent
# heuristics. It will be much faster than proof=True which reverts
# back to plain BKZ without any pruning or recursive preprocessing.
︡ccaef88f-6f41-4c31-8cef-591fe7fdb4ea︡{"done":true}
︠aa0642c0-bc3e-49db-841d-25b11bccaa49s︠
# sometimes its more natural to work with a lattice object directly instead of base matrix
from sage.modules.free_module_integer import IntegerLattice
A = random_matrix(ZZ, 80, 80, x=-2000, y=2000)
L = IntegerLattice(A); L
︡35342961-c6ea-4f38-99a0-ddaab7017d58︡{"stdout":"Free module of degree 80 and rank 80 over Integer Ring\nUser basis matrix:\n80 x 80 dense matrix over Integer Ring"}︡{"stdout":"\n"}︡{"done":true}
︠c1fc38e0-58f7-4aa6-bba2-877365e55220s︠
L.shortest_vector().norm().log(2).n()
︡e0db3b42-bf02-4a7b-bbac-eeca9f62a3bd︡{"stdout":"13.1150266775933"}︡{"stdout":"\n"}︡{"done":true}
︠5916f10f-3c27-4ac9-bc24-83a7d3930f68s︠
# discrete Gaussian Samplers
from sage.stats.distributions.discrete_gaussian_integer import DiscreteGaussianDistributionIntegerSampler

D = DiscreteGaussianDistributionIntegerSampler(3,2)

histogram([D() for _ in range(2^16)], color='orange')
︡0bb6e4f5-9822-4977-966d-7e1b09a0b566︡{"file":{"filename":"/home/user/.sage/temp/project-5814df29-8bb4-4e3c-b685-b050b4ada64d/565/tmp_b01ewdgn.svg","show":true,"text":null,"uuid":"59213d33-7ecc-4af5-a042-50362ef0dc4d"},"once":false}︡{"done":true}
︠fe42674a-398d-42fc-a088-c796e19b99b9s︠
# discrete gaussian lattices
# gpv algo for sampling from arbitrary lattices
from sage.stats.distributions.discrete_gaussian_lattice import DiscreteGaussianDistributionLatticeSampler
A = random_matrix(ZZ, 2, 2)
D = DiscreteGaussianDistributionLatticeSampler(A, 20.0)
S = [D() for _ in range(2^12)]
l = [vector(v.list() + [S.count(v)]) for v in set(S)]
list_plot3d(l, point_list=True, interpolation='nn')
︡014a0ec5-0dcb-4d44-aaef-9fd6ec8e2891︡{"file":{"filename":"d10886a0-d699-40cb-8e2f-27a0b5fde2c1.sage3d","uuid":"d10886a0-d699-40cb-8e2f-27a0b5fde2c1"}}︡{"done":true}
︠6fad0b22-2484-47f0-a851-ae8dd3b8bc92s︠
# module also has Regev and LinderPeikert sampler
from sage.crypto.lwe import LWE
# we add noise distribution sampler
D = DiscreteGaussianDistributionIntegerSampler(3.2) # std dev
︡7db1780b-7f2b-4f9b-b009-56d9be413f22︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.9/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\nNameError: name 'DiscreteGaussianDistributionIntegerSampler' is not defined\n"}︡{"done":true}︡
︠bc0179e2-ee1f-4b1c-a251-39cad7b02b03︠
# we can optionally pass in the number m of supported sampels
lwe = LWE(n=10, q=101, D=D)
︡6f5e21d2-428c-4488-9530-93c278f08b95︡{"done":true}
︠bfe2866e-6ac1-4db9-9c02-54dc260c9e6ds︠
# get a sampler and decrypt
a,c = lwe()
#balance(c-a*lwe._LWE__s)
︡80f77005-5b06-41a1-b926-6ddaa2da81b6︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"sage/rings/finite_rings/integer_mod.pyx\", line 381, in sage.rings.finite_rings.integer_mod.IntegerMod_abstract.__init__ (build/cythonized/sage/rings/finite_rings/integer_mod.c:6199)\n    z = integer_ring.Z(value)\n  File \"sage/structure/parent.pyx\", line 897, in sage.structure.parent.Parent.__call__ (build/cythonized/sage/structure/parent.c:9450)\n    return mor._call_(x)\n  File \"sage/structure/coerce_maps.pyx\", line 161, in sage.structure.coerce_maps.DefaultConvertMap_unique._call_ (build/cythonized/sage/structure/coerce_maps.c:4734)\n    raise\n  File \"sage/structure/coerce_maps.pyx\", line 156, in sage.structure.coerce_maps.DefaultConvertMap_unique._call_ (build/cythonized/sage/structure/coerce_maps.c:4626)\n    return C._element_constructor(x)\n  File \"sage/rings/integer.pyx\", line 717, in sage.rings.integer.Integer.__init__ (build/cythonized/sage/rings/integer.c:6766)\n    raise TypeError(\"unable to coerce %s to an integer\" % type(x))\nTypeError: unable to coerce <class 'sage.modules.vector_integer_dense.Vector_integer_dense'> to an integer\n\nDuring handling of the above exception, another exception occurred:\n\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.9/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/9.6/local/var/lib/sage/venv-python3.10.3/lib/python3.10/site-packages/sage/crypto/lwe.py\", line 364, in __call__\n    return a, a.dot_product(self.__s) + self.K(self.D())\n  File \"sage/structure/parent.pyx\", line 897, in sage.structure.parent.Parent.__call__ (build/cythonized/sage/structure/parent.c:9450)\n    return mor._call_(x)\n  File \"sage/structure/coerce_maps.pyx\", line 161, in sage.structure.coerce_maps.DefaultConvertMap_unique._call_ (build/cythonized/sage/structure/coerce_maps.c:4734)\n    raise\n  File \"sage/structure/coerce_maps.pyx\", line 156, in sage.structure.coerce_maps.DefaultConvertMap_unique._call_ (build/cythonized/sage/structure/coerce_maps.c:4626)\n    return C._element_constructor(x)\n  File \"/ext/sage/9.6/local/var/lib/sage/venv-python3.10.3/lib/python3.10/site-packages/sage/rings/finite_rings/integer_mod_ring.py\", line 1185, in _element_constructor_\n    return integer_mod.IntegerMod(self, x)\n  File \"sage/rings/finite_rings/integer_mod.pyx\", line 202, in sage.rings.finite_rings.integer_mod.IntegerMod (build/cythonized/sage/rings/finite_rings/integer_mod.c:4878)\n    return t(parent, value)\n  File \"sage/rings/finite_rings/integer_mod.pyx\", line 389, in sage.rings.finite_rings.integer_mod.IntegerMod_abstract.__init__ (build/cythonized/sage/rings/finite_rings/integer_mod.c:6408)\n    value = sage.rings.rational_field.QQ(value)\n  File \"sage/structure/parent.pyx\", line 897, in sage.structure.parent.Parent.__call__ (build/cythonized/sage/structure/parent.c:9450)\n    return mor._call_(x)\n  File \"sage/structure/coerce_maps.pyx\", line 161, in sage.structure.coerce_maps.DefaultConvertMap_unique._call_ (build/cythonized/sage/structure/coerce_maps.c:4734)\n    raise\n  File \"sage/structure/coerce_maps.pyx\", line 156, in sage.structure.coerce_maps.DefaultConvertMap_unique._call_ (build/cythonized/sage/structure/coerce_maps.c:4626)\n    return C._element_constructor(x)\n  File \"sage/rings/rational.pyx\", line 538, in sage.rings.rational.Rational.__init__ (build/cythonized/sage/rings/rational.cpp:6535)\n    self.__set_value(x, base)\n  File \"sage/rings/rational.pyx\", line 691, in sage.rings.rational.Rational.__set_value (build/cythonized/sage/rings/rational.cpp:8679)\n    raise TypeError(\"unable to convert {!r} to a rational\".format(x))\nTypeError: unable to convert (21, -3) to a rational\n"}︡{"done":true}︡
︠32793590-b5c3-462c-aaac-a77d5ed7e120s︠
## FPYLLL
from fpylll import *
A = IntegerMatrix(50,50)
A.randomize("ntrulike", bits=50, q= 127)
A[0].norm()
︡5990a2ec-3d4e-416b-8e28-9ce9bff0c798︡{"stdout":"327.94511735959725\n"}︡{"done":true}︡
︠2faa86b6-e29d-4ee3-a5f5-c8a4cf444fe6s︠
# we create a Gram_schmidt object for orthogonilzation
M = GSO.Mat(A)
_ = M.update_gso()
M.get_mu(1,0)
︡c3f90a2d-82aa-4ca6-bff6-66f0fd43c591︡{"stdout":"-0.04\n"}︡{"done":true}
︠1ced5f55-6a7d-4c80-a63e-92294279c751s︠
# we create an LLL Object that acts on M
L = LLL.Reduction(M)
L()
M.get_mu(1,0)
︡7259e3eb-76bc-429c-8cc1-aba200fdea70︡{"stdout":"-0.04\n"}︡{"done":true}
︠b029a958-d191-424a-9d1a-00ff82543876s︠
A[0].norm()
︡f88a7d3d-8ae7-4606-8bb2-eabcd7a39b38︡{"stdout":"5.0\n"}︡{"done":true}
︠dbd5f4fb-e3bb-4af9-934f-d01798cd82c7︠









