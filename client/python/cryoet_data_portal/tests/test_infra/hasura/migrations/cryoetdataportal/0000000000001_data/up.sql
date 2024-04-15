INSERT INTO public.tomogram_type VALUES ('CANONICAL', NULL);
INSERT INTO public.tomogram_type VALUES ('UNKNOWN', NULL);

INSERT INTO public.datasets VALUES (20001, 'Test Dataset 1', 'Description 1', '2023-04-01', '2023-06-01', '2023-06-01', NULL, NULL, 'EMPIAR-99990, EMD-12345, EMD-12346, 10.1101/2022.01.01.111111', NULL, 'organism', 'Test Bacteria 1', '5555', NULL, NULL, '', '', NULL, 'http://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=8888', 'Sample Prep 1', 'Grid Prep 1', NULL, 's3://test-public-bucket/20001/', 'http://localhost:4444/20001/', NULL, NULL, NULL, NULL);
INSERT INTO public.datasets VALUES (20002, 'Test Dataset 2', 'Description 2', '2023-02-01', '2023-06-21', '2023-06-22', NULL, NULL, 'EMPIAR-99991, 10.1101/2022.01.01.22222', NULL, 'organism', 'Test Virus 2', '6666', NULL, NULL, '', '', NULL, 'http://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=7777', 'Sample Prep 2', 'Grid Prep 2', NULL, 's3://test-public-bucket/20002/', 'http://localhost:4444/20002/', NULL, NULL, NULL, NULL);

INSERT INTO public.dataset_funding VALUES (1, 20001, 'Grant For dataset1', '11111');
INSERT INTO public.dataset_funding VALUES (2, 20002, 'Grant For dataset2', '22222');

INSERT INTO public.dataset_authors VALUES (1, 'Author 1', NULL, false, NULL, NULL, NULL, NULL, 20001, true, NULL);
INSERT INTO public.dataset_authors VALUES (2, 'Author 2', '0000-2222-9999-8888', false, NULL, NULL, NULL, NULL, 20001, true, NULL);
INSERT INTO public.dataset_authors VALUES (3, 'Author 3', NULL, false, NULL, NULL, NULL, NULL, 20002, true, NULL);
INSERT INTO public.dataset_authors VALUES (4, 'Author 4', '4444-2222-9999-8888', false, NULL, NULL, NULL, NULL, 20002, true, NULL);

INSERT INTO public.runs VALUES (1, 20001, 'RUN1', 's3://test-public-bucket/20001/RUN1/', 'http://localhost:4444/20001/RUN1/');
INSERT INTO public.runs VALUES (2, 20001, 'RUN2', 's3://test-public-bucket/20001/RUN2/', 'http://localhost:4444/20001/RUN2/');
INSERT INTO public.runs VALUES (3, 20002, 'RUN001', 's3://test-public-bucket/20002/RUN001/', 'http://localhost:4444/20002/RUN001/');
INSERT INTO public.runs VALUES (4, 20002, 'RUN002', 's3://test-public-bucket/20002/RUN002/', 'http://localhost:4444/20002/RUN002/');

