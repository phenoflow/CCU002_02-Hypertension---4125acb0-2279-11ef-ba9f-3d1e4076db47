# CVD-COVID-UK consortium, William N Whiteley, et al., 2024.

import sys, csv, re

codes = [{"code":"0202010P0BJAAAD","system":"snomedct"},{"code":"0205040D0BJAAAQ","system":"snomedct"},{"code":"0202010P0BLAAAD","system":"snomedct"},{"code":"0206020K0BDAAAB","system":"snomedct"},{"code":"0206020R0BXAAAX","system":"snomedct"},{"code":"0205040S0BCABAD","system":"snomedct"},{"code":"0205040D0BGABAQ","system":"snomedct"},{"code":"020400010BBAAAA","system":"snomedct"},{"code":"0205052C0BBAAAA","system":"snomedct"},{"code":"0205052C0BBABAB","system":"snomedct"},{"code":"0206020C0BCACAC","system":"snomedct"},{"code":"0206020R0BKADAE","system":"snomedct"},{"code":"0202010P0BHAAAD","system":"snomedct"},{"code":"0202010P0BQAAAD","system":"snomedct"},{"code":"0205052C0BBADAD","system":"snomedct"},{"code":"0202010P0BMAAAD","system":"snomedct"},{"code":"0205040V0BCAAAB","system":"snomedct"},{"code":"0205040D0BIAAAQ","system":"snomedct"},{"code":"0205052C0BBACAC","system":"snomedct"},{"code":"0205040D0BEAAAQ","system":"snomedct"},{"code":"0205040D0BKAAAQ","system":"snomedct"},{"code":"0205052C0BBAEAH","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_02-hypertension-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_02-hypertension-tablet---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_02-hypertension-tablet---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_02-hypertension-tablet---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
