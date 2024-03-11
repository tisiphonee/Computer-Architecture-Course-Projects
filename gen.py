import random


def gen_rnd():
    return format(random.randint(0, 2**10 - 1), '010b')


def div(A, B):
    int_A = int(A, 2)
    int_B = int(B, 2)
    res = int_A / int_B
    bin = format(int(res * (2 ** 4)), '010b')
    return bin


data = []
for _ in range(100):
    A = gen_rnd()
    B = gen_rnd()
    Q = div(A, B)
    data.append((A, B, Q))

with open('input.txt', 'w') as file:
    for A, B, Q in data:
        file.write(
            f'A = 10\'b{A};\nB = 10\'b{B};\nrst = 1; start = 0; ld_a = 1; ld_b = 1;\n\n#10 rst = 0; start = 0; #140; $display("%bQ=%b", CO_CNT, Q);\n\n')

with open('output.txt', 'w') as file:
    for A, B, Q in data:
        file.write(f'# 1Q={Q}\n')

with open('output.txt', 'w') as file:
    for A, B, Q in data:
        file.write(f'A = {A} , B= {B} , Q = {Q} \n')