INSERT INTO public.tomogram_voxel_spacings VALUES (4, 1, 13.48, 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/');
INSERT INTO public.tomogram_voxel_spacings VALUES (5, 2, 7.56, 's3://test-public-bucket/20001/RUN2/TomogramVoxelSpacing7.56/', 'http://localhost:4444/20001/RUN2/TomogramVoxelSpacing7.56/');
INSERT INTO public.tomogram_voxel_spacings VALUES (6, 3, 7.56, 's3://test-public-bucket/20002/RUN001/TomogramVoxelSpacing7.56/', 'http://localhost:4444/20002/RUN001/TomogramVoxelSpacing7.56/');
INSERT INTO public.tomogram_voxel_spacings VALUES (7, 4, 13.48, 's3://test-public-bucket/20002/RUN002/TomogramVoxelSpacing13.48/', 'http://localhost:4444/20002/RUN002/TomogramVoxelSpacing13.48/');

INSERT INTO public.annotations VALUES (40, 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/author1-mitochondria-1.0.json', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/author1-mitochondria-1.0.json', '2023-04-01', '2023-06-01', '2023-06-01', 'EMPIAR-77777', 'Manual', true, 'Mitochondria', 'GO:0000000', NULL, NULL, 16, NULL, NULL, NULL, 4, NULL, true);
INSERT INTO public.annotations VALUES (41, 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/author1-ribosome-1.0.json', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/author1-ribosome-1.0.json', '2023-04-01', '2023-06-01', '2023-06-01', 'EMPIAR-77777', 'Manual', true, 'Ribosome', 'GO:000000A', NULL, NULL, 16, NULL, NULL, NULL, 4, NULL, true);
INSERT INTO public.annotations VALUES (42, 's3://test-public-bucket/20001/RUN2/TomogramVoxelSpacing7.56/Annotations/author2-ribosome-1.0.json', 'http://localhost:4444/20001/RUN2/TomogramVoxelSpacing7.56/Annotations/author2-ribosome-1.0.json', '2023-04-01', '2023-06-01', '2023-06-01', 'EMPIAR-77777', 'Manual', true, 'Ribosome', 'GO:000000A', NULL, NULL, 16, NULL, NULL, NULL, 5, NULL, true);
INSERT INTO public.annotations VALUES (43, 's3://test-public-bucket/20002/RUN001/TomogramVoxelSpacing7.56/Annotations/author3-ribosome-1.0.json', 'http://localhost:4444/20002/RUN001/TomogramVoxelSpacing7.56/Annotations/author3-ribosome-1.0.json', '2023-04-01', '2023-06-01', '2023-06-01', 'EMPIAR-77777', 'Manual', true, 'Ribosome', 'GO:000000A', NULL, NULL, 16, NULL, NULL, NULL, 6, NULL, true);
INSERT INTO public.annotations VALUES (44, 's3://test-public-bucket/20002/RUN002/TomogramVoxelSpacing13.48/Annotations/author4-ribosome-1.0.json', 'http://localhost:4444/20002/RUN002/TomogramVoxelSpacing13.48/Annotations/author4-ribosome-1.0.json', '2023-04-01', '2023-06-01', '2023-06-01', 'EMPIAR-77777', 'Manual', true, 'Ribosome', 'GO:000000A', NULL, NULL, 16, NULL, NULL, NULL, 7, NULL, true);
INSERT INTO public.annotations VALUES (45, 's3://test-public-bucket/20002/RUN002/TomogramVoxelSpacing13.48/Annotations/author4-spike-1.0.json', 'http://localhost:4444/20002/RUN002/TomogramVoxelSpacing13.48/Annotations/author4-spike-1.0.json', '2023-04-01', '2023-06-01', '2023-06-01', 'EMPIAR-77777', 'Manual', true, 'Spike Protein', 'GO:000000A', NULL, NULL, 16, NULL, NULL, NULL, 7, NULL, true);

INSERT INTO public.annotation_authors VALUES (50, 40, 'Author 1', '0000-0000-0000-0007', false, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.annotation_authors VALUES (51, 40, 'Author 2', '0000-0000-0000-0008', false, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.annotation_authors VALUES (52, 41, 'Author 1', '0000-0000-0000-0007', false, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.annotation_authors VALUES (53, 41, 'Author 2', '0000-0000-0000-0008', false, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.annotation_authors VALUES (54, 42, 'Author 3', '0000-0000-0000-0039', false, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.annotation_authors VALUES (55, 42, 'Author 4', '0000-0000-0000-0049', false, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.annotation_authors VALUES (56, 43, 'Author 5', '0000-0000-0000-0059', false, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.annotation_authors VALUES (57, 44, 'Author 6', '0000-0000-0000-0069', false, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.annotation_authors VALUES (58, 45, 'Author 7', '0000-0000-0000-0079', false, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.annotation_authors VALUES (59, 45, 'Author 8', '0000-0000-0000-0089', false, true, NULL, NULL, NULL, NULL, NULL);


INSERT INTO public.annotation_files VALUES (70, 40, 'OrientedPoint', 'ndjson', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/mitochondria.ndjson', 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/mitochondria.ndjson');
INSERT INTO public.annotation_files VALUES (71, 40, 'SegmentationMask', 'mrc', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/mitochondria.mrc', 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/mitochondria.mrc');
INSERT INTO public.annotation_files VALUES (72, 40, 'SegmentationMask', 'zarr', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/mitochondria.zarr', 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/mitochondria.zarr');
INSERT INTO public.annotation_files VALUES (73, 41, 'Point', 'ndjson', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/ribosome.ndjson', 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/ribosome.ndjson');
INSERT INTO public.annotation_files VALUES (74, 41, 'SegmentationMask', 'mrc', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/ribosome.mrc', 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/ribosome.mrc');
INSERT INTO public.annotation_files VALUES (75, 41, 'SegmentationMask', 'zarr', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/ribosome.zarr', 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/Annotations/ribosome.zarr');
INSERT INTO public.annotation_files VALUES (76, 42, 'OrientedPoint', 'ndjson', 'http://localhost:4444/20001/RUN2/TomogramVoxelSpacing7.56/Annotations/ribosome.ndjson', 's3://test-public-bucket/20001/RUN2/TomogramVoxelSpacing7.56/Annotations/ribosome.ndjson');
INSERT INTO public.annotation_files VALUES (77, 42, 'SegmentationMask', 'mrc', 'http://localhost:4444/20001/RUN2/TomogramVoxelSpacing7.56/Annotations/ribosome.mrc', 's3://test-public-bucket/20001/RUN2/TomogramVoxelSpacing7.56/Annotations/ribosome.mrc');
INSERT INTO public.annotation_files VALUES (78, 42, 'SegmentationMask', 'zarr', 'http://localhost:4444/20001/RUN2/TomogramVoxelSpacing7.56/Annotations/ribosome.zarr', 's3://test-public-bucket/20001/RUN2/TomogramVoxelSpacing7.56/Annotations/ribosome.zarr');
INSERT INTO public.annotation_files VALUES (79, 43, 'OrientedPoint', 'ndjson', 'http://localhost:4444/20002/RUN001/TomogramVoxelSpacing7.56/Annotations/ribosome.ndjson', 's3://test-public-bucket/20002/RUN001/TomogramVoxelSpacing13.48/Annotations/ribosome.ndjson');
INSERT INTO public.annotation_files VALUES (80, 44, 'SegmentationMask', 'zarr', 'http://localhost:4444/20002/RUN002/TomogramVoxelSpacing7.56/Annotations/ribosome.zarr', 's3://test-public-bucket/20002/RUN002/TomogramVoxelSpacing13.48/Annotations/ribosome.zarr');
INSERT INTO public.annotation_files VALUES (81, 44, 'SegmentationMask', 'mrc', 'http://localhost:4444/20002/RUN002/TomogramVoxelSpacing7.56/Annotations/ribosome.mrc', 's3://test-public-bucket/20002/RUN002/TomogramVoxelSpacing13.48/Annotations/ribosome.mrc');
INSERT INTO public.annotation_files VALUES (82, 45, 'Point', 'ndjson', 'http://localhost:4444/20002/RUN002/TomogramVoxelSpacing7.56/Annotations/ribosome.json', 's3://test-public-bucket/20002/RUN002/TomogramVoxelSpacing13.48/Annotations/ribosome.json');

INSERT INTO public.tiltseries VALUES (11, 1, 's3://test-public-bucket/20001/RUN1/TiltSeries/RUN1_bin1.mrc', 's3://test-public-bucket/20001/RUN1/TiltSeries/RUN1.zarr', 'http://localhost:4444/20001/RUN1/TiltSeries/RUN1_bin1.mrc', 'http://localhost:4444/20001/RUN1/TiltSeries/RUN1.zarr', 's3://test-public-bucket/20001/RUN1/TiltSeries/RUN1.mdoc', 'http://localhost:4444/20001/RUN1/TiltSeries/RUN1.mdoc', 's3://test-public-bucket/20001/RUN1/TiltSeries/RUN1.rawtlt', 'http://localhost:4444/20001/RUN1/TiltSeries/RUN1.rawtlt', 's3://test-public-bucket/20001/RUN1/TiltSeries/RUN1.xf', 'http://localhost:4444/20001/RUN1/TiltSeries/RUN1.xf', 300000, 2.7, 'MicroCorp', 'MicroZap5000', 'PhaseOTron', 'None', 'None', NULL, 'FancyCam', 'Sharpshooter', -30.0, 30.0, 60.0, 2.0, 'Dose symmetric from 0.0 degrees', 84.7, 122.0, 'Software1', NULL, 1.0, 5, false, NULL, NULL, 0);
INSERT INTO public.tiltseries VALUES (12, 2, 's3://test-public-bucket/20001/RUN2/TiltSeries/RUN2.mrc', 's3://test-public-bucket/20001/RUN2/TiltSeries/RUN2.zarr', 'http://localhost:4444/20001/RUN2/TiltSeries/RUN2.mrc', 'http://localhost:4444/20001/RUN2/TiltSeries/RUN2.zarr', 's3://test-public-bucket/20001/RUN2/TiltSeries/RUN2.mdoc', 'http://localhost:4444/20001/RUN2/TiltSeries/RUN2.mdoc', 's3://test-public-bucket/20001/RUN2/TiltSeries/RUN2.rawtlt', 'http://localhost:4444/20001/RUN2/TiltSeries/RUN2.rawtlt', 's3://test-public-bucket/20001/RUN2/TiltSeries/RUN2.xf', 'http://localhost:4444/20001/RUN2/TiltSeries/RUN2.xf', 300000, 2.7, 'MicroCorp', 'MicroZap5000', 'PhaseOTron', 'None', 'None', NULL, 'FancyCam', 'Sharpshooter', -30.0, 30.0, 60.0, 2.0, 'Dose symmetric from 0.0 degrees', 84.7, 122.0, 'Software1', NULL, 1.0, 5, false, NULL, NULL, 0);
INSERT INTO public.tiltseries VALUES (13, 3, 's3://test-public-bucket/20002/RUN001/TiltSeries/RUN001.mrc', 's3://test-public-bucket/20002/RUN001/TiltSeries/RUN001.zarr', 'http://localhost:4444/20002/RUN001/TiltSeries/RUN001.mrc', 'http://localhost:4444/20002/RUN001/TiltSeries/RUN001.zarr', 's3://test-public-bucket/20002/RUN001/TiltSeries/RUN001.mdoc', 'http://localhost:4444/20002/RUN001/TiltSeries/RUN001.mdoc', 's3://test-public-bucket/20002/RUN001/TiltSeries/RUN001.rawtlt', 'http://localhost:4444/20002/RUN001/TiltSeries/RUN001.rawtlt', 's3://test-public-bucket/20002/RUN001/TiltSeries/RUN001.xf', 'http://localhost:4444/20002/RUN001/TiltSeries/RUN001.xf', 300000, 2.7, 'MicroCorp', 'MicroZap5000', 'PhaseOTron', 'None', 'None', NULL, 'FancyCam', 'Sharpshooter', -30.0, 30.0, 60.0, 2.0, 'Dose symmetric from 0.0 degrees', 84.7, 122.0, 'Software1', NULL, 1.0, 5, false, NULL, NULL, 0);
INSERT INTO public.tiltseries VALUES (14, 4, 's3://test-public-bucket/20002/RUN002/TiltSeries/RUN002.mrc', 's3://test-public-bucket/20002/RUN002/TiltSeries/RUN002.zarr', 'http://localhost:4444/20002/RUN002/TiltSeries/RUN002.mrc', 'http://localhost:4444/20002/RUN002/TiltSeries/RUN002.zarr', 's3://test-public-bucket/20002/RUN002/TiltSeries/RUN002.mdoc', 'http://localhost:4444/20002/RUN002/TiltSeries/RUN002.mdoc', 's3://test-public-bucket/20002/RUN002/TiltSeries/RUN002.rawtlt', 'http://localhost:4444/20002/RUN002/TiltSeries/RUN002.rawtlt', 's3://test-public-bucket/20002/RUN002/TiltSeries/RUN002.xf', 'http://localhost:4444/20002/RUN002/TiltSeries/RUN002.xf', 300000, 2.7, 'MicroCorp', 'MicroZap5000', 'PhaseOTron', 'None', 'None', NULL, 'FancyCam', 'Sharpshooter', -30.0, 30.0, 60.0, 2.0, 'Dose symmetric from 0.0 degrees', 84.7, 122.0, 'Software1', NULL, 1.0, 5, false, NULL, NULL, 0);

INSERT INTO public.tomograms VALUES (31, 'RUN1', 960, 928, 500, 13.48, 'NON_FIDUCIAL', 'Weighted back projection', 'SW1', 'raw', NULL, '1', true, 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/CanonicalTomogram/RUN1.zarr', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/CanonicalTomogram/RUN1.zarr', 's3://test-public-bucket/20001/RUN1/TomogramVoxelSpacing13.48/CanonicalTomogram/RUN1.mrc', 'http://localhost:4444/20001/RUN1/TomogramVoxelSpacing13.48/CanonicalTomogram/RUN1.mrc', '960,928,500', '480,464,250', '240,232,125', false, 4, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tomograms VALUES (32, 'RUN2', 960, 928, 500, 13.48, 'NON_FIDUCIAL', 'Weighted back projection', 'SW1', 'raw', NULL, '1', true, 's3://test-public-bucket/20001/RUN2/TomogramVoxelSpacing7.56/CanonicalTomogram/RUN2.zarr', 'http://localhost:4444/20001/RUN2/TomogramVoxelSpacing7.56/CanonicalTomogram/RUN2.zarr', 's3://test-public-bucket/20001/RUN2/TomogramVoxelSpacing7.56/CanonicalTomogram/RUN2.mrc', 'http://localhost:4444/20001/RUN2/TomogramVoxelSpacing7.56/CanonicalTomogram/RUN2.mrc', '960,928,500', '480,464,250', '240,232,125', false, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tomograms VALUES (33, 'RUN001', 960, 928, 500, 13.48, 'NON_FIDUCIAL', 'Weighted back projection', 'SW1', 'raw', NULL, '1', true, 's3://test-public-bucket/20002/RUN001/TomogramVoxelSpacing7.56/CanonicalTomogram/RUN001.zarr', 'http://localhost:4444/20002/RUN001/TomogramVoxelSpacing7.56/CanonicalTomogram/RUN001.zarr', 's3://test-public-bucket/20002/RUN001/TomogramVoxelSpacing7.56/CanonicalTomogram/RUN001.mrc', 's3://test-public-bucket/20002/RUN001/TomogramVoxelSpacing7.56/CanonicalTomogram/RUN001.mrc', '960,928,500', '480,464,250', '240,232,125', false, 6, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tomograms VALUES (34, 'RUN002', 960, 928, 500, 13.48, 'NON_FIDUCIAL', 'Weighted back projection', 'SW1', 'raw', NULL, '1', true, 's3://test-public-bucket/20002/RUN002/TomogramVoxelSpacing13.48/CanonicalTomogram/RUN002.zarr', 'http://localhost:4444/20002/RUN002/TomogramVoxelSpacing13.48/CanonicalTomogram/RUN002.zarr', 's3://test-public-bucket/20002/RUN002/TomogramVoxelSpacing13.48/CanonicalTomogram/RUN002.mrc', 'http://localhost:4444/20002/RUN002/TomogramVoxelSpacing13.48/CanonicalTomogram/RUN002.mrc', '960,928,500', '480,464,250', '240,232,125', false, 7, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);

INSERT INTO public.tomogram_authors VALUES (91, 31, 1, 'Bob Bobberson', '03234234234', true, false, 'bob@bobberson.com', NULL, NULL, NULL);
INSERT INTO public.tomogram_authors VALUES (92, 31, 2, 'Rob Robberson', '44444234234', false, false, 'rob@robberson.com', NULL, NULL, NULL);
INSERT INTO public.tomogram_authors VALUES (93, 32, 1, 'Alexis Alexei', '03234999994', false, false, 'lex@lexis.com', NULL, NULL, NULL);
INSERT INTO public.tomogram_authors VALUES (94, 32, 2, 'Chad Chadders', '44444888834', false, false, 'chad@cheddar.com', NULL, NULL, NULL);
INSERT INTO public.tomogram_authors VALUES (95, 33, 1, 'Kate Kateey', '33334999994', false, false, 'kate@katey.com', NULL, NULL, NULL);
INSERT INTO public.tomogram_authors VALUES (96, 33, 2, 'May Mayabell', '55554888834', false, true, 'may@mayabell.com', NULL, NULL, NULL);
INSERT INTO public.tomogram_authors VALUES (97, 34, 1, 'Hal Hallow', '11111999994', true, false, 'hal@hallow.com', NULL, NULL, NULL);
INSERT INTO public.tomogram_authors VALUES (98, 34, 2, 'Marc Marker', '66666888834', false, true, 'marc@marker.com', NULL, NULL, NULL);
