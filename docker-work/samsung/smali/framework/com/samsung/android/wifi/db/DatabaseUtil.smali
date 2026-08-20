.class public Lcom/samsung/android/wifi/db/DatabaseUtil;
.super Ljava/lang/Object;
.source "DatabaseUtil.java"


# static fields
.field static final blacklist AUTHORITY:Ljava/lang/String; = "com.samsung.server.wifi"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.server.wifi/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getContentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "rawIndex"    # J

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.server.wifi/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInteger(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;I)I
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "defaultValue"    # I

    .line 40
    if-eqz p1, :cond_d

    .line 41
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 42
    .local v0, "index":I
    if-ltz v0, :cond_d

    .line 43
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1

    .line 46
    .end local v0    # "index":I
    :cond_d
    if-eqz p2, :cond_20

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 47
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 48
    .local v0, "retValue":Ljava/lang/Integer;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 50
    .end local v0    # "retValue":Ljava/lang/Integer;
    :cond_20
    return p3
.end method

.method public static blacklist getLong(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;J)J
    .registers 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "defaultValue"    # J

    .line 56
    if-eqz p1, :cond_d

    .line 57
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "index":I
    if-ltz v0, :cond_d

    .line 59
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1

    .line 62
    .end local v0    # "index":I
    :cond_d
    if-eqz p2, :cond_20

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 63
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 64
    .local v0, "retValue":Ljava/lang/Long;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 66
    .end local v0    # "retValue":Ljava/lang/Long;
    :cond_20
    return-wide p3
.end method
