.class public Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;
.super Landroid/content/ContentProvider;
.source "SemWifiApContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final blacklist CONTENT_URI:Landroid/net/Uri;

.field static final blacklist CREATE_DB_TABLE:Ljava/lang/String; = " CREATE TABLE SemWifiApContentProvider (_id INTEGER PRIMARY KEY AUTOINCREMENT,  name TEXT NOT NULL,  value TEXT NOT NULL);"

.field static final blacklist DATABASE_NAME:Ljava/lang/String; = "SemWifiApContentProvider.db"

.field static final blacklist DATABASE_VERSION:I = 0x1

.field static final blacklist NAME:Ljava/lang/String; = "name"

.field static final blacklist PROVIDER_NAME:Ljava/lang/String; = "com.samsung.android.wifi.softap"

.field static final blacklist SOFTAPINFO:I = 0x1

.field static final blacklist SOFTAPINFO_ID:I = 0x2

.field private static blacklist SOFTAPINFO_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist SOFTAPINFO_TABLE_NAME:Ljava/lang/String; = "SemWifiApContentProvider"

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiApContentProvider"

.field static final blacklist URL:Ljava/lang/String; = "content://com.samsung.android.wifi.softap/softapInfo"

.field static final blacklist VALUE:Ljava/lang/String; = "value"

.field static final blacklist _ID:Ljava/lang/String; = "_id"

.field static final blacklist uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private blacklist db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 24
    const-string v0, "content://com.samsung.android.wifi.softap/softapInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 34
    const-string v1, "com.samsung.android.wifi.softap"

    const-string/jumbo v2, "softapInfo"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    const-string/jumbo v2, "softapInfo/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 69
    return-void
.end method

.method public static whitelist get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 186
    const-string v0, "content://com.samsung.android.wifi.softap"

    .line 187
    .local v0, "URL":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 188
    .local v1, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name = ?"

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 190
    .local v2, "c":Landroid/database/Cursor;
    const-string v3, ""

    .line 192
    .local v3, "returnValue":Ljava/lang/String;
    if-eqz v2, :cond_38

    .line 194
    :try_start_1d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 195
    const-string/jumbo v4, "value"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_33

    move-object v3, v4

    .line 198
    :cond_2f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 199
    goto :goto_38

    .line 198
    :catchall_33
    move-exception v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 199
    throw v4

    .line 201
    :cond_38
    :goto_38
    return-object v3
.end method

.method public static whitelist insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 172
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v0, "values":Landroid/content/ContentValues;
    if-nez p2, :cond_9

    .line 174
    const-string p2, ""

    .line 175
    :cond_9
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {p0, p1}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->isKeypresent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    return-void

    .line 181
    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 182
    return-void
.end method

.method private static blacklist isKeypresent(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 205
    const-string v0, "content://com.samsung.android.wifi.softap"

    .line 206
    .local v0, "URL":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 207
    .local v1, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name = ?"

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 209
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 210
    .local v3, "ret":Z
    if-eqz v2, :cond_2a

    .line 212
    :try_start_1c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_25

    move v3, v4

    .line 214
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 215
    goto :goto_2a

    .line 214
    :catchall_25
    move-exception v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 215
    throw v4

    .line 217
    :cond_2a
    :goto_2a
    return v3
.end method


# virtual methods
.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "count":I
    sget-object v1, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v2, "SemWifiApContentProvider"

    packed-switch v1, :pswitch_data_76

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete Unknown URI "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 137
    :pswitch_23
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_61

    :cond_5f
    const-string v5, ""

    :goto_61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-virtual {v3, v2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 139
    goto :goto_75

    .line 133
    .end local v1    # "id":Ljava/lang/String;
    :pswitch_6e
    iget-object v1, p0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 135
    nop

    .line 144
    :goto_75
    return v0

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_23
    .end packed-switch
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SemWifiApContentProvider"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 83
    .local v2, "rowID":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2d

    .line 84
    sget-object v0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 85
    .local v0, "_uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inserted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v0

    .line 88
    .end local v0    # "_uri":Landroid/net/Uri;
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not add"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()Z
    .registers 4

    .line 95
    new-instance v0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "dbHelper":Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;
    const-string v1, "SemWifiApContentProvider"

    const-string v2, "OnCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    return v1
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 108
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "SemWifiApContentProvider"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    goto :goto_3c

    .line 115
    :pswitch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 116
    goto :goto_3c

    .line 112
    :pswitch_36
    sget-object v1, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->SOFTAPINFO_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 113
    nop

    .line 120
    :goto_3c
    iget-object v2, p0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 125
    .local v1, "c":Landroid/database/Cursor;
    return-object v1

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_14
    .end packed-switch
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "count":I
    sget-object v1, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v2, "SemWifiApContentProvider"

    packed-switch v1, :pswitch_data_8e

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v0

    .line 157
    :pswitch_23
    iget-object v1, p0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 158
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_61

    :cond_5f
    const-string v4, ""

    :goto_61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v1, v2, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 159
    goto :goto_75

    .line 153
    :pswitch_6e
    iget-object v1, p0, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 155
    nop

    .line 166
    :goto_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updated:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v0

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_23
    .end packed-switch
.end method
