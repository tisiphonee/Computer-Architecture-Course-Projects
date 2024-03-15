import random


def gen_rnd():
    return format(random.randint(2**4, 2**9 - 1), '010b')


def gen_rnd_2():
    return format(random.randint(1, 2**2 - 1)*8, '010b')


def div(A, B):
    int_A = int(A, 2)
    int_B = int(B, 2)

    res = int_A / int_B
    bin = format(int(res * (2 ** 4)), '010b')
    return bin


data = []
i = 0
sum = 0
for i in range(1, 5):
    sum += 1/(2**i)

for _ in range(100):
    A = gen_rnd()[:10]
    B = gen_rnd_2()[:10]
    Q = div(A, B)[:10]
    float_A = int(A, 2) / (2 ** 4)
    float_B = int(B, 2) / (2 ** 4)
    Q_res = int(Q, 2) / (2 ** 4)

    if (float_A/float_B > (2**5-1)+sum):
        Q = "OVERFLOW!"
        i += 1
    data.append((A, B, Q))

print(i)

with open('input.txt', 'w') as file:
    for A, B, Q in data:
        file.write(
            f'A = 10\'b{A};\nB = 10\'b{B};\nrst = 1; start = 0;\n#10 rst = 0; start = 1;#10 start=0; #380;\n\n')


with open(f'output.txt', 'w') as file:
    for A, B, Q in data:
        file.write(f'A = {A} , B= {B} , Q = {Q} \n')
