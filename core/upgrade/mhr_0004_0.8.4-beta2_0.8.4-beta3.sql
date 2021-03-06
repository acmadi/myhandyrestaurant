
#
# My Handy Restaurant
# SQL upgrade code generator
#


#
# Do not modify the following line
# Database_type: common
#


#
# Compare report tree
#

# [add] [tables] [mhr_countries] [add] =  1 

#
# Upgrade SQL code
#

CREATE TABLE `mhr_countries` (  `id` int(11) NOT NULL auto_increment,  `name` text NOT NULL,  `currency_letter` text NOT NULL,  `currency_name` text NOT NULL,  `currency_html` text NOT NULL,  PRIMARY KEY  (`id`)) TYPE=MyISAM;

#
# My Handy Restaurant database dump
#

#
# Generating time: 31 July 2004 at 15:10
#
# Database name: handyrestaurant_common
# Database type: main
#

# ------------------------------------------------------

#
# Table: mhr_conf
#

#
# Structure dump for table mhr_conf 
#

DROP TABLE IF EXISTS `mhr_conf`;
CREATE TABLE `mhr_conf` (
  `id` int(11) NOT NULL auto_increment,
  `name` mediumtext NOT NULL,
  `value` mediumtext NOT NULL,
  `bool` tinyint(4) NOT NULL default '0',
  `defaultval` mediumtext NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_conf 
#

INSERT INTO `mhr_conf` VALUES ('1', 'max_ingreds_per_page', '5', '0', '5');
INSERT INTO `mhr_conf` VALUES ('3', 'top_list_last_orders_keep', '500', '0', '500');
INSERT INTO `mhr_conf` VALUES ('4', 'top_list_show_top', '3', '0', '3');
INSERT INTO `mhr_conf` VALUES ('5', 'show_mods_in_summary', '0', '1', '0');
INSERT INTO `mhr_conf` VALUES ('6', 'day_end', '033000', '0', '033000');
INSERT INTO `mhr_conf` VALUES ('7', 'printing_system', 'lp', '0', 'cupsys');
INSERT INTO `mhr_conf` VALUES ('8', 'association_automatic', '0', '1', '0');
INSERT INTO `mhr_conf` VALUES ('9', 'disassociation_allow', '1', '1', '1');
INSERT INTO `mhr_conf` VALUES ('10', 'autocalc_considers_removed', '0', '1', '0');
INSERT INTO `mhr_conf` VALUES ('11', 'refresh_time', '0.5', '0', '0.5');
INSERT INTO `mhr_conf` VALUES ('12', 'refresh_time_management', '0.5', '0', '0.5');
INSERT INTO `mhr_conf` VALUES ('13', 'management_table_header_repeater', '20', '0', '20');
INSERT INTO `mhr_conf` VALUES ('15', 'lock_time', '10', '0', '10');
INSERT INTO `mhr_conf` VALUES ('16', 'default_language', 'it', '0', '');
INSERT INTO `mhr_conf` VALUES ('17', 'vendor_name', 'Fabio De Pascale', '0', '');
INSERT INTO `mhr_conf` VALUES ('18', 'vendor_email', 'public@fabiolinux.com', '0', '');
INSERT INTO `mhr_conf` VALUES ('19', 'default_quantity', '1', '0', '1');
INSERT INTO `mhr_conf` VALUES ('20', 'barcode_print', '0', '1', '0');
INSERT INTO `mhr_conf` VALUES ('21', 'print_remaining_tickets_anyway', '1', '1', '1');
INSERT INTO `mhr_conf` VALUES ('22', 'print_remaining_tickets_if_takeaway', '1', '1', '1');
INSERT INTO `mhr_conf` VALUES ('23', 'files_debug_dest', '../debug.log', '0', '../debug.log');
INSERT INTO `mhr_conf` VALUES ('24', 'files_error_dest', '../error.log', '0', '../error.log');
INSERT INTO `mhr_conf` VALUES ('25', 'refresh_automatic_on_menu', '10', '0', '10');
INSERT INTO `mhr_conf` VALUES ('26', 'refresh_automatic_to_menu', '0', '0', '0');
INSERT INTO `mhr_conf` VALUES ('28', 'service_fee_price', '1', '0', '1');
INSERT INTO `mhr_conf` VALUES ('29', 'service_fee_name', 'Service', '0', 'Service');
INSERT INTO `mhr_conf` VALUES ('30', 'invisible_show', '0', '1', '0');
INSERT INTO `mhr_conf` VALUES ('31', 'xml_translations', '0', '1', '0');
INSERT INTO `mhr_conf` VALUES ('32', 'menu_tables_per_row_waiter', '5', '0', '5');
INSERT INTO `mhr_conf` VALUES ('33', 'menu_tables_per_row_cashier', '10', '0', '10');
INSERT INTO `mhr_conf` VALUES ('34', 'conf_allow_easy_delete', '1', '1', '1');
INSERT INTO `mhr_conf` VALUES ('35', 'orders_show_deleted', '1', '1', '1');
INSERT INTO `mhr_conf` VALUES ('36', 'show_summary', '1', '1', '1');
INSERT INTO `mhr_conf` VALUES ('37', 'service_fee_use', '1', '1', '1');
INSERT INTO `mhr_conf` VALUES ('38', 'takeaway_allow_unknown_customer', '0', '1', '0');
INSERT INTO `mhr_conf` VALUES ('42', 'country', '90', '0', '90');
INSERT INTO `mhr_conf` VALUES ('43', 'creation_back_to_category', '1', '1', '1');

# ------------------------------------------------------

#
# Table: mhr_conf_en
#

#
# Structure dump for table mhr_conf_en 
#

DROP TABLE IF EXISTS `mhr_conf_en`;
CREATE TABLE `mhr_conf_en` (
  `id` int(11) NOT NULL auto_increment,
  `table_id` int(11) NOT NULL default '0',
  `table_name` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_conf_en 
#

INSERT INTO `mhr_conf_en` VALUES ('1', '1', '<b>Ingredients per page.</b><br/>Sets the maximum number of ingredients showed on a single page in the modification page. Beyond this value the alphabetical list will be used.');
INSERT INTO `mhr_conf_en` VALUES ('3', '3', '<b>Top list statistics.</b><br/>Number of dishes on which the top list statistics are calculated. The last... dishes.');
INSERT INTO `mhr_conf_en` VALUES ('4', '4', '<b>Number of dishes to be showed in the top list.</b><br/>Eg.: 3 -> the 3 most requested dishes are showed. (0 to disable top list display)');
INSERT INTO `mhr_conf_en` VALUES ('5', '5', '<b>Show the modifications in the last modified summary line.</b><br/>If active, shows all the modifications associated to an order in the summary line.');
INSERT INTO `mhr_conf_en` VALUES ('6', '6', '<b>Closing time.</b><br/>Used to decide when to close the accounting day. To be given in the following format: HHMMSS (Hours, minutes, seconds) without spaces and padded with zeros. Eg: if the place closes and 3:30 in the morning, you should write 033000. Use 24 hours format.');
INSERT INTO `mhr_conf_en` VALUES ('7', '7', '<b>Printing system.</b><br/>The available printing systems are:<br>lp: for linux/unix systems<br>cupsys: for linux/unix systems<br>win: for MS-Windows sytems (not tested)');
INSERT INTO `mhr_conf_en` VALUES ('8', '8', '<b>Automatic association.</b><br/>If active, the waiter is not asked whether to associate the table or not, but the association is always done automatically.');
INSERT INTO `mhr_conf_en` VALUES ('9', '9', '<b>Allow disassociation.</b><br/>If active, the cashier can disassociate a table from a waiter.');
INSERT INTO `mhr_conf_en` VALUES ('10', '10', '<b>Autocalc considers removed ingredients.</b><br/>If active, the automatic price calculator (based on added ingredients number) calculates a removed ingredient as a \"-1\", otherwise it just ignores them.');
INSERT INTO `mhr_conf_en` VALUES ('34', '34', '<b>Allow easy deleting.</b><br/>If active, the waiters can easily delete orders by clicking on the trash icon in the orders list when they reach quantity 1.');
INSERT INTO `mhr_conf_en` VALUES ('11', '11', '<b>Waiters\' zone refresh time.</b><br/>Sets the time in seconds before ok messages disappear automatically in the waiters\' zone. Error messages never disappear automatically.');
INSERT INTO `mhr_conf_en` VALUES ('12', '12', '<b>Global refresh time.</b><br/>Sets the time in seconds before ok messages disappear automatically in any zone except the waiters\' one. Error messages never disappear automatically.');
INSERT INTO `mhr_conf_en` VALUES ('13', '13', '<b>Header repeater.</b><br/>Sets after how many lines the header row should be repeated in the accounting zone.');
INSERT INTO `mhr_conf_en` VALUES ('15', '15', '<b>Table locking time.</b><br/>Time in seconds that has to be between the operation of different waiters on the same table. If set to 0, the lock is disabled.');
INSERT INTO `mhr_conf_en` VALUES ('16', '16', '<b>Default language.</b><br/>Language used in the whole system, where not otherwise specified (for example in the waiters\' zone, where the language of the individual waiter is most prioritary).');
INSERT INTO `mhr_conf_en` VALUES ('17', '17', '<b>Software vendor name.</b><br/>Used in error messages only, to give support address.');
INSERT INTO `mhr_conf_en` VALUES ('18', '18', '<b>Software vendor email address.</b><br/>Used in error messages only, to give support address.');
INSERT INTO `mhr_conf_en` VALUES ('19', '19', '<b>Default quantity.</b><br/>Quantity used by default when taking a new order.');
INSERT INTO `mhr_conf_en` VALUES ('20', '20', '<b>Print bar codes.</b><br/>If active, the control codes needed to print a bar code representing the order id, are sent to the printer. To use this, you need a printer that support bar codes printing.');
INSERT INTO `mhr_conf_en` VALUES ('21', '21', '<b>Always print remaining tickets.</b><br/>If active, prints all the not-yet-printed order tickets when closing a table.');
INSERT INTO `mhr_conf_en` VALUES ('22', '22', '<b>Always print remaining tickets in takeaway.</b><br/>If active, prints all the not-yet-printed order tickets when closing a takeaway table.');
INSERT INTO `mhr_conf_en` VALUES ('23', '23', '<b>Debugging log file.</b><br/>Complete address of the debugging log file. (ex: /var/www/handyrestaurant/debug.log or c:/logs/debug.log)<br/>If this setting is wrong or the file is not writeable, the software will generate an error.');
INSERT INTO `mhr_conf_en` VALUES ('24', '24', '<b>Errors log file.</b><br/>Complete address of the error log file. (ex: /var/www/handyrestaurant/errors.log or c:/logs/errors.log)<br/>If this setting is wrong or the file is not writeable, the software will generate an error.');
INSERT INTO `mhr_conf_en` VALUES ('25', '25', '<b>Automatic refresh on tables list page.</b><br/>Sets how many seconds to wait before reloading the tables list page. (0 to disable)');
INSERT INTO `mhr_conf_en` VALUES ('26', '26', '<b>Automatic routing to the tables list.</b><br/>Sets how many seconds of inactivity to wait, before loading the tables list page. (0 to disable)');
INSERT INTO `mhr_conf_en` VALUES ('30', '30', '<b>Show invisible dishes/ingredients.</b><br/>If active, also invisible ingredients and dishes will be displayed in the waiter zone .');
INSERT INTO `mhr_conf_en` VALUES ('28', '28', '<b>Service fee - Price</b><br />Amount of the Service fee charge per person. You can\'t give a percent value. (0 to charge anything per person)');
INSERT INTO `mhr_conf_en` VALUES ('29', '29', '<b>Service fee - Name</b><br />Name of the service fee dish as it will appear on bills and statistics.');
INSERT INTO `mhr_conf_en` VALUES ('31', '31', '<b>XML translation files.</b><br/>If active the XML translation files located in lang/ directory will be used, otherwise the language data will be read from the database. This setting should be changed for performance related problems.');
INSERT INTO `mhr_conf_en` VALUES ('32', '32', '<b>Tables per row (Waiter)</b><br/>The number of tables per row displayed in the list of tables for the normal waiters.');
INSERT INTO `mhr_conf_en` VALUES ('33', '33', '<b>Tables per row (Cashier)</b><br/>The number of tables per row displayed in the list of tables for the cashier users.');
INSERT INTO `mhr_conf_en` VALUES ('35', '35', '<b>Show deleted orders.</b><br/>If active, shows the deleted orders in the orders list with a breaking line, instead of hiding them.');
INSERT INTO `mhr_conf_en` VALUES ('36', '36', '<b>Show the last modified summary line.</b><br/>If active shows in the orders list page a line with the last modified order.');
INSERT INTO `mhr_conf_en` VALUES ('37', '37', '<b>Service fee - Use</b><br />
Sets if the number of people per table will be asked or not.');
INSERT INTO `mhr_conf_en` VALUES ('38', '38', '<b>Allows unknown customers.</b><br/>If active, allows to type the surname of the customer in the takeaway tables.');
INSERT INTO `mhr_conf_en` VALUES ('41', '42', '<b>Country.</b><br/>Select the country to be used for the currency settings.');
INSERT INTO `mhr_conf_en` VALUES ('42', '43', '<b>Go to category after create.</b><br/>After creating a new order via the category interface, you go back to the same interface to insert other orders.');

# ------------------------------------------------------

#
# Table: mhr_conf_it
#

#
# Structure dump for table mhr_conf_it 
#

DROP TABLE IF EXISTS `mhr_conf_it`;
CREATE TABLE `mhr_conf_it` (
  `id` int(11) NOT NULL auto_increment,
  `table_id` int(11) NOT NULL default '0',
  `table_name` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_conf_it 
#

INSERT INTO `mhr_conf_it` VALUES ('1', '1', '<b>Ingredienti per pagina.</b><br/>Indica il numero massimo di ingredienti mostrati per pagina nella pagina delle modifiche. Oltre questo numero verr�usata la lista alfabetica.');
INSERT INTO `mhr_conf_it` VALUES ('3', '3', '<b>Statistiche top list.</b><br/>Numero di piatti sul quale �calcolata la top list. Gli ultimi...');
INSERT INTO `mhr_conf_it` VALUES ('4', '4', '<b>Numero di piatti da mostrare nella top list.</b><br/>Es.: 3 -> vengono mostrati i primi 3 piatti pi richiesti. (0 per disabilitare la visualizzazione della top list)');
INSERT INTO `mhr_conf_it` VALUES ('5', '5', '<b>Mostra le modifiche apportate nella righe di riepilogo.</b><br/>Se attivo, mostra tutte le modifiche anche nella riga dell\'ultimo ordine modificato.');
INSERT INTO `mhr_conf_it` VALUES ('6', '6', '<b>Orario di chiusura del locale.</b><br/>Usato per decidere quando finisce la giornata contabile. Da immettere nel seguente formato: HHMMSS (Ore,minuti,secondi) senza spazi con gli zeri. Es: il locale chiude alle 3:30 del mattino, scrivere 033000. Usare il formato a 24 ore.');
INSERT INTO `mhr_conf_it` VALUES ('7', '7', '<b>Sistema di stampa.</b><br/>I sistemi di stampa disponibili ad oggi sono:<br>lp: per sistemi linux/unix<br>cupsys: per sistemi linux/unix<br>win: per sistemi windows (non testato)');
INSERT INTO `mhr_conf_it` VALUES ('8', '8', '<b>Associazione automatica.</b><br/>Se attivo, al cameriere non viene richiesto se vuole associare un tavolo al suo primo ingresso, ma esso viene associato automaticamente.');
INSERT INTO `mhr_conf_it` VALUES ('9', '9', '<b>Permetti disassociazione.</b><br/>Se attivo, il cassiere pu�disassociare un tavolo da un cameriere.');
INSERT INTO `mhr_conf_it` VALUES ('10', '10', '<b>Autocalc considera le modifche sottrattive.</b><br/>Se attivo, il sistema di calcolo automatico dei prezzi conteggia in negativo gli ingredienti rimossi, se no li ignora.');
INSERT INTO `mhr_conf_it` VALUES ('11', '11', '<b>Tempo di refresh zona camerieri.</b><br/>Indica il tempo in secondi prima che i messaggi di ok scompaiano nella zona camerieri. I messaggi di errore, invece, non scompaiono mai da soli.');
INSERT INTO `mhr_conf_it` VALUES ('12', '12', '<b>Tempo di refresh generale.</b><br/>Indica il tempo in secondi prima che i messaggi di ok scompaiano in tutte le zone tranne quella camerieri. I messaggi di errore, invece, non scompaiono mai da soli.');
INSERT INTO `mhr_conf_it` VALUES ('13', '13', '<b>Ripetizione intestazioni colonne.</b><br/>Indica ogni quante righe si deve ripetere l\'intestazione delle colonne nella zona contabilit�');
INSERT INTO `mhr_conf_it` VALUES ('15', '15', '<b>Tempo di blocco tavolo.</b><br/>Tempo in secondi che deve intercorrere tra due operazioni sullo stesso tavolo ad parte di camerieri diversi. Se uguale a 0 il blocco &egrave; disabilitato.');
INSERT INTO `mhr_conf_it` VALUES ('16', '16', '<b>Lingua predefinita.</b><br/>Lingua usata in tutto il sistema, dove non altrimenti specificato (ad esempio nella zona camerieri, dove vale la lingua del singolo cameriere usato).');
INSERT INTO `mhr_conf_it` VALUES ('17', '17', '<b>Nome del fornitore del software.</b><br/>Usato nei messaggi di errore, per dare i contatti dell\'assistenza.');
INSERT INTO `mhr_conf_it` VALUES ('18', '18', '<b>Indirizzo email del fornitore del software.</b><br/>Usato nei messaggi di errore, per dare i contatti dell\'assistenza.');
INSERT INTO `mhr_conf_it` VALUES ('19', '19', '<b>Quantit&agrave; di default.</b><br/>Quantit&agrave; usata di default quando si prende un piatto nuovo.');
INSERT INTO `mhr_conf_it` VALUES ('20', '20', '<b>Stampa codici a barre.</b><br/>Se attivo, vengono inviati alle stampanti i codici di controllo per stampare un codice a barre rappresentante l\'id dell\'ordine. Per essere usato ha bisogno di una stampante che supporti i codici a barre.');
INSERT INTO `mhr_conf_it` VALUES ('21', '21', '<b>Stampa sempre i ticket rimanenti.</b><br/>Se attivo, alla chiusura del tavolo stampa tutti i ticket delle comande non ancora stampate.');
INSERT INTO `mhr_conf_it` VALUES ('22', '22', '<b>Stampa sempre i ticket rimanenti nei tavoli da asporto.</b><br/>Se attivo, alla chiusura dei tavoli da asporto stampa tutti i ticket delle comande non ancora stampate.');
INSERT INTO `mhr_conf_it` VALUES ('23', '23', '<b>Indirizzo del file di log per il debugging.</b><br/>Indirizzo completo del file di log per il debugging. Se questa informazione &egrave; errata o il file non &egrave; scrivibile, il software genera un errore. (es: /var/www/handyrestaurant/debug.log o c:/logs/debug.log) ');
INSERT INTO `mhr_conf_it` VALUES ('24', '24', '<b>Indirizzo del file di log per gli errori.</b><br/>Indirizzo completo del file di log per gli errori. Se questa informazione &egrave; errata o il file non &egrave; scrivibile, il software genera un errore. (es: /var/www/handyrestaurant/errors.log o c:/logs/errors.log)');
INSERT INTO `mhr_conf_it` VALUES ('25', '25', '<b>Refresh automatico su lista tavoli.</b><br/>Indica ogni quanti secondi viene ricaricata la pagina della lista tavoli. (0 per disabilitare)');
INSERT INTO `mhr_conf_it` VALUES ('26', '26', '<b>Reindirizzamento automatico alla lista tavoli.</b><br/>Indica dopo quanti secondi di inattivit�si viene riportati alla lista dei tavoli. (0 per disabilitare)');
INSERT INTO `mhr_conf_it` VALUES ('30', '30', '<b>Mostra piatti e ingredienti invisibili.</b><br/>Se attivo, nella zona camerieri verranno visualizzati anche i piatti e gli ingredienti segnati come invisibili.');
INSERT INTO `mhr_conf_it` VALUES ('28', '28', '<b>Coperti - Prezzo</b><br />Prezzo per persona del servizio in valuta. Non si pu&ograve; indicare un valore percentuale. (0 per non far pagare i coperti)');
INSERT INTO `mhr_conf_it` VALUES ('29', '29', '<b>Coperto - Nome</b><br />Nome the piatto \"coperto\" come apparir�nei conti e nelle statistiche.');
INSERT INTO `mhr_conf_it` VALUES ('31', '31', '<b>File di traduzione XML</b><br/>Se attivo usa i file di traduzione XML che si trovano nella directory lang/, se no recupera i dati relativi alle lingue dal database. Questo settaggio dovrebbe essere cambiato per questioni relative alle prestazioni.');
INSERT INTO `mhr_conf_it` VALUES ('32', '32', '<b>Tavoli per riga (Cameriere)</b><br/>Il numero di tavoli per riga mostrati nella lista dei tavoli per i cassieri.');
INSERT INTO `mhr_conf_it` VALUES ('33', '33', '<b>Tavoli per riga (Cassiere)</b><br/>Il numero di tavoli per riga mostrati nella lista dei tavoli per i cassieri.');
INSERT INTO `mhr_conf_it` VALUES ('34', '34', '<b>Permetti cancellazione veloce.</b><br/>Se attivo, i camerieri possono cancellare velocemente un ordine cliccando sull\'icona del cestino nella lista ordini, una volta raggiunta quantit�1.');
INSERT INTO `mhr_conf_it` VALUES ('35', '35', '<b>Mostra ordini cancellati.</b><br/>Se attivo. mostra gli ordini cancellati barrati da una linea al posto di nasconderli.');
INSERT INTO `mhr_conf_it` VALUES ('36', '36', '<b>Mostra la riga di riepilogo.</b><br/>Se attivo mostra nella pagina degli ordini una riga con l\'ultimo ordine modificato.');
INSERT INTO `mhr_conf_it` VALUES ('37', '37', '<b>Coperti - Usa</b><br />
Decide se chiedere il numero di persone per tavolo.');
INSERT INTO `mhr_conf_it` VALUES ('38', '38', '<b>Permetti clienti sconosciuti.</b><br/>Se attivo, permette di inserire il cognome del cliente nei tavoli da asporto.');
INSERT INTO `mhr_conf_it` VALUES ('41', '42', '<b>Paese</b><br/>Paese da considerare per le impostazioni della valuta.');
INSERT INTO `mhr_conf_it` VALUES ('42', '43', '<b>Vai alle categorie dopo l\'inserimento.</b><br/>Dopo aver creto un nuovo ordine attraverso linterfaccia delle categroie, torna alla stessa interfaccia per inserire nuovi ordini.');

# ------------------------------------------------------

#
# Table: mhr_countries
#

#
# Structure dump for table mhr_countries 
#

DROP TABLE IF EXISTS `mhr_countries`;
CREATE TABLE `mhr_countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `currency_letter` text NOT NULL,
  `currency_name` text NOT NULL,
  `currency_html` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_countries 
#

INSERT INTO `mhr_countries` VALUES ('1', 'Afghanistan', 'AFA', 'Afghanis', '');
INSERT INTO `mhr_countries` VALUES ('2', 'Albania', 'ALL', 'Leke', '');
INSERT INTO `mhr_countries` VALUES ('3', 'Algeria', 'DZD', 'Dinars', '');
INSERT INTO `mhr_countries` VALUES ('4', 'America (United States of America)', 'USD', 'Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('5', 'American Samoa', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('6', 'American Virgin Islands', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('7', 'Andorra', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('8', 'Angola', 'AOA', 'Kwanza', '');
INSERT INTO `mhr_countries` VALUES ('9', 'Anguilla', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('10', 'Antigua and Barbuda', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('11', 'Argentina', 'ARS', 'Pesos', '');
INSERT INTO `mhr_countries` VALUES ('12', 'Armenia', 'AMD', 'Drams', '');
INSERT INTO `mhr_countries` VALUES ('13', 'Aruba', 'AWG', 'Guilders', '');
INSERT INTO `mhr_countries` VALUES ('14', 'Aruba', 'ANG', 'Netherlands Antilles Guilders', '');
INSERT INTO `mhr_countries` VALUES ('15', 'Australia', 'AUD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('16', 'Austria', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('17', 'Azerbaijan', 'AZM', 'Manats', '');
INSERT INTO `mhr_countries` VALUES ('18', 'Azores', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('19', 'Bahamas', 'BSD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('20', 'Bahrain', 'BHD', 'Dinars', '');
INSERT INTO `mhr_countries` VALUES ('21', 'Baleares (Balearic Islands)', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('22', 'Bangladesh', 'BDT', 'Taka', '');
INSERT INTO `mhr_countries` VALUES ('23', 'Barbados', 'BBD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('24', 'Barbuda and Antigua', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('25', 'Belarus', 'BYR', 'Rubles', '');
INSERT INTO `mhr_countries` VALUES ('26', 'Belgium', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('27', 'Belize', 'BZD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('28', 'Benin', 'XOF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BCEAO)', '');
INSERT INTO `mhr_countries` VALUES ('29', 'Bermuda', 'BMD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('30', 'Bhutan', 'BTN', 'Ngultrum', '');
INSERT INTO `mhr_countries` VALUES ('31', 'Bhutan', 'INR', 'India Rupeess', '');
INSERT INTO `mhr_countries` VALUES ('32', 'Bolivia', 'BOB', 'Bolivianos', '');
INSERT INTO `mhr_countries` VALUES ('33', 'Bonaire', 'ANG', 'Netherlands Antilles Guilders', '');
INSERT INTO `mhr_countries` VALUES ('34', 'Bosnia and Herzegovina', 'BAM', 'Convertible Marka', '');
INSERT INTO `mhr_countries` VALUES ('35', 'Botswana', 'BWP', 'Pulas', '');
INSERT INTO `mhr_countries` VALUES ('36', 'Bouvet Island', 'NOK', 'Norway Kroner', '');
INSERT INTO `mhr_countries` VALUES ('37', 'Brazil', 'BRL', 'Real', '');
INSERT INTO `mhr_countries` VALUES ('38', 'Britain (United Kingdom)', 'GBP', 'Pounds', '&#163;');
INSERT INTO `mhr_countries` VALUES ('39', 'British Indian Ocean Territory', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('40', 'British Virgin Islands', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('41', 'Brunei Darussalam', 'BND', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('42', 'Bulgaria', 'BGN', 'Leva', '');
INSERT INTO `mhr_countries` VALUES ('43', 'Burkina Faso', 'XOF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BCEAO)', '');
INSERT INTO `mhr_countries` VALUES ('44', 'Burma (Myanmar)', 'MMK', 'Kyats', '');
INSERT INTO `mhr_countries` VALUES ('45', 'Burundi', 'BIF', 'Francs', '');
INSERT INTO `mhr_countries` VALUES ('46', 'C&ocirc;te D\'Ivoire', 'XOF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BCEAO)', '');
INSERT INTO `mhr_countries` VALUES ('47', 'Caicos and Turks Islands', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('48', 'Cambodia', 'KHR', 'Riels', '');
INSERT INTO `mhr_countries` VALUES ('49', 'Cameroon', 'XAF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BEAC)', '');
INSERT INTO `mhr_countries` VALUES ('50', 'Canada', 'CAD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('51', 'Canary Islands', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('52', 'Cape Verde', 'CVE', 'Escudos', '');
INSERT INTO `mhr_countries` VALUES ('53', 'Cayman Islands', 'KYD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('54', 'Central African Republic', 'XAF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BEAC)', '');
INSERT INTO `mhr_countries` VALUES ('55', 'Chad', 'XAF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BEAC)', '');
INSERT INTO `mhr_countries` VALUES ('56', 'Chile', 'CLP', 'Pesos', '');
INSERT INTO `mhr_countries` VALUES ('57', 'China', 'CNY', 'Yuan Renminbi', '');
INSERT INTO `mhr_countries` VALUES ('58', 'Christmas Island', 'AUD', 'Australia Dollars', '');
INSERT INTO `mhr_countries` VALUES ('59', 'Cocos (Keeling) Islands', 'AUD', 'Australia Dollars', '');
INSERT INTO `mhr_countries` VALUES ('60', 'Colombia', 'COP', 'Pesos', '');
INSERT INTO `mhr_countries` VALUES ('61', 'Communaut&eacute; Financi&egrave;re Africaine (CFA)', 'XAF', 'Francs', '');
INSERT INTO `mhr_countries` VALUES ('62', 'Comoros', 'KMF', 'Francs', '');
INSERT INTO `mhr_countries` VALUES ('63', 'Comptoirs Fran&ccedil;ais du Pacifique (CFP)', 'XPF', 'Francs', '');
INSERT INTO `mhr_countries` VALUES ('64', 'Congo/Brazzaville', 'XAF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BEAC)', '');
INSERT INTO `mhr_countries` VALUES ('65', 'Congo/Kinshasa', 'CDF', 'Francs', '');
INSERT INTO `mhr_countries` VALUES ('66', 'Cook Islands', 'NZD', 'New Zealand Dollars', '');
INSERT INTO `mhr_countries` VALUES ('67', 'Costa Rica', 'CRC', 'Colones', '&#8353;');
INSERT INTO `mhr_countries` VALUES ('68', 'Croatia', 'HRK', 'Kuna', '');
INSERT INTO `mhr_countries` VALUES ('69', 'Cuba', 'CUP', 'Pesos', '');
INSERT INTO `mhr_countries` VALUES ('70', 'Cura&ccedil;o', 'ANG', 'Netherlands Antilles Guilders', '');
INSERT INTO `mhr_countries` VALUES ('71', 'Cyprus', 'CYP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('72', 'Czech Republic', 'CZK', 'Koruny', '');
INSERT INTO `mhr_countries` VALUES ('73', 'Denmark', 'DKK', 'Kroner', '');
INSERT INTO `mhr_countries` VALUES ('74', 'Djibouti', 'DJF', 'Francs', '');
INSERT INTO `mhr_countries` VALUES ('75', 'Dominica', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('76', 'Dominican Republic', 'DOP', 'Pesos', '');
INSERT INTO `mhr_countries` VALUES ('78', 'East Caribbean Dollars', 'XCD', '', '');
INSERT INTO `mhr_countries` VALUES ('79', 'East Timor', 'IDR', 'Indonesia Rupiahs', '');
INSERT INTO `mhr_countries` VALUES ('80', 'Ecuador', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('81', 'Egypt', 'EGP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('82', 'Eire (Ireland)', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('83', 'El Salvador', 'SVC', 'Colones', '&#8353;');
INSERT INTO `mhr_countries` VALUES ('84', 'England (United Kingdom)', 'GBP', 'Pounds', '&#163;');
INSERT INTO `mhr_countries` VALUES ('85', 'Equatorial Guinea', 'XAF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BEAC)', '');
INSERT INTO `mhr_countries` VALUES ('86', 'Eritrea', 'ETB', 'Ethiopia Birr', '');
INSERT INTO `mhr_countries` VALUES ('87', 'Eritrea', 'ERN', 'Nakfa', '');
INSERT INTO `mhr_countries` VALUES ('88', 'Estonia', 'EEK', 'Krooni', '');
INSERT INTO `mhr_countries` VALUES ('89', 'Ethiopia', 'ETB', 'Birr', '');
INSERT INTO `mhr_countries` VALUES ('90', 'Euro Member Countries', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('91', 'Falkland Islands (Malvinas)', 'FKP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('92', 'Faroe Islands', 'DKK', 'Denmark Kroner', '');
INSERT INTO `mhr_countries` VALUES ('93', 'Fiji', 'FJD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('94', 'Finland', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('95', 'France', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('96', 'French Guiana', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('97', 'French Pacific Islands (French Polynesia)', 'XPF', 'Comptoirs Fran&ccedil;ais du Pacifique Francs', '');
INSERT INTO `mhr_countries` VALUES ('98', 'French Polynesia (French Pacific Islands)', 'XPF', 'Comptoirs Fran&ccedil;ais du Pacifique Francs', '');
INSERT INTO `mhr_countries` VALUES ('99', 'French Southern Territories', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('100', 'Futuna and Wallis Islands', 'XPF', 'Comptoirs Fran&ccedil;ais du Pacifique Francs', '');
INSERT INTO `mhr_countries` VALUES ('101', 'Gabon', 'XAF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BEAC)', '');
INSERT INTO `mhr_countries` VALUES ('102', 'Gambia', 'GMD', 'Dalasi', '');
INSERT INTO `mhr_countries` VALUES ('103', 'Georgia', 'GEL', 'Lari', '');
INSERT INTO `mhr_countries` VALUES ('104', 'Germany', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('105', 'Ghana', 'GHC', 'Cedis', '');
INSERT INTO `mhr_countries` VALUES ('106', 'Gibraltar', 'GIP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('107', 'Gold', 'XAU', 'Ounces', '');
INSERT INTO `mhr_countries` VALUES ('108', 'Great Britain (United Kingdom)', 'GBP', 'Pounds', '&#163;');
INSERT INTO `mhr_countries` VALUES ('109', 'Greece', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('110', 'Greenland', 'DKK', 'Denmark Kroner', '');
INSERT INTO `mhr_countries` VALUES ('111', 'Grenada', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('112', 'Grenadines (The) and Saint Vincent', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('113', 'Guadeloupe', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('114', 'Guam', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('115', 'Guatemala', 'GTQ', 'Quetzales', '');
INSERT INTO `mhr_countries` VALUES ('116', 'Guernsey', 'GGP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('117', 'Guinea', 'GNF', 'Francs', '');
INSERT INTO `mhr_countries` VALUES ('118', 'Guinea-Bissau', 'XOF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BCEAO)', '');
INSERT INTO `mhr_countries` VALUES ('119', 'Guyana', 'GYD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('120', 'Haiti', 'HTG', 'Gourdes', '');
INSERT INTO `mhr_countries` VALUES ('121', 'Haiti', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('122', 'Heard Island and McDonald Islands', 'AUD', 'Australia Dollars', '');
INSERT INTO `mhr_countries` VALUES ('123', 'Herzegovina and Bosnia', 'BAM', 'Convertible Marka', '');
INSERT INTO `mhr_countries` VALUES ('124', 'Holland (Netherlands)', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('125', 'Holy See', 'EUR', '(Vatican City)', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('126', 'Honduras', 'HNL', 'Lempiras', '');
INSERT INTO `mhr_countries` VALUES ('127', 'Hong Kong', 'HKD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('128', 'Hungary', 'HUF', 'Forint', '');
INSERT INTO `mhr_countries` VALUES ('129', 'Iceland', 'ISK', 'Kronur', '');
INSERT INTO `mhr_countries` VALUES ('130', 'India', 'INR', 'Rupees', '&#8360;');
INSERT INTO `mhr_countries` VALUES ('131', 'Indonesia', 'IDR', 'Rupiahs', '');
INSERT INTO `mhr_countries` VALUES ('132', 'International Monetary Fund (IMF)', 'XDR', 'Special Drawing Rights', '');
INSERT INTO `mhr_countries` VALUES ('133', 'Iran', 'IRR', 'Rials', '');
INSERT INTO `mhr_countries` VALUES ('134', 'Iraq', 'IQD', 'Dinars', '');
INSERT INTO `mhr_countries` VALUES ('135', 'Ireland (Eire)', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('136', 'Isle of Man', 'IMP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('137', 'Israel', 'ILS', 'New Shekels', '');
INSERT INTO `mhr_countries` VALUES ('138', 'Italy', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('139', 'Jamaica', 'JMD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('140', 'Jan Mayen and Svalbard', 'NOK', 'Norway Kroner', '');
INSERT INTO `mhr_countries` VALUES ('141', 'Japan', 'JPY', 'Yen', '&#165;');
INSERT INTO `mhr_countries` VALUES ('142', 'Jersey', 'JEP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('143', 'Jordan', 'JOD', 'Dinars', '');
INSERT INTO `mhr_countries` VALUES ('144', 'Kazakstan', 'KZT', 'Tenge', '');
INSERT INTO `mhr_countries` VALUES ('145', 'Keeling (Cocos) Islands', 'AUD', 'Australia Dollars', '');
INSERT INTO `mhr_countries` VALUES ('146', 'Kenya', 'KES', 'Shillings', '');
INSERT INTO `mhr_countries` VALUES ('147', 'Kiribati', 'AUD', 'Australia Dollars', '');
INSERT INTO `mhr_countries` VALUES ('148', 'Korea (North)', 'KPW', 'Won', '&#8361;');
INSERT INTO `mhr_countries` VALUES ('149', 'Korea (South)', 'KRW', 'Won', '&#8361;');
INSERT INTO `mhr_countries` VALUES ('150', 'Kuwait', 'KWD', 'Dinars', '');
INSERT INTO `mhr_countries` VALUES ('151', 'Kyrgyzstan', 'KGS', 'Soms', '');
INSERT INTO `mhr_countries` VALUES ('152', 'Laos', 'LAK', 'Kips', '');
INSERT INTO `mhr_countries` VALUES ('153', 'Latvia', 'LVL', 'Lati', '');
INSERT INTO `mhr_countries` VALUES ('154', 'Lebanon', 'LBP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('155', 'Lesotho', 'LSL', 'Maloti', '');
INSERT INTO `mhr_countries` VALUES ('156', 'Lesotho', 'ZAR', 'South Africa Rand', '');
INSERT INTO `mhr_countries` VALUES ('157', 'Liberia', 'LRD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('158', 'Libya', 'LYD', 'Dinars', '');
INSERT INTO `mhr_countries` VALUES ('159', 'Liechtenstein', 'CHF', 'Switzerland Francs', '');
INSERT INTO `mhr_countries` VALUES ('160', 'Lithuania', 'LTL', 'Litai', '');
INSERT INTO `mhr_countries` VALUES ('161', 'Luxembourg', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('162', 'Macau', 'MOP', 'Patacas', '');
INSERT INTO `mhr_countries` VALUES ('163', 'Macedonia', 'MKD', 'Denars', '');
INSERT INTO `mhr_countries` VALUES ('164', 'Madagascar', 'MGA', 'Ariary', '');
INSERT INTO `mhr_countries` VALUES ('165', 'Madeira Islands', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('166', 'Malawi', 'MWK', 'Kwachas', '');
INSERT INTO `mhr_countries` VALUES ('167', 'Malaysia', 'MYR', 'Ringgits', '');
INSERT INTO `mhr_countries` VALUES ('168', 'Maldives (Maldive Islands)', 'MVR', 'Rufiyaa', '');
INSERT INTO `mhr_countries` VALUES ('169', 'Mali', 'XOF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BCEAO)', '');
INSERT INTO `mhr_countries` VALUES ('170', 'Malta', 'MTL', 'Liri', '');
INSERT INTO `mhr_countries` VALUES ('171', 'Malvinas (Falkland Islands)', 'FKP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('172', 'Mariana Islands (Northern)', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('173', 'Marshall Islands', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('174', 'Martinique', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('175', 'Mauritania', 'MRO', 'Ouguiyas', '');
INSERT INTO `mhr_countries` VALUES ('176', 'Mauritius', 'MUR', 'Rupees', '');
INSERT INTO `mhr_countries` VALUES ('177', 'Mayotte', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('178', 'McDonald Islands and Heard Island', 'AUD', 'Australia Dollars', '');
INSERT INTO `mhr_countries` VALUES ('179', 'Mexico', 'MXN', 'Pesos', '');
INSERT INTO `mhr_countries` VALUES ('180', 'Micronesia (Federated States of)', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('181', 'Midway Islands', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('182', 'Miquelon and Saint Pierre', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('183', 'Moldova', 'MDL', 'Lei', '');
INSERT INTO `mhr_countries` VALUES ('184', 'Monaco', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('185', 'Mongolia', 'MNT', 'Tugriks', '');
INSERT INTO `mhr_countries` VALUES ('186', 'Montenegro', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('187', 'Montserrat', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('188', 'Morocco', 'MAD', 'Dirhams', '');
INSERT INTO `mhr_countries` VALUES ('189', 'Mozambique', 'MZM', 'Meticais', '');
INSERT INTO `mhr_countries` VALUES ('190', 'Myanmar (Burma)', 'MMK', 'Kyats', '');
INSERT INTO `mhr_countries` VALUES ('191', 'Namibia', 'NAD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('192', 'Namibia', 'ZAR', 'South Africa Rand', '');
INSERT INTO `mhr_countries` VALUES ('193', 'Nauru', 'AUD', 'Australia Dollars', '');
INSERT INTO `mhr_countries` VALUES ('194', 'Nepal', 'NPR', 'Rupees', '');
INSERT INTO `mhr_countries` VALUES ('195', 'Netherlands Antilles', 'ANG', 'Guilders', '');
INSERT INTO `mhr_countries` VALUES ('196', 'Netherlands', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('197', 'Nevis and Saint Kitts', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('198', 'New Caledonia', 'XPF', 'Comptoirs Fran&ccedil;ais du Pacifique Francs', '');
INSERT INTO `mhr_countries` VALUES ('199', 'New Zealand', 'NZD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('200', 'Nicaragua', 'NIO', 'Gold Cordobas', '');
INSERT INTO `mhr_countries` VALUES ('201', 'Niger', 'XOF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BCEAO)', '');
INSERT INTO `mhr_countries` VALUES ('202', 'Nigeria', 'NGN', 'Nairas', '&#8358;');
INSERT INTO `mhr_countries` VALUES ('203', 'Niue', 'NZD', 'New Zealand Dollars', '');
INSERT INTO `mhr_countries` VALUES ('204', 'Norfolk Island', 'AUD', 'Australia Dollars', '');
INSERT INTO `mhr_countries` VALUES ('205', 'Northern Mariana Islands', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('206', 'Norway', 'NOK', 'Kroner', '');
INSERT INTO `mhr_countries` VALUES ('207', 'Oman', 'OMR', 'Rials', '');
INSERT INTO `mhr_countries` VALUES ('208', 'Pakistan', 'PKR', 'Rupees', '');
INSERT INTO `mhr_countries` VALUES ('209', 'Palau', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('210', 'Palladium', 'XPD', 'Ounces', '');
INSERT INTO `mhr_countries` VALUES ('211', 'Panama', 'PAB', 'Balboa', '');
INSERT INTO `mhr_countries` VALUES ('212', 'Panama', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('213', 'Papua New Guinea', 'PGK', 'Kina', '');
INSERT INTO `mhr_countries` VALUES ('214', 'Paraguay', 'PYG', 'Guarani', '');
INSERT INTO `mhr_countries` VALUES ('215', 'Peru', 'PEN', 'Nuevos Soles', '');
INSERT INTO `mhr_countries` VALUES ('216', 'Philippines', 'PHP', 'Pesos', '');
INSERT INTO `mhr_countries` VALUES ('217', 'Pitcairn Islands', 'NZD', 'New Zealand Dollars', '');
INSERT INTO `mhr_countries` VALUES ('218', 'Platinum', 'XPT', 'Ounces', '');
INSERT INTO `mhr_countries` VALUES ('219', 'Poland', 'PLN', 'Zlotych', '');
INSERT INTO `mhr_countries` VALUES ('220', 'Portugal', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('221', 'Principe and S&atilde;o Tome', 'STD', 'Dobras', '');
INSERT INTO `mhr_countries` VALUES ('222', 'Puerto Rico', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('223', 'Qatar', 'QAR', 'Rials', '');
INSERT INTO `mhr_countries` VALUES ('224', 'R&eacute;union', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('225', 'Romania', 'ROL', 'Lei', '');
INSERT INTO `mhr_countries` VALUES ('226', 'Russia', 'RUR', 'Rubles', '');
INSERT INTO `mhr_countries` VALUES ('227', 'Rwanda', 'RWF', 'Francs', '');
INSERT INTO `mhr_countries` VALUES ('228', 'S&atilde;o Tome and Principe', 'STD', 'Dobras', '');
INSERT INTO `mhr_countries` VALUES ('229', 'Saba', 'ANG', 'Netherlands Antilles Guilders', '');
INSERT INTO `mhr_countries` VALUES ('230', 'Sahara (Western)', 'MAD', 'Morocco Dirhams', '');
INSERT INTO `mhr_countries` VALUES ('231', 'Saint Christopher', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('232', 'Saint Helena', 'SHP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('233', 'Saint Kitts and Nevis', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('234', 'Saint Lucia', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('235', 'Saint Pierre and Miquelon', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('236', 'Saint Vincent and The Grenadines', 'XCD', 'East Caribbean Dollars', '');
INSERT INTO `mhr_countries` VALUES ('237', 'Saint-Martin', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('238', 'Samoa (American)', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('239', 'Samoa', 'WST', 'Tala', '');
INSERT INTO `mhr_countries` VALUES ('240', 'San Marino', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('241', 'Saudi Arabia', 'SAR', 'Riyals', '');
INSERT INTO `mhr_countries` VALUES ('242', 'Seborga', 'SPL', 'Luigini', '');
INSERT INTO `mhr_countries` VALUES ('243', 'Senegal', 'XOF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BCEAO)', '');
INSERT INTO `mhr_countries` VALUES ('244', 'Serbia', 'CSD', 'Dinars', '');
INSERT INTO `mhr_countries` VALUES ('245', 'Seychelles', 'SCR', 'Rupees', '');
INSERT INTO `mhr_countries` VALUES ('246', 'Sierra Leone', 'SLL', 'Leones', '');
INSERT INTO `mhr_countries` VALUES ('247', 'Silver', 'XAG', 'Ounces', '');
INSERT INTO `mhr_countries` VALUES ('248', 'Singapore', 'SGD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('249', 'Sint Eustatius', 'ANG', 'Netherlands Antilles Guilders', '');
INSERT INTO `mhr_countries` VALUES ('250', 'Sint Maarten', 'ANG', 'Netherlands Antilles Guilders', '');
INSERT INTO `mhr_countries` VALUES ('251', 'Slovakia', 'SKK', 'Koruny', '');
INSERT INTO `mhr_countries` VALUES ('252', 'Slovenia', 'SIT', 'Tolars', '');
INSERT INTO `mhr_countries` VALUES ('253', 'Solomon Islands', 'SBD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('254', 'Somalia', 'SOS', 'Shillings', '');
INSERT INTO `mhr_countries` VALUES ('255', 'South Africa', 'ZAR', 'Rand', '');
INSERT INTO `mhr_countries` VALUES ('256', 'South Georgia', 'GBP', 'United Kingdom Pounds', '&#163;');
INSERT INTO `mhr_countries` VALUES ('257', 'South Sandwich Islands', 'GBP', 'United Kingdom Pounds', '&#163;');
INSERT INTO `mhr_countries` VALUES ('258', 'Spain', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('259', 'Special Drawing Rights', 'XDR', '', '');
INSERT INTO `mhr_countries` VALUES ('260', 'Sri Lanka', 'LKR', 'Rupees', '');
INSERT INTO `mhr_countries` VALUES ('261', 'Sudan', 'SDD', 'Dinars', '');
INSERT INTO `mhr_countries` VALUES ('262', 'Suriname', 'SRD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('263', 'Svalbard and Jan Mayen', 'NOK', 'Norway Kroner', '');
INSERT INTO `mhr_countries` VALUES ('264', 'Swaziland', 'SZL', 'Emalangeni', '');
INSERT INTO `mhr_countries` VALUES ('265', 'Sweden', 'SEK', 'Kronor', '');
INSERT INTO `mhr_countries` VALUES ('266', 'Switzerland', 'CHF', 'Francs', '');
INSERT INTO `mhr_countries` VALUES ('267', 'Syria', 'SYP', 'Pounds', '');
INSERT INTO `mhr_countries` VALUES ('268', 'Taiwan', 'TWD', 'New Dollars', '');
INSERT INTO `mhr_countries` VALUES ('269', 'Tajikistan', 'RUR', 'Russia Rubles', '');
INSERT INTO `mhr_countries` VALUES ('270', 'Tajikistan', 'TJS', 'Somoni', '');
INSERT INTO `mhr_countries` VALUES ('271', 'Tanzania', 'TZS', 'Shillings', '');
INSERT INTO `mhr_countries` VALUES ('272', 'Thailand', 'THB', 'Baht', '&#3647;');
INSERT INTO `mhr_countries` VALUES ('273', 'Timor (East)', 'IDR', 'Indonesia Rupiahs', '');
INSERT INTO `mhr_countries` VALUES ('274', 'Tobago and Trinidad', 'TTD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('275', 'Togo', 'XOF', 'Communaut&eacute; Financi&egrave;re Africaine Francs (BCEAO)', '');
INSERT INTO `mhr_countries` VALUES ('276', 'Tokelau', 'NZD', 'New Zealand Dollars', '');
INSERT INTO `mhr_countries` VALUES ('277', 'Tonga', 'TOP', 'Pa\'anga', '');
INSERT INTO `mhr_countries` VALUES ('278', 'Trinidad and Tobago', 'TTD', 'Dollars', '');
INSERT INTO `mhr_countries` VALUES ('279', 'Tunisia', 'TND', 'Dinars', '');
INSERT INTO `mhr_countries` VALUES ('280', 'Turkey', 'TRL', 'Liras', '');
INSERT INTO `mhr_countries` VALUES ('281', 'Turkmenistan', 'TMM', 'Manats', '');
INSERT INTO `mhr_countries` VALUES ('282', 'Turks and Caicos Islands', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('283', 'Tuvalu', 'TVD', 'Tuvalu Dollars', '');
INSERT INTO `mhr_countries` VALUES ('284', 'Uganda', 'UGX', 'Shillings', '');
INSERT INTO `mhr_countries` VALUES ('285', 'Ukraine', 'UAH', 'Hryvnia', '');
INSERT INTO `mhr_countries` VALUES ('286', 'United Arab Emirates', 'AED', 'Dirhams', '');
INSERT INTO `mhr_countries` VALUES ('287', 'United Kingdom', 'GBP', 'Pounds', '&#163;');
INSERT INTO `mhr_countries` VALUES ('288', 'United States Minor Outlying Islands', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('289', 'United States of America', 'USD', 'Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('290', 'Uruguay', 'UYU', 'Pesos', '');
INSERT INTO `mhr_countries` VALUES ('291', 'US Virgin Islands', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('292', 'Uzbekistan', 'UZS', 'Sums', '');
INSERT INTO `mhr_countries` VALUES ('293', 'Vanuatu', 'VUV', 'Vatu', '');
INSERT INTO `mhr_countries` VALUES ('294', 'Vatican City (The Holy See)', 'EUR', 'Euro', '&#8364;');
INSERT INTO `mhr_countries` VALUES ('295', 'Venezuela', 'VEB', 'Bolivares', '');
INSERT INTO `mhr_countries` VALUES ('296', 'Viet Nam', 'VND', 'Dong', '&#8363;');
INSERT INTO `mhr_countries` VALUES ('297', 'Virgin Islands (American)', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('298', 'Virgin Islands (British)', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('299', 'Wake Island', 'USD', 'United States Dollars', '$');
INSERT INTO `mhr_countries` VALUES ('300', 'Wallis and Futuna Islands', 'XPF', 'Comptoirs Fran&ccedil;ais du Pacifique Francs', '');
INSERT INTO `mhr_countries` VALUES ('301', 'West Samoa (Samoa)', 'WST', 'Tala', '');
INSERT INTO `mhr_countries` VALUES ('302', 'Western Sahara', 'MAD', 'Morocco Dirhams', '');
INSERT INTO `mhr_countries` VALUES ('303', 'Western Samoa (Samoa)', 'WST', 'Tala', '');
INSERT INTO `mhr_countries` VALUES ('304', 'Yemen', 'YER', 'Rials', '');
INSERT INTO `mhr_countries` VALUES ('305', 'Zambia', 'ZMK', 'Kwacha', '');
INSERT INTO `mhr_countries` VALUES ('306', 'Zimbabwe', 'ZWD', 'Zimbabwe Dollars', '');

# ------------------------------------------------------

#
# Table: mhr_lang
#

#
# Structure dump for table mhr_lang 
#

DROP TABLE IF EXISTS `mhr_lang`;
CREATE TABLE `mhr_lang` (
  `id` int(11) NOT NULL auto_increment,
  `name` mediumtext NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_lang 
#

INSERT INTO `mhr_lang` VALUES ('62', 'STATS_TOTAL_WAITERS');
INSERT INTO `mhr_lang` VALUES ('3', 'ACCOUNT_THE');
INSERT INTO `mhr_lang` VALUES ('4', 'ACCOUNT_TITLE');
INSERT INTO `mhr_lang` VALUES ('5', 'ACCOUNT_BANK');
INSERT INTO `mhr_lang` VALUES ('6', 'ACCOUNT_NAME');
INSERT INTO `mhr_lang` VALUES ('7', 'ACCOUNT_NUMBER');
INSERT INTO `mhr_lang` VALUES ('8', 'ACCOUNT_ABI');
INSERT INTO `mhr_lang` VALUES ('9', 'ACCOUNT_CAB');
INSERT INTO `mhr_lang` VALUES ('10', 'ACCOUNT_CIN');
INSERT INTO `mhr_lang` VALUES ('11', 'ACCOUNT_IBAN');
INSERT INTO `mhr_lang` VALUES ('12', 'ACCOUNT_SWIFT');
INSERT INTO `mhr_lang` VALUES ('13', 'ACCOUNT_BIC');
INSERT INTO `mhr_lang` VALUES ('14', 'ACCOUNT_CURRENCY');
INSERT INTO `mhr_lang` VALUES ('15', 'ACCOUNT_INITIAL_AMOUNT');
INSERT INTO `mhr_lang` VALUES ('16', 'ACCOUNT_TABLE_TITLE');
INSERT INTO `mhr_lang` VALUES ('17', 'ACCOUNT_TABLE_AMOUNT');
INSERT INTO `mhr_lang` VALUES ('18', 'ACCOUNT_TABLE_BANK');
INSERT INTO `mhr_lang` VALUES ('19', 'ACCOUNT_TABLE_NAME');
INSERT INTO `mhr_lang` VALUES ('20', 'ACCOUNT_TABLE_NUMBER');
INSERT INTO `mhr_lang` VALUES ('21', 'ACCOUNT_TABLE_ABI');
INSERT INTO `mhr_lang` VALUES ('22', 'ACCOUNT_TABLE_CAB');
INSERT INTO `mhr_lang` VALUES ('23', 'ACCOUNT_TABLE_CIN');
INSERT INTO `mhr_lang` VALUES ('24', 'ACCOUNT_TABLE_IBAN');
INSERT INTO `mhr_lang` VALUES ('25', 'ACCOUNT_TABLE_SWIFT');
INSERT INTO `mhr_lang` VALUES ('26', 'ACCOUNT_TABLE_BIC');
INSERT INTO `mhr_lang` VALUES ('27', 'ACCOUNT_TABLE_CURRENCY');
INSERT INTO `mhr_lang` VALUES ('28', 'ACCOUNT_LABEL_AMOUNT');
INSERT INTO `mhr_lang` VALUES ('29', 'ACCOUNT_LABEL_BANK_ACCOUNT');
INSERT INTO `mhr_lang` VALUES ('30', 'ACCOUNT_LABEL_DATE');
INSERT INTO `mhr_lang` VALUES ('31', 'ACCOUNT_LABEL_CAUSAL');
INSERT INTO `mhr_lang` VALUES ('32', 'ACCOUNT_LABEL_DESCRIPTION');
INSERT INTO `mhr_lang` VALUES ('33', 'ACCOUNT_LABEL_IF_NEGATIVE');
INSERT INTO `mhr_lang` VALUES ('34', 'ACCOUNT_LABEL_IN');
INSERT INTO `mhr_lang` VALUES ('35', 'ACCOUNT_LABEL_OUT');
INSERT INTO `mhr_lang` VALUES ('36', 'ACCOUNT_LEGEND');
INSERT INTO `mhr_lang` VALUES ('37', 'ACCOUNT_MAIN_LEGEND');
INSERT INTO `mhr_lang` VALUES ('38', 'ACCOUNT_LIST');
INSERT INTO `mhr_lang` VALUES ('39', 'ACCOUNT_INSERT');
INSERT INTO `mhr_lang` VALUES ('40', 'ACCOUNT_EDIT');
INSERT INTO `mhr_lang` VALUES ('41', 'ACCOUNT_MOVEMENT');
INSERT INTO `mhr_lang` VALUES ('61', 'ACCOUNT_MOVEMENT_LEGEND');
INSERT INTO `mhr_lang` VALUES ('60', 'ACCOUNT_MOVEMENT_INSERT');
INSERT INTO `mhr_lang` VALUES ('54', 'ACCOUNT_MOVEMENT_ADD_SUCCESS');
INSERT INTO `mhr_lang` VALUES ('55', 'ACCOUNT_MOVEMENT_UPDATE_SUCCESS');
INSERT INTO `mhr_lang` VALUES ('56', 'ACCOUNT_MOVEMENT_DELETE_SUCCESS');
INSERT INTO `mhr_lang` VALUES ('57', 'ACCOUNT_MOVEMENT_NOTHING_DONE');
INSERT INTO `mhr_lang` VALUES ('58', 'ACCOUNT_MOVEMENT_DELETE');
INSERT INTO `mhr_lang` VALUES ('59', 'ACCOUNT_MOVEMENT_EDIT');
INSERT INTO `mhr_lang` VALUES ('63', 'CONTACTS');
INSERT INTO `mhr_lang` VALUES ('64', 'CONTACTS_LIST');
INSERT INTO `mhr_lang` VALUES ('65', 'REPORTS');
INSERT INTO `mhr_lang` VALUES ('66', 'STOCK');
INSERT INTO `mhr_lang` VALUES ('67', 'MENU');
INSERT INTO `mhr_lang` VALUES ('68', 'INGREDIENTS');
INSERT INTO `mhr_lang` VALUES ('70', 'CATEGORIES');
INSERT INTO `mhr_lang` VALUES ('71', 'WAITERS');
INSERT INTO `mhr_lang` VALUES ('72', 'TABLES');
INSERT INTO `mhr_lang` VALUES ('73', 'DISHES');
INSERT INTO `mhr_lang` VALUES ('74', 'VAT_RATES');
INSERT INTO `mhr_lang` VALUES ('75', 'ACCOUNTING');
INSERT INTO `mhr_lang` VALUES ('76', 'INCOME_EXPAND');
INSERT INTO `mhr_lang` VALUES ('77', 'INCOME_COLLAPSE');
INSERT INTO `mhr_lang` VALUES ('78', 'SYSTEM');
INSERT INTO `mhr_lang` VALUES ('79', 'CONFIGURATION');
INSERT INTO `mhr_lang` VALUES ('80', 'PRINTERS');
INSERT INTO `mhr_lang` VALUES ('81', 'ACCOUNTING_DATABASES');
INSERT INTO `mhr_lang` VALUES ('82', 'TRANSLATIONS');
INSERT INTO `mhr_lang` VALUES ('83', 'TRANSLATIONS_CHECKER');
INSERT INTO `mhr_lang` VALUES ('91', 'CHECK_NAME');
INSERT INTO `mhr_lang` VALUES ('84', 'BACK_TO_LIST');
INSERT INTO `mhr_lang` VALUES ('85', 'VAT_RATE');
INSERT INTO `mhr_lang` VALUES ('86', 'ID');
INSERT INTO `mhr_lang` VALUES ('87', 'NAME');
INSERT INTO `mhr_lang` VALUES ('88', 'UPDATE');
INSERT INTO `mhr_lang` VALUES ('89', 'DELETE');
INSERT INTO `mhr_lang` VALUES ('90', 'MENU_EDITING');
INSERT INTO `mhr_lang` VALUES ('92', 'CHECK_COLOR');
INSERT INTO `mhr_lang` VALUES ('93', 'CHECK_COLOR_BEGIN');
INSERT INTO `mhr_lang` VALUES ('94', 'CATEGORY_COLOR');
INSERT INTO `mhr_lang` VALUES ('95', 'ERROR_NONE_FOUND');
INSERT INTO `mhr_lang` VALUES ('96', 'INSERT');
INSERT INTO `mhr_lang` VALUES ('97', 'CATEGORY');
INSERT INTO `mhr_lang` VALUES ('98', 'CHECK_DATABASE_NAME');
INSERT INTO `mhr_lang` VALUES ('99', 'ACCOUNTING_DATABASE');
INSERT INTO `mhr_lang` VALUES ('100', 'DATABASE_NAME');
INSERT INTO `mhr_lang` VALUES ('101', 'PRINT_BILL');
INSERT INTO `mhr_lang` VALUES ('102', 'DATABASE_DELETE_WARNING');
INSERT INTO `mhr_lang` VALUES ('103', 'DELETE_DATABASE');
INSERT INTO `mhr_lang` VALUES ('104', 'DELETE_DATABASE_TABLES');
INSERT INTO `mhr_lang` VALUES ('105', 'NAME_INTERNAL_DATABASE');
INSERT INTO `mhr_lang` VALUES ('106', 'ERROR_NONE_FOUND_DESTINATION');
INSERT INTO `mhr_lang` VALUES ('128', 'ACCOUNT_MOVEMENT_LIST');
INSERT INTO `mhr_lang` VALUES ('108', 'DELETE_OK');
INSERT INTO `mhr_lang` VALUES ('109', 'DELETE_NONE');
INSERT INTO `mhr_lang` VALUES ('110', 'EDIT_OK');
INSERT INTO `mhr_lang` VALUES ('111', 'EDIT_NONE');
INSERT INTO `mhr_lang` VALUES ('112', 'DISH');
INSERT INTO `mhr_lang` VALUES ('113', 'DISH_CODE');
INSERT INTO `mhr_lang` VALUES ('114', 'DISH_AUTOMATIC_CALCULATOR');
INSERT INTO `mhr_lang` VALUES ('115', 'DISH_STOCK');
INSERT INTO `mhr_lang` VALUES ('116', 'DISH_GENERIC');
INSERT INTO `mhr_lang` VALUES ('117', 'VISIBLE');
INSERT INTO `mhr_lang` VALUES ('118', 'PRINT_DESTINATION');
INSERT INTO `mhr_lang` VALUES ('119', 'DISH_INGREDIENT_NO');
INSERT INTO `mhr_lang` VALUES ('120', 'DISH_INGREDIENT_INCLUDED');
INSERT INTO `mhr_lang` VALUES ('121', 'DISH_INGREDIENT_AVAILABLE');
INSERT INTO `mhr_lang` VALUES ('122', 'ERROR_NONE_FOUND_CATEGORY');
INSERT INTO `mhr_lang` VALUES ('123', 'INSERT_NEW');
INSERT INTO `mhr_lang` VALUES ('124', 'GO_MAIN_PAGE');
INSERT INTO `mhr_lang` VALUES ('125', 'CATEGORIES_SHOW_ALL');
INSERT INTO `mhr_lang` VALUES ('127', 'PRICE');
INSERT INTO `mhr_lang` VALUES ('129', 'INGREDIENT_CODE');
INSERT INTO `mhr_lang` VALUES ('130', 'INGREDIENT_OVERRIDE_AUTOCALC');
INSERT INTO `mhr_lang` VALUES ('131', 'INGREDIENT');
INSERT INTO `mhr_lang` VALUES ('132', 'CHECK_TEMPLATE');
INSERT INTO `mhr_lang` VALUES ('133', 'NAME_PRINTER');
INSERT INTO `mhr_lang` VALUES ('134', 'PRINTER_DESTINATION');
INSERT INTO `mhr_lang` VALUES ('139', 'PRINTER');
INSERT INTO `mhr_lang` VALUES ('136', 'PRINTER_BILL');
INSERT INTO `mhr_lang` VALUES ('137', 'PRINTER_INVOICE');
INSERT INTO `mhr_lang` VALUES ('138', 'PRINTER_RECEIPT');
INSERT INTO `mhr_lang` VALUES ('140', 'PRINTER_DRIVER');
INSERT INTO `mhr_lang` VALUES ('141', 'PRINTER_TEMPLATE');
INSERT INTO `mhr_lang` VALUES ('142', 'PRINTER_LANGUAGE');
INSERT INTO `mhr_lang` VALUES ('143', 'YES');
INSERT INTO `mhr_lang` VALUES ('144', 'NO');
INSERT INTO `mhr_lang` VALUES ('145', 'REPORT_GENERATE');
INSERT INTO `mhr_lang` VALUES ('146', 'DATABASE_BACKUP');
INSERT INTO `mhr_lang` VALUES ('147', 'TRANSLATIONS_EXPORT');
INSERT INTO `mhr_lang` VALUES ('148', 'LANGUAGE');
INSERT INTO `mhr_lang` VALUES ('149', 'OUTPUT_TYPE');
INSERT INTO `mhr_lang` VALUES ('150', 'DATABASE');
INSERT INTO `mhr_lang` VALUES ('151', 'HTML');
INSERT INTO `mhr_lang` VALUES ('152', 'FILE');
INSERT INTO `mhr_lang` VALUES ('153', 'XML');
INSERT INTO `mhr_lang` VALUES ('154', 'STRUCTURE_ONLY');
INSERT INTO `mhr_lang` VALUES ('155', 'TEXT');
INSERT INTO `mhr_lang` VALUES ('158', 'DATABASE_FROM');
INSERT INTO `mhr_lang` VALUES ('157', 'MAIN');
INSERT INTO `mhr_lang` VALUES ('159', 'DATABASE_TO');
INSERT INTO `mhr_lang` VALUES ('160', 'DATABASE_COMPARE');
INSERT INTO `mhr_lang` VALUES ('161', 'DROP_TABLES');
INSERT INTO `mhr_lang` VALUES ('162', 'MYSQLDUMP_FORMAT');
INSERT INTO `mhr_lang` VALUES ('163', 'VERSION_FROM');
INSERT INTO `mhr_lang` VALUES ('164', 'VERSION_TO');
INSERT INTO `mhr_lang` VALUES ('165', 'UPGRADE');
INSERT INTO `mhr_lang` VALUES ('166', 'VERSION_INSTALLED');
INSERT INTO `mhr_lang` VALUES ('167', 'UPGRADE_FILE');
INSERT INTO `mhr_lang` VALUES ('168', 'VERBOSITY');
INSERT INTO `mhr_lang` VALUES ('169', 'VERBOSITY_LOW');
INSERT INTO `mhr_lang` VALUES ('170', 'VERBOSITY_HIGH');
INSERT INTO `mhr_lang` VALUES ('171', 'VERBOSITY_NONE');
INSERT INTO `mhr_lang` VALUES ('172', 'UPGRADE_STRING');
INSERT INTO `mhr_lang` VALUES ('173', 'DATABASE_COMMON');
INSERT INTO `mhr_lang` VALUES ('174', 'UPGRADE_MINIMUM_VERSION');
INSERT INTO `mhr_lang` VALUES ('175', 'PRINTER_TEST_PAGE');
INSERT INTO `mhr_lang` VALUES ('176', 'PRINTERS_TEST');
INSERT INTO `mhr_lang` VALUES ('177', 'PRINTERS_LIST');
INSERT INTO `mhr_lang` VALUES ('178', 'PRINTER_TEST_SENT');
INSERT INTO `mhr_lang` VALUES ('179', 'PRINTERS_TEST_SEND');
INSERT INTO `mhr_lang` VALUES ('180', 'ADDRESS');
INSERT INTO `mhr_lang` VALUES ('181', 'AMOUNT');
INSERT INTO `mhr_lang` VALUES ('182', 'APPLY');
INSERT INTO `mhr_lang` VALUES ('183', 'BANK');
INSERT INTO `mhr_lang` VALUES ('184', 'BANK_FILE');
INSERT INTO `mhr_lang` VALUES ('185', 'CASH');
INSERT INTO `mhr_lang` VALUES ('186', 'ERROR_NO_CATEGORY_SELECTED');
INSERT INTO `mhr_lang` VALUES ('187', 'CHECK_NUMBER');
INSERT INTO `mhr_lang` VALUES ('188', 'CHECK_DATE');
INSERT INTO `mhr_lang` VALUES ('189', 'CHECK_TAXABLE');
INSERT INTO `mhr_lang` VALUES ('190', 'CHECK_DAY');
INSERT INTO `mhr_lang` VALUES ('191', 'CHECK_DESCRIPTION');
INSERT INTO `mhr_lang` VALUES ('192', 'CHECK_MONTH');
INSERT INTO `mhr_lang` VALUES ('193', 'CHECK_YEAR');
INSERT INTO `mhr_lang` VALUES ('194', 'CHECK_DATABASE_FOUND');
INSERT INTO `mhr_lang` VALUES ('195', 'CHECK_NO_TYPE_ERROR');
INSERT INTO `mhr_lang` VALUES ('196', 'CHECK_NO_INVOICE_ERROR');
INSERT INTO `mhr_lang` VALUES ('197', 'CHEQUE_NUMBER');
INSERT INTO `mhr_lang` VALUES ('198', 'CONTACT_INSERT');
INSERT INTO `mhr_lang` VALUES ('199', 'BANK_ACCOUNT');
INSERT INTO `mhr_lang` VALUES ('200', 'DATE');
INSERT INTO `mhr_lang` VALUES ('201', 'ERROR_NO_DISH_SELECTED');
INSERT INTO `mhr_lang` VALUES ('202', 'WHO');
INSERT INTO `mhr_lang` VALUES ('203', 'DEBTS');
INSERT INTO `mhr_lang` VALUES ('204', 'DESCRIPTION');
INSERT INTO `mhr_lang` VALUES ('205', 'EDIT');
INSERT INTO `mhr_lang` VALUES ('206', 'EMAIL');
INSERT INTO `mhr_lang` VALUES ('207', 'EMPLOYEE_FILE');
INSERT INTO `mhr_lang` VALUES ('208', 'ERROR');
INSERT INTO `mhr_lang` VALUES ('209', 'FAX');
INSERT INTO `mhr_lang` VALUES ('210', 'GO_MAIN_REPORT');
INSERT INTO `mhr_lang` VALUES ('212', 'INCOME');
INSERT INTO `mhr_lang` VALUES ('213', 'INCOMINGS');
INSERT INTO `mhr_lang` VALUES ('214', 'ERROR_NO_INGREDIENT_SELECTED');
INSERT INTO `mhr_lang` VALUES ('215', 'UPGRADE_SIMULATE');
INSERT INTO `mhr_lang` VALUES ('216', 'UPGRADE_SIMULATION_ACTIVE');
INSERT INTO `mhr_lang` VALUES ('217', 'CHANGELOG');
INSERT INTO `mhr_lang` VALUES ('218', 'ERROR_UNKNOWN');
INSERT INTO `mhr_lang` VALUES ('219', 'TABLE_HAS_BEEN_CLEARED');
INSERT INTO `mhr_lang` VALUES ('220', 'DISSOCIATE');
INSERT INTO `mhr_lang` VALUES ('221', 'LAST_OPERATION');
INSERT INTO `mhr_lang` VALUES ('222', 'ASK_DELETE_CONFIRMATION');
INSERT INTO `mhr_lang` VALUES ('223', 'CREATE_SERVICE_FEE');
INSERT INTO `mhr_lang` VALUES ('224', 'ACCOUNT');

# ------------------------------------------------------

#
# Table: mhr_lang_en
#

#
# Structure dump for table mhr_lang_en 
#

DROP TABLE IF EXISTS `mhr_lang_en`;
CREATE TABLE `mhr_lang_en` (
  `id` int(11) NOT NULL auto_increment,
  `table_id` int(11) NOT NULL default '0',
  `table_name` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_lang_en 
#

INSERT INTO `mhr_lang_en` VALUES ('50', '62', 'Total revenue per waiter');
INSERT INTO `mhr_lang_en` VALUES ('3', '3', 'The Bank Account');
INSERT INTO `mhr_lang_en` VALUES ('4', '4', 'Movements for the account');
INSERT INTO `mhr_lang_en` VALUES ('5', '5', 'Bank');
INSERT INTO `mhr_lang_en` VALUES ('6', '6', 'Name');
INSERT INTO `mhr_lang_en` VALUES ('7', '7', 'Account number');
INSERT INTO `mhr_lang_en` VALUES ('8', '8', 'ABI Code');
INSERT INTO `mhr_lang_en` VALUES ('9', '9', 'CAB code');
INSERT INTO `mhr_lang_en` VALUES ('10', '10', 'CIN code');
INSERT INTO `mhr_lang_en` VALUES ('11', '11', 'IBAN code');
INSERT INTO `mhr_lang_en` VALUES ('12', '12', 'Receiver BIC code (SWIFT)');
INSERT INTO `mhr_lang_en` VALUES ('13', '13', 'Destination BIC code');
INSERT INTO `mhr_lang_en` VALUES ('14', '14', 'Currency (International code)');
INSERT INTO `mhr_lang_en` VALUES ('15', '15', 'Initial Amount');
INSERT INTO `mhr_lang_en` VALUES ('16', '16', 'Bank Accounts');
INSERT INTO `mhr_lang_en` VALUES ('17', '17', 'Amount');
INSERT INTO `mhr_lang_en` VALUES ('18', '18', 'Bank');
INSERT INTO `mhr_lang_en` VALUES ('19', '19', 'Name');
INSERT INTO `mhr_lang_en` VALUES ('20', '20', 'Number');
INSERT INTO `mhr_lang_en` VALUES ('21', '21', 'ABI');
INSERT INTO `mhr_lang_en` VALUES ('22', '22', 'CAB');
INSERT INTO `mhr_lang_en` VALUES ('23', '23', 'CIN');
INSERT INTO `mhr_lang_en` VALUES ('24', '24', 'IBAN');
INSERT INTO `mhr_lang_en` VALUES ('25', '25', 'SWIFT');
INSERT INTO `mhr_lang_en` VALUES ('26', '26', 'BIC');
INSERT INTO `mhr_lang_en` VALUES ('27', '27', 'Currency');
INSERT INTO `mhr_lang_en` VALUES ('28', '28', 'Amount');
INSERT INTO `mhr_lang_en` VALUES ('29', '29', 'Bank Account');
INSERT INTO `mhr_lang_en` VALUES ('30', '30', 'Date');
INSERT INTO `mhr_lang_en` VALUES ('31', '31', 'Causal');
INSERT INTO `mhr_lang_en` VALUES ('32', '32', 'Description');
INSERT INTO `mhr_lang_en` VALUES ('33', '33', 'If negative');
INSERT INTO `mhr_lang_en` VALUES ('34', '34', 'In');
INSERT INTO `mhr_lang_en` VALUES ('35', '35', 'Out');
INSERT INTO `mhr_lang_en` VALUES ('36', '36', 'Bank Account');
INSERT INTO `mhr_lang_en` VALUES ('37', '37', 'Bank Accounts');
INSERT INTO `mhr_lang_en` VALUES ('38', '38', 'Accounts List');
INSERT INTO `mhr_lang_en` VALUES ('39', '39', 'Insert Account');
INSERT INTO `mhr_lang_en` VALUES ('40', '40', 'Edit Account');
INSERT INTO `mhr_lang_en` VALUES ('41', '41', 'The movement');
INSERT INTO `mhr_lang_en` VALUES ('42', '54', 'Has been successfully added');
INSERT INTO `mhr_lang_en` VALUES ('43', '55', 'Has been successfully updated');
INSERT INTO `mhr_lang_en` VALUES ('44', '56', 'Has been successfully deleted');
INSERT INTO `mhr_lang_en` VALUES ('45', '57', 'Nothing has been done');
INSERT INTO `mhr_lang_en` VALUES ('46', '58', 'Delete movement');
INSERT INTO `mhr_lang_en` VALUES ('47', '59', 'Edit Movement');
INSERT INTO `mhr_lang_en` VALUES ('48', '60', 'Insert Movement');
INSERT INTO `mhr_lang_en` VALUES ('49', '61', 'Bank Account Movement');
INSERT INTO `mhr_lang_en` VALUES ('51', '63', 'Contacts');
INSERT INTO `mhr_lang_en` VALUES ('52', '64', 'Contacts List');
INSERT INTO `mhr_lang_en` VALUES ('53', '65', 'Reports');
INSERT INTO `mhr_lang_en` VALUES ('54', '66', 'Stock');
INSERT INTO `mhr_lang_en` VALUES ('55', '67', 'Menu');
INSERT INTO `mhr_lang_en` VALUES ('56', '68', 'Ingredients');
INSERT INTO `mhr_lang_en` VALUES ('58', '70', 'Categories');
INSERT INTO `mhr_lang_en` VALUES ('59', '71', 'Waiters');
INSERT INTO `mhr_lang_en` VALUES ('60', '72', 'Tables');
INSERT INTO `mhr_lang_en` VALUES ('61', '73', 'Dishes');
INSERT INTO `mhr_lang_en` VALUES ('62', '74', 'VAT rates');
INSERT INTO `mhr_lang_en` VALUES ('63', '75', 'Accounting');
INSERT INTO `mhr_lang_en` VALUES ('64', '76', 'Expand incomes');
INSERT INTO `mhr_lang_en` VALUES ('65', '77', 'Collapse incomes');
INSERT INTO `mhr_lang_en` VALUES ('66', '78', 'System');
INSERT INTO `mhr_lang_en` VALUES ('67', '79', 'Configuration');
INSERT INTO `mhr_lang_en` VALUES ('68', '80', 'Printers');
INSERT INTO `mhr_lang_en` VALUES ('69', '81', 'Accounting Databases');
INSERT INTO `mhr_lang_en` VALUES ('70', '82', 'Translations');
INSERT INTO `mhr_lang_en` VALUES ('71', '83', 'Checker');
INSERT INTO `mhr_lang_en` VALUES ('72', '84', 'Back to the list');
INSERT INTO `mhr_lang_en` VALUES ('73', '85', 'Vat Rate');
INSERT INTO `mhr_lang_en` VALUES ('74', '86', 'ID');
INSERT INTO `mhr_lang_en` VALUES ('75', '87', 'Name');
INSERT INTO `mhr_lang_en` VALUES ('76', '88', 'Update');
INSERT INTO `mhr_lang_en` VALUES ('77', '89', 'Delete');
INSERT INTO `mhr_lang_en` VALUES ('78', '90', 'Menu editing');
INSERT INTO `mhr_lang_en` VALUES ('79', '91', 'Check the name');
INSERT INTO `mhr_lang_en` VALUES ('80', '92', 'Check the color value');
INSERT INTO `mhr_lang_en` VALUES ('81', '93', 'The color value has to begin with #');
INSERT INTO `mhr_lang_en` VALUES ('82', '94', 'Category color');
INSERT INTO `mhr_lang_en` VALUES ('83', '95', 'No record has been found');
INSERT INTO `mhr_lang_en` VALUES ('84', '96', 'Insert');
INSERT INTO `mhr_lang_en` VALUES ('85', '97', 'Category');
INSERT INTO `mhr_lang_en` VALUES ('86', '98', 'Check the database name');
INSERT INTO `mhr_lang_en` VALUES ('87', '99', 'Accounting Database');
INSERT INTO `mhr_lang_en` VALUES ('88', '100', '<b>Database Name</b><br />the database name as in mysql databases list');
INSERT INTO `mhr_lang_en` VALUES ('89', '101', '<b>Print bills</b> - on if you want receipts/bill/invoices assigned to this database to be printed');
INSERT INTO `mhr_lang_en` VALUES ('90', '102', '<b>Warning:</b> If you delete the database, all the data associated to it (accounting, statistics log, addressbook, receipts log, stock movements) will be deleted and <b>unrecoverable</b>');
INSERT INTO `mhr_lang_en` VALUES ('91', '103', '<b>Delete the database</b> (includes deletion of all the tables).');
INSERT INTO `mhr_lang_en` VALUES ('92', '104', '<b>Delete My Handy Restaurant tables</b> from this database when deleting this record.');
INSERT INTO `mhr_lang_en` VALUES ('93', '105', '<b>Internal Name</b><br />used when displaying the name to users');
INSERT INTO `mhr_lang_en` VALUES ('94', '106', 'No destination has been found');
INSERT INTO `mhr_lang_en` VALUES ('96', '108', 'Deleted successfully');
INSERT INTO `mhr_lang_en` VALUES ('97', '109', 'No record has been deleted');
INSERT INTO `mhr_lang_en` VALUES ('98', '110', 'Updated successfully');
INSERT INTO `mhr_lang_en` VALUES ('99', '111', 'No record has been edited');
INSERT INTO `mhr_lang_en` VALUES ('100', '112', 'Dish');
INSERT INTO `mhr_lang_en` VALUES ('101', '113', 'Code (useful for stock)');
INSERT INTO `mhr_lang_en` VALUES ('102', '114', 'Automatic Calculator');
INSERT INTO `mhr_lang_en` VALUES ('103', '115', 'Stock (if active, the items will be counted in the stock management)');
INSERT INTO `mhr_lang_en` VALUES ('104', '116', 'Generic Dish - to be used for not previewed cases, such as a very special request. Its price may be modified by the cashier.');
INSERT INTO `mhr_lang_en` VALUES ('105', '117', 'Visible to waiters');
INSERT INTO `mhr_lang_en` VALUES ('106', '118', 'Print destination');
INSERT INTO `mhr_lang_en` VALUES ('107', '119', 'No');
INSERT INTO `mhr_lang_en` VALUES ('108', '120', 'Included');
INSERT INTO `mhr_lang_en` VALUES ('109', '121', 'Available');
INSERT INTO `mhr_lang_en` VALUES ('110', '122', 'No category has been found');
INSERT INTO `mhr_lang_en` VALUES ('111', '123', 'Insert a new record');
INSERT INTO `mhr_lang_en` VALUES ('112', '124', 'Go to the main page');
INSERT INTO `mhr_lang_en` VALUES ('113', '125', 'Show all categories');
INSERT INTO `mhr_lang_en` VALUES ('115', '127', 'Price');
INSERT INTO `mhr_lang_en` VALUES ('116', '128', 'Movements list');
INSERT INTO `mhr_lang_en` VALUES ('117', '129', 'Code (useful for tables and lists)');
INSERT INTO `mhr_lang_en` VALUES ('118', '130', 'Disable automatic calculator for this ingredient (Enable if you want the price to be 0 in any case)');
INSERT INTO `mhr_lang_en` VALUES ('119', '131', 'Ingredient');
INSERT INTO `mhr_lang_en` VALUES ('120', '132', 'Check the template');
INSERT INTO `mhr_lang_en` VALUES ('121', '133', '<b>Internal name</b><br>used only to set where to print dishes in the dishes list');
INSERT INTO `mhr_lang_en` VALUES ('122', '134', '<b>Printing queue name</b><br>the name of the printing queue<br>(name previously defined in the external printing system)');
INSERT INTO `mhr_lang_en` VALUES ('124', '136', '<b>Bills printer</b> - Print bills on this printer');
INSERT INTO `mhr_lang_en` VALUES ('125', '137', '<b>Invoices printer</b> - Print invoices on this printer');
INSERT INTO `mhr_lang_en` VALUES ('126', '138', '<b>Receipts printer</b> - Print receipts on this printer');
INSERT INTO `mhr_lang_en` VALUES ('127', '139', 'Printer');
INSERT INTO `mhr_lang_en` VALUES ('128', '140', '<b>Internal driver name</b><br>the internal driver to be used to get command codes');
INSERT INTO `mhr_lang_en` VALUES ('129', '141', '<b>Templates directory</b><br>directory containing the set of printing templates to be used for printing');
INSERT INTO `mhr_lang_en` VALUES ('130', '142', '<b>Printer language</b><br>The language in which the tickets should be printed<br>(experimental)');
INSERT INTO `mhr_lang_en` VALUES ('131', '143', 'Yes');
INSERT INTO `mhr_lang_en` VALUES ('132', '144', 'No');
INSERT INTO `mhr_lang_en` VALUES ('133', '145', 'Generate the report');
INSERT INTO `mhr_lang_en` VALUES ('134', '146', 'Backup');
INSERT INTO `mhr_lang_en` VALUES ('135', '147', 'Export');
INSERT INTO `mhr_lang_en` VALUES ('136', '148', 'Language');
INSERT INTO `mhr_lang_en` VALUES ('137', '149', 'Output type');
INSERT INTO `mhr_lang_en` VALUES ('138', '150', 'Database');
INSERT INTO `mhr_lang_en` VALUES ('139', '151', 'HTML');
INSERT INTO `mhr_lang_en` VALUES ('140', '152', 'File');
INSERT INTO `mhr_lang_en` VALUES ('141', '153', 'XML');
INSERT INTO `mhr_lang_en` VALUES ('142', '154', 'Structure only');
INSERT INTO `mhr_lang_en` VALUES ('143', '155', 'Text');
INSERT INTO `mhr_lang_en` VALUES ('146', '158', 'Base Database<br />(the new version\'s one)');
INSERT INTO `mhr_lang_en` VALUES ('145', '157', 'Main');
INSERT INTO `mhr_lang_en` VALUES ('147', '159', 'Target Database<br />(the old version\'s one)');
INSERT INTO `mhr_lang_en` VALUES ('148', '160', 'Compare');
INSERT INTO `mhr_lang_en` VALUES ('149', '161', 'Adds the code used to delete (DROP) the  database tables when restoring');
INSERT INTO `mhr_lang_en` VALUES ('150', '162', 'Use Mysqldump format (one INSERT row per table):');
INSERT INTO `mhr_lang_en` VALUES ('151', '163', 'From Version');
INSERT INTO `mhr_lang_en` VALUES ('152', '164', 'To version');
INSERT INTO `mhr_lang_en` VALUES ('153', '165', 'Upgrade');
INSERT INTO `mhr_lang_en` VALUES ('154', '166', 'Installed version');
INSERT INTO `mhr_lang_en` VALUES ('155', '167', 'Upgrade file');
INSERT INTO `mhr_lang_en` VALUES ('156', '168', 'Verbosity');
INSERT INTO `mhr_lang_en` VALUES ('157', '169', 'Low');
INSERT INTO `mhr_lang_en` VALUES ('158', '170', 'High');
INSERT INTO `mhr_lang_en` VALUES ('159', '171', 'None');
INSERT INTO `mhr_lang_en` VALUES ('160', '172', 'Upgrade SQL string (<b>for advanced users only</b>)');
INSERT INTO `mhr_lang_en` VALUES ('161', '173', 'Common Database');
INSERT INTO `mhr_lang_en` VALUES ('162', '174', 'You must have fresh installed version 0.8.3-beta6 or later to use the upgrader.');
INSERT INTO `mhr_lang_en` VALUES ('163', '175', '******************
Test Page.
******************
Internal name: {tpl_print_name}
Printing queue: {tpl_print_queue}
Printing driver: {tpl_print_driver}
Printing template: {tpl_print_template}
******************
Test Page End
******************');
INSERT INTO `mhr_lang_en` VALUES ('165', '177', 'List');
INSERT INTO `mhr_lang_en` VALUES ('164', '176', 'Test page');
INSERT INTO `mhr_lang_en` VALUES ('166', '178', 'Test page sent to printers');
INSERT INTO `mhr_lang_en` VALUES ('167', '179', 'Send test page to all printers');
INSERT INTO `mhr_lang_en` VALUES ('168', '180', 'Address');
INSERT INTO `mhr_lang_en` VALUES ('169', '181', 'Amount');
INSERT INTO `mhr_lang_en` VALUES ('170', '182', 'Apply');
INSERT INTO `mhr_lang_en` VALUES ('171', '183', 'Bank	');
INSERT INTO `mhr_lang_en` VALUES ('172', '184', 'Bank File');
INSERT INTO `mhr_lang_en` VALUES ('173', '185', 'Cash');
INSERT INTO `mhr_lang_en` VALUES ('174', '186', 'No category has been selected.');
INSERT INTO `mhr_lang_en` VALUES ('175', '187', 'Check the number.');
INSERT INTO `mhr_lang_en` VALUES ('176', '188', 'Check the date');
INSERT INTO `mhr_lang_en` VALUES ('177', '189', 'Check the taxable amount.');
INSERT INTO `mhr_lang_en` VALUES ('178', '190', 'Check the day');
INSERT INTO `mhr_lang_en` VALUES ('179', '191', 'Check the description');
INSERT INTO `mhr_lang_en` VALUES ('180', '192', 'Check the month');
INSERT INTO `mhr_lang_en` VALUES ('181', '193', 'Check the year');
INSERT INTO `mhr_lang_en` VALUES ('182', '194', 'The database already exists, select another database name.');
INSERT INTO `mhr_lang_en` VALUES ('183', '195', 'Internal error: no type supplied. Please contact');
INSERT INTO `mhr_lang_en` VALUES ('184', '196', 'Internal error: no invoice id supplied. Please contact');
INSERT INTO `mhr_lang_en` VALUES ('185', '197', 'Check number');
INSERT INTO `mhr_lang_en` VALUES ('186', '198', 'Insert');
INSERT INTO `mhr_lang_en` VALUES ('187', '199', 'Bank Account');
INSERT INTO `mhr_lang_en` VALUES ('188', '200', 'date');
INSERT INTO `mhr_lang_en` VALUES ('189', '201', 'No dish has been selected.');
INSERT INTO `mhr_lang_en` VALUES ('190', '202', 'who');
INSERT INTO `mhr_lang_en` VALUES ('191', '203', 'debts');
INSERT INTO `mhr_lang_en` VALUES ('192', '204', 'description');
INSERT INTO `mhr_lang_en` VALUES ('193', '205', 'edit');
INSERT INTO `mhr_lang_en` VALUES ('194', '206', 'e-mail');
INSERT INTO `mhr_lang_en` VALUES ('195', '207', 'employee file');
INSERT INTO `mhr_lang_en` VALUES ('196', '208', 'There has been an error.');
INSERT INTO `mhr_lang_en` VALUES ('197', '209', 'fax');
INSERT INTO `mhr_lang_en` VALUES ('198', '210', 'Go to the main report');
INSERT INTO `mhr_lang_en` VALUES ('200', '212', 'income');
INSERT INTO `mhr_lang_en` VALUES ('201', '213', 'income');
INSERT INTO `mhr_lang_en` VALUES ('202', '214', 'No ingredient has been selected.');
INSERT INTO `mhr_lang_en` VALUES ('203', '215', 'Simulate only (doesn\'t modify the database)');
INSERT INTO `mhr_lang_en` VALUES ('204', '216', 'Simulation mode<br/>(database has not been modified)');
INSERT INTO `mhr_lang_en` VALUES ('205', '217', 'Changelog');
INSERT INTO `mhr_lang_en` VALUES ('206', '218', 'Unknown error');
INSERT INTO `mhr_lang_en` VALUES ('207', '219', 'The table has been cleared');
INSERT INTO `mhr_lang_en` VALUES ('208', '220', 'Dissociate from table');
INSERT INTO `mhr_lang_en` VALUES ('209', '221', 'Last operation');
INSERT INTO `mhr_lang_en` VALUES ('210', '222', 'Do you really want to delete the order?');
INSERT INTO `mhr_lang_en` VALUES ('211', '223', 'Insert people number');
INSERT INTO `mhr_lang_en` VALUES ('212', '224', 'Account');

# ------------------------------------------------------

#
# Table: mhr_lang_it
#

#
# Structure dump for table mhr_lang_it 
#

DROP TABLE IF EXISTS `mhr_lang_it`;
CREATE TABLE `mhr_lang_it` (
  `id` int(11) NOT NULL auto_increment,
  `table_id` int(11) NOT NULL default '0',
  `table_name` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_lang_it 
#

INSERT INTO `mhr_lang_it` VALUES ('50', '62', 'Ricavo per cameriere');
INSERT INTO `mhr_lang_it` VALUES ('3', '3', 'Il conto bancario');
INSERT INTO `mhr_lang_it` VALUES ('4', '4', 'Movimenti del conto');
INSERT INTO `mhr_lang_it` VALUES ('5', '5', 'Banca');
INSERT INTO `mhr_lang_it` VALUES ('6', '6', 'Nome');
INSERT INTO `mhr_lang_it` VALUES ('7', '7', 'Numero di conto');
INSERT INTO `mhr_lang_it` VALUES ('8', '8', 'Codice ABI');
INSERT INTO `mhr_lang_it` VALUES ('9', '9', 'Codice CAB');
INSERT INTO `mhr_lang_it` VALUES ('10', '10', 'Codice CIN');
INSERT INTO `mhr_lang_it` VALUES ('11', '11', 'Codice IBAN');
INSERT INTO `mhr_lang_it` VALUES ('12', '12', 'Codice BIC ricevente (SWIFT)');
INSERT INTO `mhr_lang_it` VALUES ('13', '13', 'Codice BIC beneficiario');
INSERT INTO `mhr_lang_it` VALUES ('14', '14', 'Valuta (codice internazionale. es: EUR, USD, etc)');
INSERT INTO `mhr_lang_it` VALUES ('15', '15', 'Importo iniziale');
INSERT INTO `mhr_lang_it` VALUES ('16', '16', 'Conti bancari');
INSERT INTO `mhr_lang_it` VALUES ('17', '17', 'Importo');
INSERT INTO `mhr_lang_it` VALUES ('18', '18', 'Banca');
INSERT INTO `mhr_lang_it` VALUES ('19', '19', 'Nome');
INSERT INTO `mhr_lang_it` VALUES ('20', '20', 'Numero');
INSERT INTO `mhr_lang_it` VALUES ('21', '21', 'ABI');
INSERT INTO `mhr_lang_it` VALUES ('22', '22', 'CAB');
INSERT INTO `mhr_lang_it` VALUES ('23', '23', 'CIN');
INSERT INTO `mhr_lang_it` VALUES ('24', '24', 'IBAN');
INSERT INTO `mhr_lang_it` VALUES ('25', '25', 'SWIFT');
INSERT INTO `mhr_lang_it` VALUES ('26', '26', 'BIC');
INSERT INTO `mhr_lang_it` VALUES ('27', '27', 'Valuta');
INSERT INTO `mhr_lang_it` VALUES ('28', '28', 'Importo');
INSERT INTO `mhr_lang_it` VALUES ('29', '29', 'Conto bancario');
INSERT INTO `mhr_lang_it` VALUES ('30', '30', 'Data');
INSERT INTO `mhr_lang_it` VALUES ('31', '31', 'Causale');
INSERT INTO `mhr_lang_it` VALUES ('32', '32', 'Descrizione');
INSERT INTO `mhr_lang_it` VALUES ('33', '33', 'Se negativo');
INSERT INTO `mhr_lang_it` VALUES ('34', '34', 'Entrante');
INSERT INTO `mhr_lang_it` VALUES ('35', '35', 'Uscente');
INSERT INTO `mhr_lang_it` VALUES ('36', '36', 'Conto bancario');
INSERT INTO `mhr_lang_it` VALUES ('37', '37', 'Conti Bancari');
INSERT INTO `mhr_lang_it` VALUES ('38', '38', 'Lista conti');
INSERT INTO `mhr_lang_it` VALUES ('39', '39', 'Inserisci conto');
INSERT INTO `mhr_lang_it` VALUES ('40', '40', 'Modifica conto');
INSERT INTO `mhr_lang_it` VALUES ('41', '41', 'Il movimento');
INSERT INTO `mhr_lang_it` VALUES ('42', '54', 'E stato aggiunto correttamente');
INSERT INTO `mhr_lang_it` VALUES ('43', '55', 'E stato aggiornato correttamente');
INSERT INTO `mhr_lang_it` VALUES ('44', '56', 'E stato cancellato correttamente');
INSERT INTO `mhr_lang_it` VALUES ('45', '57', 'Non e stata compiuta alcuna operazione');
INSERT INTO `mhr_lang_it` VALUES ('46', '58', 'Cancella movimento');
INSERT INTO `mhr_lang_it` VALUES ('47', '59', 'Modifica movimento');
INSERT INTO `mhr_lang_it` VALUES ('48', '60', 'Inserisci movimento');
INSERT INTO `mhr_lang_it` VALUES ('49', '61', 'Movimento su conto bancario');
INSERT INTO `mhr_lang_it` VALUES ('51', '63', 'Contatti');
INSERT INTO `mhr_lang_it` VALUES ('52', '64', 'Lista Contatti');
INSERT INTO `mhr_lang_it` VALUES ('53', '65', 'Riepiloghi');
INSERT INTO `mhr_lang_it` VALUES ('54', '66', 'Magazzino');
INSERT INTO `mhr_lang_it` VALUES ('55', '67', 'Menu');
INSERT INTO `mhr_lang_it` VALUES ('56', '68', 'Ingredienti');
INSERT INTO `mhr_lang_it` VALUES ('58', '70', 'Categorie');
INSERT INTO `mhr_lang_it` VALUES ('59', '71', 'Camerieri');
INSERT INTO `mhr_lang_it` VALUES ('60', '72', 'Tavoli');
INSERT INTO `mhr_lang_it` VALUES ('61', '73', 'Piatti');
INSERT INTO `mhr_lang_it` VALUES ('62', '74', 'Aliquote IVA');
INSERT INTO `mhr_lang_it` VALUES ('63', '75', 'Contabilit&agrave;');
INSERT INTO `mhr_lang_it` VALUES ('64', '76', 'Espandi incassi');
INSERT INTO `mhr_lang_it` VALUES ('65', '77', 'Raggruppa incassi');
INSERT INTO `mhr_lang_it` VALUES ('66', '78', 'Sistema');
INSERT INTO `mhr_lang_it` VALUES ('67', '79', 'Configurazione');
INSERT INTO `mhr_lang_it` VALUES ('68', '80', 'Stampanti');
INSERT INTO `mhr_lang_it` VALUES ('69', '81', 'Database contabilit&agrave;');
INSERT INTO `mhr_lang_it` VALUES ('70', '82', 'Traduzioni');
INSERT INTO `mhr_lang_it` VALUES ('71', '83', 'Controllo');
INSERT INTO `mhr_lang_it` VALUES ('72', '84', 'Torna alla lista');
INSERT INTO `mhr_lang_it` VALUES ('73', '85', 'Aliquota IVA');
INSERT INTO `mhr_lang_it` VALUES ('74', '86', 'ID');
INSERT INTO `mhr_lang_it` VALUES ('75', '87', 'Nome');
INSERT INTO `mhr_lang_it` VALUES ('76', '88', 'Aggiorna');
INSERT INTO `mhr_lang_it` VALUES ('77', '89', 'Cancella');
INSERT INTO `mhr_lang_it` VALUES ('78', '90', 'Gestione menu');
INSERT INTO `mhr_lang_it` VALUES ('79', '91', 'Controllare il nome');
INSERT INTO `mhr_lang_it` VALUES ('80', '92', 'Controlla il colore');
INSERT INTO `mhr_lang_it` VALUES ('81', '93', 'Il valore del colore deve iniziare per #');
INSERT INTO `mhr_lang_it` VALUES ('82', '94', 'Colore categoria');
INSERT INTO `mhr_lang_it` VALUES ('83', '95', 'Nessun record &egrave; stato trovato');
INSERT INTO `mhr_lang_it` VALUES ('84', '96', 'Inserisci');
INSERT INTO `mhr_lang_it` VALUES ('85', '97', 'Categoria');
INSERT INTO `mhr_lang_it` VALUES ('86', '98', 'Controllare il nome del database');
INSERT INTO `mhr_lang_it` VALUES ('87', '99', 'Database contabilit&agrave;');
INSERT INTO `mhr_lang_it` VALUES ('88', '100', '<b>Database Name</b><br />Il nome del database come registrato in MySQL');
INSERT INTO `mhr_lang_it` VALUES ('89', '101', '<b>Stampa ricevute</b> - accendere se si vuole che ricevute/scontini/fatture asseganti a questo database vengano stampati');
INSERT INTO `mhr_lang_it` VALUES ('90', '102', '<b>Attenzione:</b> Se si rimuove il database, tutti i dati associati ad esso (contabilit&agrave;, registro statistiche, rubrica, registro ricevute, movimenti magazzino) saranno cancellati in modo <b>irrecuperabile</b>');
INSERT INTO `mhr_lang_it` VALUES ('91', '103', '<b>Elimina il database</b> (include l\'eliminazione di tutte le tabelle).');
INSERT INTO `mhr_lang_it` VALUES ('92', '104', '<b>Elimina le tabelle di My Handy Restaurant</b> da questo database, quando si cancella questa voce.');
INSERT INTO `mhr_lang_it` VALUES ('93', '105', '<b>Nome Interno</b><br />visualizzato agli utenti');
INSERT INTO `mhr_lang_it` VALUES ('94', '106', 'Nessuna destinazione &egrave; stata trovata');
INSERT INTO `mhr_lang_it` VALUES ('96', '108', 'Rimosso con successo');
INSERT INTO `mhr_lang_it` VALUES ('97', '109', 'Nessuna voce &egrave; stata rimossa');
INSERT INTO `mhr_lang_it` VALUES ('98', '110', 'Modificato con successo');
INSERT INTO `mhr_lang_it` VALUES ('99', '111', 'Nessun record &egrave; stato modificato');
INSERT INTO `mhr_lang_it` VALUES ('100', '112', 'Piatto');
INSERT INTO `mhr_lang_it` VALUES ('101', '113', 'Codice (utile per magazzino)');
INSERT INTO `mhr_lang_it` VALUES ('102', '114', 'Calcolatore automatico');
INSERT INTO `mhr_lang_it` VALUES ('103', '115', 'Magazzino (se attivo, il prodotto verra contato nella gestione del magazzino)');
INSERT INTO `mhr_lang_it` VALUES ('104', '116', 'Piatto generico - da usare per i casi non previsti, come richieste molto particolari. Il suo prezzo pu�essere modificato dal cassiere.');
INSERT INTO `mhr_lang_it` VALUES ('105', '117', 'Visibile ai camerieri');
INSERT INTO `mhr_lang_it` VALUES ('106', '118', 'Destinazione stampe');
INSERT INTO `mhr_lang_it` VALUES ('107', '119', 'No');
INSERT INTO `mhr_lang_it` VALUES ('108', '120', 'Incluso');
INSERT INTO `mhr_lang_it` VALUES ('109', '121', 'Disponibile');
INSERT INTO `mhr_lang_it` VALUES ('110', '122', 'Nessuna categoria &egrave; stata trovata');
INSERT INTO `mhr_lang_it` VALUES ('111', '123', 'Inserisci una nuova voce');
INSERT INTO `mhr_lang_it` VALUES ('112', '124', 'Vai alla pagina principale');
INSERT INTO `mhr_lang_it` VALUES ('113', '125', 'Mostra tutte le categorie');
INSERT INTO `mhr_lang_it` VALUES ('115', '127', 'Prezzo');
INSERT INTO `mhr_lang_it` VALUES ('116', '128', 'Lista dei movimenti');
INSERT INTO `mhr_lang_it` VALUES ('117', '129', 'Codice (utile per tabelle e liste)');
INSERT INTO `mhr_lang_it` VALUES ('118', '130', 'Disabilita il calcolatore automatico per questo ingrediente (Abilitare se si vuole il prezzo pari a 0 in ogni caso)');
INSERT INTO `mhr_lang_it` VALUES ('119', '131', 'Ingrediente');
INSERT INTO `mhr_lang_it` VALUES ('120', '132', 'Controllare il modello');
INSERT INTO `mhr_lang_it` VALUES ('121', '133', '<b>Nome interno</b><br>usato solo per indicare dove stampare nella lista piatti');
INSERT INTO `mhr_lang_it` VALUES ('122', '134', '<b>Nome coda di stampa</b><br>Il nome della coda di stampa<br>(nome definito precedentemente nel sistema di stampa esterno)');
INSERT INTO `mhr_lang_it` VALUES ('124', '136', '<b>Stampante conti</b> - Stampa i conti su questa stampante');
INSERT INTO `mhr_lang_it` VALUES ('125', '137', '<b>Stampante fatture</b> - Stampa le fatture su questa stampante');
INSERT INTO `mhr_lang_it` VALUES ('126', '138', '<b>Stampante scontrini</b> - Stampa gli scontrini su questa stampante');
INSERT INTO `mhr_lang_it` VALUES ('127', '139', 'Stampante');
INSERT INTO `mhr_lang_it` VALUES ('128', '140', '<b>Driver interno</b><br>Il driver interno da usare per ottenere i codici di controllo');
INSERT INTO `mhr_lang_it` VALUES ('129', '141', '<b>Directory modelli</b><br>directory contenente i set di modelli da usare per la stampa');
INSERT INTO `mhr_lang_it` VALUES ('130', '142', '<b>Lingua stampante</b><br>La lingua in cui i biglietti saranno stampati<br>(sperimentale)');
INSERT INTO `mhr_lang_it` VALUES ('131', '143', 'S&igrave;');
INSERT INTO `mhr_lang_it` VALUES ('132', '144', 'No');
INSERT INTO `mhr_lang_it` VALUES ('133', '145', 'Genera report');
INSERT INTO `mhr_lang_it` VALUES ('134', '146', 'Backup');
INSERT INTO `mhr_lang_it` VALUES ('135', '147', 'Esporta');
INSERT INTO `mhr_lang_it` VALUES ('136', '148', 'Lingua');
INSERT INTO `mhr_lang_it` VALUES ('137', '149', 'Formato');
INSERT INTO `mhr_lang_it` VALUES ('138', '150', 'Database');
INSERT INTO `mhr_lang_it` VALUES ('139', '151', 'HTML');
INSERT INTO `mhr_lang_it` VALUES ('140', '152', 'File');
INSERT INTO `mhr_lang_it` VALUES ('141', '153', 'XML');
INSERT INTO `mhr_lang_it` VALUES ('142', '154', 'Solo struttura');
INSERT INTO `mhr_lang_it` VALUES ('143', '155', 'Testo');
INSERT INTO `mhr_lang_it` VALUES ('146', '158', 'Database Riferimento<br />(associato alla nuova versione)');
INSERT INTO `mhr_lang_it` VALUES ('145', '157', 'Principale');
INSERT INTO `mhr_lang_it` VALUES ('147', '159', 'Database da controllare<br />(associato alla vecchia versione)');
INSERT INTO `mhr_lang_it` VALUES ('148', '160', 'Confronta');
INSERT INTO `mhr_lang_it` VALUES ('149', '161', 'Aggiunge il codice per cancellare (DROP) le tabelle dal database quando si ripristinano i dati dal backup');
INSERT INTO `mhr_lang_it` VALUES ('150', '162', 'Usa il formato Mysqldump (una riga INSERT per tabella):');
INSERT INTO `mhr_lang_it` VALUES ('151', '163', 'Dalla versione');
INSERT INTO `mhr_lang_it` VALUES ('152', '164', 'Alla versione');
INSERT INTO `mhr_lang_it` VALUES ('153', '165', 'Aggiornamenti');
INSERT INTO `mhr_lang_it` VALUES ('154', '166', 'Versione installata');
INSERT INTO `mhr_lang_it` VALUES ('155', '167', 'File di aggiornamento');
INSERT INTO `mhr_lang_it` VALUES ('156', '168', 'Prolissit&agrave;');
INSERT INTO `mhr_lang_it` VALUES ('157', '169', 'Bassa');
INSERT INTO `mhr_lang_it` VALUES ('158', '170', 'Alta');
INSERT INTO `mhr_lang_it` VALUES ('159', '171', 'Nulla');
INSERT INTO `mhr_lang_it` VALUES ('160', '172', 'Stringa SQL di aggiornamento (<b>solo per utenti esperti</b>)');
INSERT INTO `mhr_lang_it` VALUES ('161', '173', 'Database Principale');
INSERT INTO `mhr_lang_it` VALUES ('162', '174', 'La versione 0.8.3-beta6 o successiva deve essere installata perch&egrave; l\'utility di aggiornamento funzioni.');
INSERT INTO `mhr_lang_it` VALUES ('163', '175', '******************
Pagina di prova
******************
Nome interno: {tpl_print_name}
Coda di stampa: {tpl_print_queue}
Driver interno di stampa: {tpl_print_driver}
Modello di stampa: {tpl_print_template}
******************
Fine pagina di prova
******************');
INSERT INTO `mhr_lang_it` VALUES ('164', '176', 'Pagina prova');
INSERT INTO `mhr_lang_it` VALUES ('165', '177', 'Lista');
INSERT INTO `mhr_lang_it` VALUES ('166', '178', 'Pagina di prova inviata alle stampanti');
INSERT INTO `mhr_lang_it` VALUES ('167', '179', 'Invia la pagina di prova a tutte le stampanti');
INSERT INTO `mhr_lang_it` VALUES ('168', '180', 'Indirizzo');
INSERT INTO `mhr_lang_it` VALUES ('169', '181', 'Importo');
INSERT INTO `mhr_lang_it` VALUES ('170', '182', 'Applica');
INSERT INTO `mhr_lang_it` VALUES ('171', '183', 'Banca');
INSERT INTO `mhr_lang_it` VALUES ('172', '184', 'Scheda Banca');
INSERT INTO `mhr_lang_it` VALUES ('173', '185', 'Cassa');
INSERT INTO `mhr_lang_it` VALUES ('174', '186', 'Non &egrave; stata selezionata alcuna categoria.');
INSERT INTO `mhr_lang_it` VALUES ('175', '187', 'Controllare il numero.');
INSERT INTO `mhr_lang_it` VALUES ('176', '188', 'Controllare la data');
INSERT INTO `mhr_lang_it` VALUES ('177', '189', 'Controllare l\'imponibile.');
INSERT INTO `mhr_lang_it` VALUES ('178', '190', 'Controllare il giorno');
INSERT INTO `mhr_lang_it` VALUES ('179', '191', 'Controllare the description');
INSERT INTO `mhr_lang_it` VALUES ('180', '192', 'Controllare il mese');
INSERT INTO `mhr_lang_it` VALUES ('181', '193', 'Controllare l\'anno');
INSERT INTO `mhr_lang_it` VALUES ('182', '194', 'Il database esiste gi&agrave;, immettere un altro nome di database.');
INSERT INTO `mhr_lang_it` VALUES ('183', '195', 'Error interno: nessun tipo fornito. Per favore contattare');
INSERT INTO `mhr_lang_it` VALUES ('184', '196', 'Internal error: nessun id fattura fornito. Per favore contattare');
INSERT INTO `mhr_lang_it` VALUES ('185', '197', 'Numero assegno');
INSERT INTO `mhr_lang_it` VALUES ('186', '198', 'Inserisci');
INSERT INTO `mhr_lang_it` VALUES ('187', '199', 'Conto bancario');
INSERT INTO `mhr_lang_it` VALUES ('188', '200', 'data');
INSERT INTO `mhr_lang_it` VALUES ('189', '201', 'Non &egrave; stato selezionato alcun piatto.');
INSERT INTO `mhr_lang_it` VALUES ('190', '202', 'chi');
INSERT INTO `mhr_lang_it` VALUES ('191', '203', 'debiti');
INSERT INTO `mhr_lang_it` VALUES ('192', '204', 'descrizione');
INSERT INTO `mhr_lang_it` VALUES ('193', '205', 'modifica');
INSERT INTO `mhr_lang_it` VALUES ('194', '206', 'e-mail');
INSERT INTO `mhr_lang_it` VALUES ('195', '207', 'scheda impiegato');
INSERT INTO `mhr_lang_it` VALUES ('196', '208', 'Si &egrave; verificato un errore.');
INSERT INTO `mhr_lang_it` VALUES ('197', '209', 'fax');
INSERT INTO `mhr_lang_it` VALUES ('198', '210', 'Torna al report principale');
INSERT INTO `mhr_lang_it` VALUES ('200', '212', 'incasso');
INSERT INTO `mhr_lang_it` VALUES ('201', '213', 'incassi');
INSERT INTO `mhr_lang_it` VALUES ('202', '214', 'Non &egrave; stato selezionato nessun ingrediente\'');
INSERT INTO `mhr_lang_it` VALUES ('203', '215', 'Simula soltanto (non modifica il database)');
INSERT INTO `mhr_lang_it` VALUES ('204', '216', 'Modalit&agrave; simulazione<br/>(Nessuna modifica apportata al database)');
INSERT INTO `mhr_lang_it` VALUES ('205', '217', 'Changelog');
INSERT INTO `mhr_lang_it` VALUES ('206', '218', 'Errore sconosciuto');
INSERT INTO `mhr_lang_it` VALUES ('207', '219', 'Il tavolo &egrave; stato liberato');
INSERT INTO `mhr_lang_it` VALUES ('208', '220', 'Dissocia dal tavolo');
INSERT INTO `mhr_lang_it` VALUES ('209', '221', 'Ultima operazione');
INSERT INTO `mhr_lang_it` VALUES ('210', '222', 'Vuoi davvero cancellare l\'ordine?');
INSERT INTO `mhr_lang_it` VALUES ('211', '223', 'Inserisci numero persone');
INSERT INTO `mhr_lang_it` VALUES ('212', '224', 'Conto');

# ------------------------------------------------------

#
# Table: mhr_mgmt_people_types
#

#
# Structure dump for table mhr_mgmt_people_types 
#

DROP TABLE IF EXISTS `mhr_mgmt_people_types`;
CREATE TABLE `mhr_mgmt_people_types` (
  `id` tinyint(4) NOT NULL auto_increment,
  `name` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_mgmt_people_types 
#

INSERT INTO `mhr_mgmt_people_types` VALUES ('1', 'Banca');
INSERT INTO `mhr_mgmt_people_types` VALUES ('2', 'Fornitore');
INSERT INTO `mhr_mgmt_people_types` VALUES ('3', 'Operatore POS');
INSERT INTO `mhr_mgmt_people_types` VALUES ('4', 'Dipendente');
INSERT INTO `mhr_mgmt_people_types` VALUES ('5', 'Altro');

# ------------------------------------------------------

#
# Table: mhr_mgmt_people_types_en
#

#
# Structure dump for table mhr_mgmt_people_types_en 
#

DROP TABLE IF EXISTS `mhr_mgmt_people_types_en`;
CREATE TABLE `mhr_mgmt_people_types_en` (
  `id` tinyint(4) NOT NULL auto_increment,
  `table_id` tinyint(4) NOT NULL default '0',
  `table_name` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_mgmt_people_types_en 
#

INSERT INTO `mhr_mgmt_people_types_en` VALUES ('1', '1', 'Bank');
INSERT INTO `mhr_mgmt_people_types_en` VALUES ('2', '2', 'Supplier');
INSERT INTO `mhr_mgmt_people_types_en` VALUES ('3', '3', 'POS circuit operator');
INSERT INTO `mhr_mgmt_people_types_en` VALUES ('4', '4', 'Employee');
INSERT INTO `mhr_mgmt_people_types_en` VALUES ('5', '5', 'Other');

# ------------------------------------------------------

#
# Table: mhr_mgmt_people_types_it
#

#
# Structure dump for table mhr_mgmt_people_types_it 
#

DROP TABLE IF EXISTS `mhr_mgmt_people_types_it`;
CREATE TABLE `mhr_mgmt_people_types_it` (
  `id` tinyint(4) NOT NULL auto_increment,
  `table_id` tinyint(4) NOT NULL default '0',
  `table_name` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_mgmt_people_types_it 
#

INSERT INTO `mhr_mgmt_people_types_it` VALUES ('1', '1', 'Banca');
INSERT INTO `mhr_mgmt_people_types_it` VALUES ('2', '2', 'Fornitore');
INSERT INTO `mhr_mgmt_people_types_it` VALUES ('3', '3', 'Operatore POS');
INSERT INTO `mhr_mgmt_people_types_it` VALUES ('4', '4', 'Dipendente');
INSERT INTO `mhr_mgmt_people_types_it` VALUES ('5', '5', 'Altro');

# ------------------------------------------------------

#
# Table: mhr_mgmt_types
#

#
# Structure dump for table mhr_mgmt_types 
#

DROP TABLE IF EXISTS `mhr_mgmt_types`;
CREATE TABLE `mhr_mgmt_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `account_only` tinyint(4) NOT NULL default '0',
  `is_invoice` tinyint(4) NOT NULL default '0',
  `is_receipt` tinyint(4) NOT NULL default '0',
  `log_to_bank` tinyint(3) unsigned NOT NULL default '0',
  `is_invoice_payment` tinyint(3) unsigned NOT NULL default '0',
  `is_bill` tinyint(4) NOT NULL default '0',
  UNIQUE KEY `id` (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_mgmt_types 
#

INSERT INTO `mhr_mgmt_types` VALUES ('1', 'Assegno', '0', '0', '0', '1', '1', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('2', 'Bonifico', '0', '0', '0', '1', '1', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('3', 'Fattura', '0', '1', '0', '0', '0', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('4', 'Ricevuta', '0', '0', '1', '0', '1', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('5', 'Scontrino', '0', '0', '0', '0', '0', '1');
INSERT INTO `mhr_mgmt_types` VALUES ('6', 'Versamento', '0', '0', '0', '1', '0', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('7', 'POS', '0', '0', '0', '1', '0', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('8', 'Accredito Interessi', '1', '0', '0', '0', '0', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('9', 'Imposta', '1', '0', '0', '0', '0', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('10', 'Spese Operazione', '1', '0', '0', '0', '0', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('11', 'Spese Conto', '1', '0', '0', '0', '0', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('12', 'Altro', '1', '0', '0', '0', '0', '0');
INSERT INTO `mhr_mgmt_types` VALUES ('13', 'Prelievo', '1', '0', '0', '0', '0', '0');

# ------------------------------------------------------

#
# Table: mhr_mgmt_types_en
#

#
# Structure dump for table mhr_mgmt_types_en 
#

DROP TABLE IF EXISTS `mhr_mgmt_types_en`;
CREATE TABLE `mhr_mgmt_types_en` (
  `id` int(11) NOT NULL auto_increment,
  `table_id` int(11) NOT NULL default '0',
  `table_name` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_mgmt_types_en 
#

INSERT INTO `mhr_mgmt_types_en` VALUES ('1', '1', 'Check');
INSERT INTO `mhr_mgmt_types_en` VALUES ('2', '2', 'Credit transfer');
INSERT INTO `mhr_mgmt_types_en` VALUES ('3', '3', 'Invoice');
INSERT INTO `mhr_mgmt_types_en` VALUES ('4', '4', 'Receipt');
INSERT INTO `mhr_mgmt_types_en` VALUES ('5', '5', 'Ticket');
INSERT INTO `mhr_mgmt_types_en` VALUES ('6', '6', 'Deposit');
INSERT INTO `mhr_mgmt_types_en` VALUES ('7', '7', 'POS');
INSERT INTO `mhr_mgmt_types_en` VALUES ('8', '8', 'Interests');
INSERT INTO `mhr_mgmt_types_en` VALUES ('9', '9', 'Tax');
INSERT INTO `mhr_mgmt_types_en` VALUES ('10', '10', 'Operation expense');
INSERT INTO `mhr_mgmt_types_en` VALUES ('11', '11', 'Account expense');
INSERT INTO `mhr_mgmt_types_en` VALUES ('12', '12', 'Other');
INSERT INTO `mhr_mgmt_types_en` VALUES ('13', '13', 'Withdrawal');

# ------------------------------------------------------

#
# Table: mhr_mgmt_types_it
#

#
# Structure dump for table mhr_mgmt_types_it 
#

DROP TABLE IF EXISTS `mhr_mgmt_types_it`;
CREATE TABLE `mhr_mgmt_types_it` (
  `id` int(11) NOT NULL auto_increment,
  `table_id` int(11) NOT NULL default '0',
  `table_name` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_mgmt_types_it 
#

INSERT INTO `mhr_mgmt_types_it` VALUES ('1', '1', 'Assegno');
INSERT INTO `mhr_mgmt_types_it` VALUES ('2', '2', 'Bonifico');
INSERT INTO `mhr_mgmt_types_it` VALUES ('3', '3', 'Fattura');
INSERT INTO `mhr_mgmt_types_it` VALUES ('4', '4', 'Ricevuta');
INSERT INTO `mhr_mgmt_types_it` VALUES ('5', '5', 'Scontrino');
INSERT INTO `mhr_mgmt_types_it` VALUES ('6', '6', 'Versamento');
INSERT INTO `mhr_mgmt_types_it` VALUES ('7', '7', 'POS');
INSERT INTO `mhr_mgmt_types_it` VALUES ('8', '8', 'Accredito Interessi');
INSERT INTO `mhr_mgmt_types_it` VALUES ('9', '9', 'Imposta');
INSERT INTO `mhr_mgmt_types_it` VALUES ('10', '10', 'Spese Operazione');
INSERT INTO `mhr_mgmt_types_it` VALUES ('11', '11', 'Spese Conto');
INSERT INTO `mhr_mgmt_types_it` VALUES ('12', '12', 'Altro');
INSERT INTO `mhr_mgmt_types_it` VALUES ('13', '13', 'Prelievo');

# ------------------------------------------------------

#
# Table: mhr_system
#

#
# Structure dump for table mhr_system 
#

DROP TABLE IF EXISTS `mhr_system`;
CREATE TABLE `mhr_system` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Data dump for table mhr_system 
#

INSERT INTO `mhr_system` VALUES ('1', 'upgrade_last_key', '3');
INSERT INTO `mhr_system` VALUES ('2', 'version', '0.8.4-beta3');

# ------------------------------------------------------

#
# End of dump for database handyrestaurant_common
#

#
# Do not modify the following line
# Database_type: account
#


#
# Compare report tree
#

#
# Upgrade SQL code
#

#
# My Handy Restaurant database dump
#

#
# Generating time: 31 July 2004 at 15:10
#
# Database name: handyrestaurant_A
#

# ------------------------------------------------------

#
# End of dump for database handyrestaurant_A
#
