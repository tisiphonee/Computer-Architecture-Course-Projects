import random


def gen_rnd():
    return format(random.randint(2**4, 2**10 - 1), '010b')


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
for _ in range(100):
    A = gen_rnd()[:10]
    B = gen_rnd_2()[:10]
    Q = div(A, B)[:10]
    float_A = int(A, 2) / (2 ** 4)
    float_B = int(B, 2) / (2 ** 4)
    Q_res = int(Q, 2) / (2 ** 4)
    # print(float_A, float_B, float_A/float_B, Q_res, Q)
    if Q_res != (float_A/float_B):
        Q = "OVERFLOW!"
        i += 1
    data.append((A, B, Q))

print(i)

with open('input.txt', 'w') as file:
    for A, B, Q in data:
        file.write(
            f'A = 10\'b{A};\nB = 10\'b{B};\nrst = 1; start = 0;\n\n#10 rst = 0; start = 1; #178; $display("Q=%b", Q);\n\n')

with open('output.txt', 'w') as file:
    for A, B, Q in data:
        file.write(f'# Q={Q}\n')

with open('output2.txt', 'w') as file:
    for A, B, Q in data:
        file.write(f'A = {A} , B= {B} , Q = {Q} \n')
