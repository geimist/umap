# Generated by Django 4.2.8 on 2024-02-19 17:40

import uuid

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("umap", "0017_migrate_to_openstreetmap_oauth2"),
    ]

    operations = [
        # Add the new uuid field
        migrations.AddField(
            model_name="datalayer",
            name="uuid",
            field=models.UUIDField(default=uuid.uuid4, editable=False, null=True),
        ),
        # Generate UUIDs for existing records
        migrations.RunSQL("UPDATE umap_datalayer SET uuid = gen_random_uuid()"),
        # Remove the primary key constraint
        migrations.RunSQL(
            """
            DO $$
            BEGIN
                EXECUTE 'ALTER TABLE umap_datalayer DROP CONSTRAINT ' || (
                    SELECT indexname
                    FROM pg_indexes
                    WHERE tablename = 'umap_datalayer' AND indexname LIKE '%pkey'
                );
            END $$;
            """
        ),
        # Drop the "id" primary key…
        migrations.AlterField(
            "datalayer", name="id", field=models.IntegerField(null=True, blank=True)
        ),
        # … to put it back on the "uuid"
        migrations.AlterField(
            model_name="datalayer",
            name="uuid",
            field=models.UUIDField(
                default=uuid.uuid4, editable=False, unique=True, primary_key=True
            ),
        ),
    ]
