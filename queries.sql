-- This query retrieves the title and category ID from the raw statistics table
SELECT a.title, a.category_id, b.snippet_title FROM "youtube-dataengg-raw"."raw_statistics" a
inner join "db_youtube_cleaned"."cleaned_statistics_reference_data" b on a.category_id = cast(b.id as int);

-- The query joins the cleaned raw statistics table with the cleaned statistics reference data table
SELECT * FROM "db_youtube_cleaned"."raw_statistics" a
inner join "db_youtube_cleaned"."cleaned_statistics_reference_data" b on a.category_id = b.id