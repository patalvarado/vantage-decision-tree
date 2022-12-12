-- Vantage-LIVE Query 2 - Train the Model
call trng_xsp.td_analyze('decisiontree',
                         'database =            adldsd_ml_lab;
                          tablename =           Subscriber_Training_ADS;
                          columns =             tot_age,
                                                tot_income,
                                                tot_cust_years,
                                                tot_children,
                                                single_ind,
                                                married_ind,
                                                separated_ind,
                                                ck_acct_ind,
                                                sv_acct_ind,
                                                sv_avg_bal,
                                                ck_avg_bal,
                                                ca_resident_ind,
                                                ny_resident_ind,
                                                tx_resident_ind,
                                                il_resident_ind,
                                                az_resident_ind,
                                                oh_resident_ind;
                          dependent =           cc_acct_ind;
                          min_records =         2;
                          max_depth =           5;
                          binning =             true;
                          algorithm =           gainratio;
                          pruning =             gainratio;
                          outputdatabase =      adldsd_ml_lab;
                          outputtablename =     CreditAccountDecisionTree;
                          operatordatabase =    trng_xsp;');