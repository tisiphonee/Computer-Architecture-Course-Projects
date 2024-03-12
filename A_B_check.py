def fixed_point_divider(A, B):
    int_A = int(A, 2)
    int_B = int(B, 2)

    result = int_A / int_B

    result_binary = format(int(result * (2 ** 4)), '010b')

    return result_binary


A = '0001101110'
B = '0000000011'
Q = fixed_point_divider(A, B)

float_A = int(A, 2) / (2 ** 4)
float_B = int(B, 2) / (2 ** 4)

print(f'A (float): {float_A}')
print(f'B (float): {float_B}')
print(f'Q: {Q}', float_A/float_B)
