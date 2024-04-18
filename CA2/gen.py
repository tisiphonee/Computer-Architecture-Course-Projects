import random


def gen(n):
    for i in range(1, n+1):
        random_numbers = [random.randint(-2**31, 2**31 - 1) for _ in range(10)]

        with open(f'test_cases/arr{i}.mem', 'w') as mem_file, open(f'test_cases/array{i}.txt', 'w') as array_file:
            address = 0x3e8

            for number in random_numbers:
                bytes_list = [(number >> i) & 0xFF for i in (24, 16, 8, 0)]
                mem_file.write(f"@{hex(address)[2:]}\n")
                for byte in bytes_list:
                    mem_file.write(f"{byte:08b}\n")
                address += 4

                array_file.write(f"{number} || {number:32b} \n")

            array_file.write(f"Max: {max(random_numbers)}")


gen(1)
