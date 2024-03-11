import difflib

out1 = "check.txt"
out2 = "output.txt"

with open(out1, 'r') as file:
    out_cnt = file.readlines()

with open(out2, 'r') as file:
    out2_cnt = file.readlines()

differ = difflib.Differ()
diff = list(differ.compare(out_cnt, out2_cnt))

diff_found = False
for i, line in enumerate(diff, 1):
    if line.startswith('-') or line.startswith('+'):
        diff_found = True
        print(f"Line {i}: {line.strip()}")

if not diff_found:
    print("NO DIFF :)")
