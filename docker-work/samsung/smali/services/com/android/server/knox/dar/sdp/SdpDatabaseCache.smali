.class public Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;
.super Ljava/lang/Object;
.source "SdpDatabaseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final COLUMN_KEY:Ljava/lang/String; = "name"

.field public static final COLUMN_USER:Ljava/lang/String; = "user"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final DATABASE_NAME:Ljava/lang/String; = "sdp.db"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final DEBUG:Z = false

.field public static final INT_CACHE_SIZE:I = 0xa

.field public static final MAX_CACHE_SIZE:I = 0x1e

.field public static final TABLE:Ljava/lang/String; = "sdp_info"

.field public static final TAG:Ljava/lang/String; = "SdpDatabaseCache"


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

.field public final mDatabaseHelper:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$DatabaseHelper;

.field public mDbReadable:Landroid/database/sqlite/SQLiteDatabase;

.field public mDbWritable:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static bridge synthetic -$$Nest$smLogI(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$1;-><init>(Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;IFZ)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$DatabaseHelper;

    .line 50
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbReadable:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SdpDatabaseCache"

    .line 318
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static LogI(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SdpDatabaseCache"

    .line 308
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 287
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

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public static makeTag(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 299
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

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdpDatabaseCache"

    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final cache(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 194
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter p2

    .line 196
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

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
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

    .line 293
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 294
    :try_start_3
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 295
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

    .line 202
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter p2

    .line 204
    :try_start_7
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decache - [ Tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
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

    .line 165
    :try_start_2
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 166
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "sdp_info"

    const-string/jumbo v4, "name=? AND user=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v1

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 166
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_2a
    .catchall {:try_start_2 .. :try_end_22} :catchall_28

    .line 175
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_36

    :catchall_28
    move-exception p1

    goto :goto_3c

    :catch_2a
    move-exception v0

    :try_start_2b
    const-string v2, "del"

    .line 173
    invoke-static {v2, v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    .line 175
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    :goto_36
    if-eqz v0, :cond_3b

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->decache(ILjava/lang/String;)V

    :cond_3b
    return-void

    .line 175
    :goto_3c
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 176
    throw p1
.end method

.method public destroy(I)V
    .registers 6

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 239
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sdp_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_33
    .catchall {:try_start_0 .. :try_end_2a} :catchall_31

    const/4 v0, 0x1

    .line 247
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_40

    :catchall_31
    move-exception p1

    goto :goto_89

    :catch_33
    move-exception v0

    :try_start_34
    const-string/jumbo v1, "remove"

    .line 245
    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_31

    .line 247
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    :goto_40
    if-nez v0, :cond_43

    return-void

    .line 252
    :cond_43
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 253
    :try_start_46
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 254
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 255
    :cond_54
    :goto_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 256
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 258
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove - Val of key [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    goto :goto_54

    .line 262
    :cond_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_46 .. :try_end_88} :catchall_86

    throw p0

    .line 247
    :goto_89
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    throw p1
.end method

.method public dump()V
    .registers 1

    return-void
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .registers 4

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    .line 102
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

    .line 109
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 110
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
    .registers 15

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->hitOrNull(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 143
    :try_start_9
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbReadable:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "sdp_info"

    const-string/jumbo v5, "value"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "name=? AND user=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object p2, v7, v2

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 143
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_37} :catch_42
    .catchall {:try_start_9 .. :try_end_37} :catchall_40

    if-eqz v0, :cond_3a

    move v2, v11

    :cond_3a
    if-eqz v1, :cond_4b

    .line 154
    :goto_3c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    :catchall_40
    move-exception p0

    goto :goto_51

    :catch_42
    move-exception v3

    :try_start_43
    const-string v4, "get"

    .line 152
    invoke-static {v4, v3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_40

    if-eqz v1, :cond_4b

    goto :goto_3c

    :cond_4b
    :goto_4b
    if-eqz v2, :cond_50

    .line 157
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->cache(ILjava/lang/String;Ljava/lang/String;)V

    :cond_50
    return-object v0

    :goto_51
    if-eqz v1, :cond_56

    .line 154
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_56
    throw p0
.end method

.method public getLong(ILjava/lang/String;J)J
    .registers 5

    .line 121
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 122
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

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    move-object p3, p0

    :cond_7
    return-object p3
.end method

.method public final hitOrNull(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 183
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter p2

    .line 185
    :try_start_7
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hit - [ Tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit p2

    return-object p0

    .line 189
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

    .line 214
    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbReadable:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "sdp_info"

    const-string/jumbo v3, "name"

    const-string/jumbo v4, "value"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user=?"

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 214
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 219
    :goto_26
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 220
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_3d
    .catchall {:try_start_1 .. :try_end_37} :catchall_3b

    goto :goto_26

    :cond_38
    if-eqz v0, :cond_49

    goto :goto_46

    :catchall_3b
    move-exception p0

    goto :goto_4a

    :catch_3d
    move-exception p0

    :try_start_3e
    const-string/jumbo p1, "preload"

    .line 228
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3b

    if-eqz v0, :cond_49

    .line 230
    :goto_46
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_49
    return-void

    :goto_4a
    if-eqz v0, :cond_4f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_4f
    throw p0
.end method

.method public putBoolean(ILjava/lang/String;Z)V
    .registers 4

    if-eqz p3, :cond_5

    const-string p3, "1"

    goto :goto_7

    :cond_5
    const-string p3, "0"

    .line 55
    :goto_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putInt(ILjava/lang/String;I)V
    .registers 4

    .line 59
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putInternal(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string/jumbo v0, "sdp_info"

    if-eqz p2, :cond_69

    if-nez p3, :cond_8

    goto :goto_69

    .line 75
    :cond_8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "name"

    .line 76
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "value"

    .line 78
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    :try_start_25
    iget-object v4, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 83
    iget-object v4, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "name=? AND user=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p2, v6, v3

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 83
    invoke-virtual {v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    iget-object v4, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 86
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_48} :catch_50
    .catchall {:try_start_25 .. :try_end_48} :catchall_4e

    .line 93
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5d

    :catchall_4e
    move-exception p1

    goto :goto_63

    :catch_50
    move-exception v0

    :try_start_51
    const-string/jumbo v1, "put"

    .line 91
    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_4e

    .line 93
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v2, v3

    :goto_5d
    if-eqz v2, :cond_62

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->cache(ILjava/lang/String;Ljava/lang/String;)V

    :cond_62
    return-void

    .line 93
    :goto_63
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    throw p1

    :cond_69
    :goto_69
    return-void
.end method

.method public putLong(ILjava/lang/String;J)V
    .registers 5

    .line 63
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
