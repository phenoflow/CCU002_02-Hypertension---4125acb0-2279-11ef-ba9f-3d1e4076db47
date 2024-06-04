# CVD-COVID-UK consortium, William N Whiteley, et al., 2024.

import sys, csv, re

codes = [{"code":"0206020A0BBABAB","system":"snomedct"},{"code":"198999008","system":"snomedct"},{"code":"198997005","system":"snomedct"},{"code":"199006004","system":"snomedct"},{"code":"199005000","system":"snomedct"},{"code":"199008003","system":"snomedct"},{"code":"67359005","system":"snomedct"},{"code":"199007008","system":"snomedct"},{"code":"199002002","system":"snomedct"},{"code":"199000005","system":"snomedct"},{"code":"199003007","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_02-hypertension-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_02-hypertension-istin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_02-hypertension-istin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_02-hypertension-istin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
