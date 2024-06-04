# CVD-COVID-UK consortium, William N Whiteley, et al., 2024.

import sys, csv, re

codes = [{"code":"0205052N0BBABAB","system":"snomedct"},{"code":"0204000K0AAABAB","system":"snomedct"},{"code":"0205052N0AAABAB","system":"snomedct"},{"code":"0205020H0AAAEAE","system":"snomedct"},{"code":"0205010J0AAAHAH","system":"snomedct"},{"code":"0204000I0BCAAAB","system":"snomedct"},{"code":"0205051F0AADUDU","system":"snomedct"},{"code":"0202010D0AAAFAF","system":"snomedct"},{"code":"0204000I0AAABAB","system":"snomedct"},{"code":"0204000K0BDAAAB","system":"snomedct"},{"code":"0202010L0AAACAC","system":"snomedct"},{"code":"0202010F0BBAAAA","system":"snomedct"},{"code":"0205051F0AAAFAF","system":"snomedct"},{"code":"0202030S0AAAUAU","system":"snomedct"},{"code":"0202010F0AAAAAA","system":"snomedct"},{"code":"0202030W0AAAAAA","system":"snomedct"},{"code":"0204000E0AAABAB","system":"snomedct"},{"code":"0202030S0BBABAU","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_02-hypertension-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_02-hypertension-500mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_02-hypertension-500mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_02-hypertension-500mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
