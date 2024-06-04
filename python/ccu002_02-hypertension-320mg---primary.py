# CVD-COVID-UK consortium, William N Whiteley, et al., 2024.

import sys, csv, re

codes = [{"code":"0206020R0BBAFAR","system":"snomedct"},{"code":"0206020R0BGAAAH","system":"snomedct"},{"code":"0205051Q0BBACAC","system":"snomedct"},{"code":"0206020R0AAAHAH","system":"snomedct"},{"code":"0205052B0AAABAB","system":"snomedct"},{"code":"0205051L0AAAZAZ","system":"snomedct"},{"code":"0206020R0BTAAAS","system":"snomedct"},{"code":"0205051F0AABPBP","system":"snomedct"},{"code":"0204000M0AAAHAH","system":"snomedct"},{"code":"0202010Y0BBAAAA","system":"snomedct"},{"code":"0205052B0BBABAB","system":"snomedct"},{"code":"0205051W0AAACAC","system":"snomedct"},{"code":"0206020R0CEABAR","system":"snomedct"},{"code":"0205051L0AAAYAY","system":"snomedct"},{"code":"0205052ADAAAAAA","system":"snomedct"},{"code":"0205051J0AAABAB","system":"snomedct"},{"code":"0205052V0BBAEAF","system":"snomedct"},{"code":"0204000U0AAAAAA","system":"snomedct"},{"code":"0204000M0AAAGAG","system":"snomedct"},{"code":"0205010Y0BBAAAA","system":"snomedct"},{"code":"0206020R0CEAAAR","system":"snomedct"},{"code":"0202030S0AADDDD","system":"snomedct"},{"code":"0205052Q0BCACAC","system":"snomedct"},{"code":"0205051J0BBABAB","system":"snomedct"},{"code":"0205051L0AAADAD","system":"snomedct"},{"code":"0206020R0AAASAS","system":"snomedct"},{"code":"0206020R0AAARAR","system":"snomedct"},{"code":"0205010Y0AAAAAA","system":"snomedct"},{"code":"0206020Q0AAAAAA","system":"snomedct"},{"code":"0205052Q0AAACAC","system":"snomedct"},{"code":"0206020R0BBAJAR","system":"snomedct"},{"code":"0205051L0BBADAD","system":"snomedct"},{"code":"0205051Q0AAACAC","system":"snomedct"},{"code":"0204000N0AAABAB","system":"snomedct"},{"code":"0204000U0BCAAAA","system":"snomedct"},{"code":"0205051W0BBACAC","system":"snomedct"},{"code":"0206020L0BBABAB","system":"snomedct"},{"code":"0205052V0AAAFAF","system":"snomedct"},{"code":"0206020L0AAABAB","system":"snomedct"},{"code":"0206020B0BBAAAA","system":"snomedct"},{"code":"0205010Z0BBAAAA","system":"snomedct"},{"code":"0205051I0AAADAD","system":"snomedct"},{"code":"0202010Y0AAAAAA","system":"snomedct"},{"code":"0205052Q0BBACAC","system":"snomedct"},{"code":"0205051I0BBADAD","system":"snomedct"},{"code":"0205052ADBBAAAA","system":"snomedct"},{"code":"0206020Q0BBAAAA","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_02-hypertension-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_02-hypertension-320mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_02-hypertension-320mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_02-hypertension-320mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
