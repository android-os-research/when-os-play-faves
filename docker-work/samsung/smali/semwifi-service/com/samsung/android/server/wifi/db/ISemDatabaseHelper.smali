.class interface abstract Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;
.super Ljava/lang/Object;
.source "ISemDatabaseHelper.java"


# virtual methods
.method public abstract checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;
.end method

.method public abstract getContentUri(J)Landroid/net/Uri;
.end method

.method public abstract getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract getDefaultSortOrder()Ljava/lang/String;
.end method

.method public abstract getIdColumnName()Ljava/lang/String;
.end method

.method public abstract getProjectionMap()Ljava/util/Map;
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

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUniqueColumnName()Ljava/lang/String;
.end method

.method public abstract isValid(Landroid/content/ContentValues;)Z
.end method
