.class public interface abstract Lcom/samsung/android/wifi/db/ISemDatabaseHelper;
.super Ljava/lang/Object;
.source "ISemDatabaseHelper.java"


# virtual methods
.method public abstract blacklist checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;
.end method

.method public abstract blacklist getContentUri(J)Landroid/net/Uri;
.end method

.method public abstract blacklist getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract blacklist getDefaultSortOrder()Ljava/lang/String;
.end method

.method public abstract blacklist getIdColumnName()Ljava/lang/String;
.end method

.method public abstract blacklist getProjectionMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getTableName()Ljava/lang/String;
.end method

.method public abstract blacklist getType()Ljava/lang/String;
.end method

.method public abstract blacklist getUniqueColumnName()Ljava/lang/String;
.end method

.method public abstract blacklist isValid(Landroid/content/ContentValues;)Z
.end method
