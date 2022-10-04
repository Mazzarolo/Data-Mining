arqUrl <- "http://www-usr.inf.ufsm.br/~joaquim/UFSM/DM/ds/usr_data.csv"
download.file(arqUrl, destfile = "./test.csv", method = "curl")
