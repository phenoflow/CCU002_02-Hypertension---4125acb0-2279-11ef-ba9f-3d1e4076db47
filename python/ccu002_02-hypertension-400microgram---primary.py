# CVD-COVID-UK consortium, William N Whiteley, et al., 2024.

import sys, csv, re

codes = [{"code":"0205020E0AAAHAH","system":"snomedct"},{"code":"0205020E0AAABAB","system":"snomedct"},{"code":"0205040S0AAAIAI","system":"snomedct"},{"code":"0205020E0AAACAC","system":"snomedct"},{"code":"0205020E0AAAGAG","system":"snomedct"},{"code":"0205020M0BBACAC","system":"snomedct"},{"code":"0205020E0BBAAAC","system":"snomedct"},{"code":"0205020M0BBAAAA","system":"snomedct"},{"code":"0205051U0AAAAAA","system":"snomedct"},{"code":"0205040S0BBAAAB","system":"snomedct"},{"code":"0205020M0AAACAC","system":"snomedct"},{"code":"0205020M0AAAAAA","system":"snomedct"},{"code":"0205020E0AAAFAF","system":"snomedct"},{"code":"0205020M0AAABAB","system":"snomedct"},{"code":"0205020E0BBADAB","system":"snomedct"},{"code":"0205020M0BBABAB","system":"snomedct"},{"code":"0205010V0AAACAC","system":"snomedct"},{"code":"0205040S0AAABAB","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_02-hypertension-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_02-hypertension-400microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_02-hypertension-400microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_02-hypertension-400microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
