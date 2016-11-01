<?php

pdo_query("DROP TABLE IF EXISTS ".tablename('we7_weikanjia').";");

pdo_query("DROP TABLE IF EXISTS ".tablename('we7_weikanjia_user').";");
pdo_query("DROP TABLE IF EXISTS ".tablename('we7_weikanjia_firend').";");
pdo_query("DROP TABLE IF EXISTS ".tablename('we7_weikanjia_order').";");
pdo_query("DROP TABLE IF EXISTS ".tablename('we7_weikanjia_setting').";");