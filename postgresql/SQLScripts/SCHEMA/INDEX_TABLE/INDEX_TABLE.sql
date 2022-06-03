-- 3D City Database - The Open Source CityGML Database
-- https://www.3dcitydb.org/
--
-- Copyright 2013 - 2021
-- Chair of Geoinformatics
-- Technical University of Munich, Germany
-- https://www.lrg.tum.de/gis/
--
-- The 3D City Database is jointly developed with the following
-- cooperation partners:
--
-- Virtual City Systems, Berlin <https://vc.systems/>
-- M.O.S.S. Computer Grafik Systeme GmbH, Taufkirchen <http://www.moss.de/>
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

/******************************************************************
* INDEX_TABLE that holds INDEX_OBJ instances
* 
******************************************************************/
CREATE TABLE INDEX_TABLE (
  ID   SERIAL PRIMARY KEY,
  obj  citydb_pkg.INDEX_OBJ
);


/******************************************************************
* Populate INDEX_TABLE with INDEX_OBJ instances
* 
******************************************************************/
INSERT INTO index_table (obj) VALUES (citydb_pkg.construct_spatial_2d('feature_envelope_spx', 'feature', 'envelope'));
INSERT INTO index_table (obj) VALUES (citydb_pkg.construct_spatial_2d('geometry_data_spx', 'geometry_data', 'geometry'));
INSERT INTO index_table (obj) VALUES (citydb_pkg.construct_normal('geometry_data_objectid_inx', 'geometry_data', 'objectid'));
INSERT INTO index_table (obj) VALUES (citydb_pkg.construct_normal('feature_objectid_inx', 'feature', 'objectid'));
INSERT INTO index_table (obj) VALUES (citydb_pkg.construct_normal('feature_identifier_inx', 'feature', 'identifier, identifier_codespace'));
INSERT INTO index_table (obj) VALUES (citydb_pkg.construct_normal('appearance_objectid_inx', 'appearance', 'objectid'));
INSERT INTO index_table (obj) VALUES (citydb_pkg.construct_normal('appearance_identifier_inx', 'appearance', 'identifier, identifier_codespace'));
INSERT INTO index_table (obj) VALUES (citydb_pkg.construct_normal('appearance_theme_inx', 'appearance', 'theme'));
INSERT INTO index_table (obj) VALUES (citydb_pkg.construct_normal('surface_data_objectid_inx', 'surface_data', 'objectid'));
INSERT INTO index_table (obj) VALUES (citydb_pkg.construct_normal('surface_data_identifier_inx', 'surface_data', 'identifier, identifier_codespace'));
