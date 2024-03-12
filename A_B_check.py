def fixed_point_divider(A, B):
    int_A = int(A, 2)
    int_B = int(B, 2)

    result = int_A / int_B

    result_binary = format(int(result * (2 ** 4)), '010b')

    return result_binary


A = '0001010010'
B = '0000011000'
Q = fixed_point_divider(A, B)

float_A = int(A, 2) / (2 ** 4)
float_B = int(B, 2) / (2 ** 4)
Q_res = int(Q, 2) / (2 ** 4)
print(Q_res)
print(Q_res - (float_A/float_B))
print(abs(Q_res - (float_A/float_B)) > 0.125)

print(f'A (float): {float_A}')
print(f'B (float): {float_B}')
print(f'Q: {Q}', float_A/float_B)

sum = 0
for i in range(1, 5):
    print(1/(2**i))
    sum += 1/(2**i)
print(sum)
