.class public Lcom/android/server/knox/dar/DarDatabaseCache;
.super Ljava/lang/Object;
.source "DarDatabaseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final COLUMN_KEY:Ljava/lang/String; = "name"

.field public static final COLUMN_USER:Ljava/lang/String; = "user"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final DATABASE_NAME:Ljava/lang/String; = "dar.db"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final DEBUG:Z = false

.field public static final INT_CACHE_SIZE:I = 0xa

.field public static final MAX_CACHE_SIZE:I = 0x1e

.field public static final TABLE:Ljava/lang/String; = "dar_info"

.field public static final TAG:Ljava/lang/String; = "DarDatabaseCache"


# instance fields
.field public final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;


# direct methods
.method public static bridge synthetic -$$Nest$smLogI(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/knox/dar/DarDatabaseCache;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/server/knox/dar/DarDatabaseCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/knox/dar/DarDatabaseCache$1;-><init>(Lcom/android/server/knox/dar/DarDatabaseCache;IFZ)V

    iput-object v0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 48
    new-instance v0, Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DarDatabaseCache"

    .line 334
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static LogI(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DarDatabaseCache"

    .line 324
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump - [Tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Val : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/DarDatabaseCache;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public static makeTag(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DarDatabaseCache"

    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final cache(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 204
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    iget-object p2, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter p2

    .line 206
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache - [ Tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Val : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    monitor-exit p2

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public clear()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object p0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 311
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final decache(ILjava/lang/String;)V
    .registers 5

    .line 212
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object p2, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter p2

    .line 214
    :try_start_7
    iget-object v0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decache - [ Tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 216
    iget-object p0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_2d
    monitor-exit p2

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public delete(ILjava/lang/String;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 170
    :try_start_3
    iget-object v3, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "dar_info"

    const-string/jumbo v4, "name=? AND user=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v1

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 173
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_2b
    .catchall {:try_start_3 .. :try_end_22} :catchall_29

    .line 183
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 184
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3a

    :catchall_29
    move-exception p0

    goto :goto_40

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string v3, "del"

    .line 180
    invoke-static {v3, v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_29

    if-eqz v2, :cond_39

    .line 183
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 184
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_39
    move v0, v1

    :goto_3a
    if-eqz v0, :cond_3f

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->decache(ILjava/lang/String;)V

    :cond_3f
    return-void

    :goto_40
    if-eqz v2, :cond_48

    .line 183
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 184
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 186
    :cond_48
    throw p0
.end method

.method public destroy(I)V
    .registers 8

    const/4 v0, 0x0

    .line 249
    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_35
    .catchall {:try_start_1 .. :try_end_7} :catchall_33

    .line 251
    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "dar_info"

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_31
    .catchall {:try_start_7 .. :try_end_29} :catchall_91

    const/4 v0, 0x1

    .line 261
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 262
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_48

    :catch_31
    move-exception v0

    goto :goto_39

    :catchall_33
    move-exception p0

    goto :goto_93

    :catch_35
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_39
    :try_start_39
    const-string/jumbo v2, "remove"

    .line 258
    invoke-static {v2, v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_91

    if-eqz v1, :cond_47

    .line 261
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 262
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_47
    const/4 v0, 0x0

    :goto_48
    if-nez v0, :cond_4b

    return-void

    .line 268
    :cond_4b
    iget-object v0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 269
    :try_start_4e
    iget-object p0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 270
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 271
    :cond_5c
    :goto_5c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 272
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 274
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove - Val of key [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/DarDatabaseCache;->LogD(Ljava/lang/String;)V

    goto :goto_5c

    .line 278
    :cond_8c
    monitor-exit v0

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_4e .. :try_end_90} :catchall_8e

    throw p0

    :catchall_91
    move-exception p0

    move-object v0, v1

    :goto_93
    if-eqz v0, :cond_9b

    .line 261
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 262
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 264
    :cond_9b
    throw p0
.end method

.method public dump()V
    .registers 1

    return-void
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .registers 4

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    const-string p1, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    if-eqz p3, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public getInt(ILjava/lang/String;I)I
    .registers 4

    .line 112
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 113
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_b

    move p3, p0

    :catch_b
    :cond_b
    return p3
.end method

.method public final getInternal(ILjava/lang/String;)Ljava/lang/String;
    .registers 16

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->hitOrNull(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 146
    :try_start_9
    iget-object v3, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "dar_info"

    const-string/jumbo v3, "value"

    .line 147
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    aput-object p2, v8, v2

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v8, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 147
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3a} :catch_45
    .catchall {:try_start_9 .. :try_end_3a} :catchall_43

    if-eqz v0, :cond_3d

    move v2, v12

    :cond_3d
    if-eqz v1, :cond_4e

    .line 158
    :goto_3f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4e

    :catchall_43
    move-exception p0

    goto :goto_54

    :catch_45
    move-exception v3

    :try_start_46
    const-string v4, "get"

    .line 156
    invoke-static {v4, v3}, Lcom/android/server/knox/dar/DarDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_43

    if-eqz v1, :cond_4e

    goto :goto_3f

    :cond_4e
    :goto_4e
    if-eqz v2, :cond_53

    .line 161
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->cache(ILjava/lang/String;Ljava/lang/String;)V

    :cond_53
    return-object v0

    :goto_54
    if-eqz v1, :cond_59

    .line 158
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_59
    throw p0
.end method

.method public getLong(ILjava/lang/String;J)J
    .registers 5

    .line 124
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 125
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_b

    move-wide p3, p0

    :catch_b
    :cond_b
    return-wide p3
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    move-object p3, p0

    :cond_7
    return-object p3
.end method

.method public final hitOrNull(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 193
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    iget-object p2, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter p2

    .line 195
    :try_start_7
    iget-object v0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hit - [ Tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit p2

    return-object p0

    .line 199
    :cond_33
    monitor-exit p2

    const/4 p0, 0x0

    return-object p0

    :catchall_36
    move-exception p0

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public preload(I)V
    .registers 13

    const/4 v0, 0x0

    .line 224
    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "dar_info"

    const-string/jumbo v1, "name"

    const-string/jumbo v4, "value"

    .line 225
    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 225
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 230
    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 231
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_40
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3e

    goto :goto_29

    :cond_3b
    if-eqz v0, :cond_4c

    goto :goto_49

    :catchall_3e
    move-exception p0

    goto :goto_4d

    :catch_40
    move-exception p0

    :try_start_41
    const-string/jumbo p1, "preload"

    .line 239
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/DarDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_3e

    if-eqz v0, :cond_4c

    .line 241
    :goto_49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4c
    return-void

    :goto_4d
    if-eqz v0, :cond_52

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_52
    throw p0
.end method

.method public putBoolean(ILjava/lang/String;Z)V
    .registers 4

    if-eqz p3, :cond_5

    const-string p3, "1"

    goto :goto_7

    :cond_5
    const-string p3, "0"

    .line 52
    :goto_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putInt(ILjava/lang/String;I)V
    .registers 4

    .line 56
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putInternal(ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, "dar_info"

    if-eqz p2, :cond_73

    if-nez p3, :cond_7

    goto :goto_73

    .line 72
    :cond_7
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "name"

    .line 73
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "value"

    .line 75
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 80
    :try_start_25
    iget-object v5, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_54
    .catchall {:try_start_25 .. :try_end_2b} :catchall_52

    .line 82
    :try_start_2b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v6, "name=? AND user=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object p2, v7, v4

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 83
    invoke-virtual {v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    invoke-virtual {v5, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 86
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_45} :catch_4f
    .catchall {:try_start_2b .. :try_end_45} :catchall_4c

    .line 94
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 95
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_64

    :catchall_4c
    move-exception p0

    move-object v3, v5

    goto :goto_6a

    :catch_4f
    move-exception v0

    move-object v3, v5

    goto :goto_55

    :catchall_52
    move-exception p0

    goto :goto_6a

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    const-string/jumbo v1, "put"

    .line 91
    invoke-static {v1, v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_52

    if-eqz v3, :cond_63

    .line 94
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 95
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_63
    move v2, v4

    :goto_64
    if-eqz v2, :cond_69

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/DarDatabaseCache;->cache(ILjava/lang/String;Ljava/lang/String;)V

    :cond_69
    return-void

    :goto_6a
    if-eqz v3, :cond_72

    .line 94
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 95
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 97
    :cond_72
    throw p0

    :cond_73
    :goto_73
    return-void
.end method

.method public putLong(ILjava/lang/String;J)V
    .registers 5

    .line 60
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
