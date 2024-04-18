with open("hex.txt", "r") as file:
    hex_nums = file.readlines()

hex_nums = [line.strip() for line in hex_nums]

with open("out.txt", "w") as output_file:
    for hex_num in hex_nums:
        binary_num = bin(int(hex_num, 16))[2:].zfill(32)
        bytes_list = [(int(binary_num, 2) >> i) & 0xFF for i in (24, 16, 8, 0)]
        for byte in bytes_list:
            output_file.write(format(byte, '08b') + "\n")
        output_file.write("\n")
