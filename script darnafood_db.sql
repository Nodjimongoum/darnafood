CREATE TABLE darnafood_db.  `client` (
				   `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
				   `nom` VARCHAR(150)  NOT NULL,
				   `addresse` VARCHAR(155) NOT NULL,
				   `email` VARCHAR(155) NOT NULL,
                   `tel` VARCHAR(20) NOT NULL,
                   PRIMARY KEY (`id`)
				 ) ENGINE=INNODB DEFAULT CHARSET=utf8;
				 
                 
                 CREATE TABLE darnafood_db.  `fournisseur` (
				   `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
				   `nom` VARCHAR(150)  NOT NULL,
				   `addresse` VARCHAR(155) NOT NULL,
				   `email` VARCHAR(155) NOT NULL,
                   `tel` VARCHAR(20) NOT NULL,
				   PRIMARY KEY (`id`)
				 ) ENGINE=INNODB DEFAULT CHARSET=utf8;
                 
                  CREATE TABLE darnafood_db.  `ingredient` (
				   `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
				   `libelle` VARCHAR(150)  NOT NULL,
				   `remarque` VARCHAR(155) NOT NULL,
					`id_fournisseur` INT(10) UNSIGNED NOT NULL,
				   PRIMARY KEY (`id`),
				   KEY `id1` (`id`,`id_fournisseur`),
				   KEY `tbl_fournisseur` (`id_fournisseur`),
				   CONSTRAINT `tbl_fournisseur` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
				 ) ENGINE=INNODB DEFAULT CHARSET=utf8;
                 
                 CREATE TABLE darnafood_db.  `livreur` (
				   `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
				   `nom` VARCHAR(150)  NOT NULL,
				   `addresse` VARCHAR(155) NOT NULL,
				   `email` VARCHAR(155) NOT NULL,
                   `tel` VARCHAR(20) NOT NULL,
				   PRIMARY KEY (`id`)
				 ) ENGINE=INNODB DEFAULT CHARSET=utf8;
                 
                 CREATE TABLE darnafood_db.  `livraison` (
				   `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
				   `libelle` VARCHAR(150)  NOT NULL,
				   `id_produit` INT(10) UNSIGNED NOT NULL,
                   `id_client` INT(10) UNSIGNED NOT NULL,
                   `id_livreur` INT(10) UNSIGNED NOT NULL,
				   PRIMARY KEY (`id`),
				   KEY `id1` (`id`,`id_produit`),
				   KEY `tbl_produit` (`id_produit`),
				   CONSTRAINT `tbl_produit` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`) ON DELETE CASCADE ON UPDATE CASCADE,
                   KEY `id2` (`id`,`id_client`),
				   KEY `tbl_client` (`id_client`),
				   CONSTRAINT `tbl_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
                   KEY `id3` (`id`,`id_livreur`),
				   KEY `tbl_livreur` (`id_livreur`),
				   CONSTRAINT `tbl_livreur` FOREIGN KEY (`id_livreur`) REFERENCES `livreur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
				 ) ENGINE=INNODB DEFAULT CHARSET=utf8;
				 