.class public Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
.super Landroid/os/Handler;
.source "SemTelephonyDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;,
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;,
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseEntry;,
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$KeyMax;,
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$Key;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static volatile blacklist mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

.field private static blacklist mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

.field private greylist mIntentReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private blacklist mMaxSlot:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;ILandroid/os/Looper;)V
    .registers 8

    .line 178
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p3, 0x0

    .line 72
    iput-object p3, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    .line 135
    new-instance p3, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$1;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$1;-><init>(Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mContext:Landroid/content/Context;

    .line 180
    iput p2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mMaxSlot:I

    .line 182
    iget-object p3, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    if-nez p3, :cond_49

    .line 183
    new-array p2, p2, [Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    iput-object p2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    const/4 p2, 0x0

    .line 184
    :goto_1a
    iget p3, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mMaxSlot:I

    if-ge p2, p3, :cond_43

    .line 185
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "telephony_database_slot"

    .line 186
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".db"

    .line 188
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    new-instance v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->FRAMEWORK:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    const/4 v3, 0x1

    invoke-direct {v1, p1, p3, v3, v2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;)V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 193
    :cond_43
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->initIntentFilter()V

    .line 194
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->initKeyMap()V

    :cond_49
    return-void
.end method

.method private blacklist checkTheNumberOfValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/16 p0, 0xa

    .line 241
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    if-eqz v0, :cond_1b

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 242
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 246
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from telephony_info where key=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 250
    :try_start_32
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_7e
    .catchall {:try_start_32 .. :try_end_36} :catchall_77

    if-eqz p2, :cond_71

    .line 251
    :try_start_38
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_71

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 252
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_48} :catch_6f
    .catchall {:try_start_38 .. :try_end_48} :catchall_6c

    if-ge v1, p0, :cond_4e

    .line 265
    :try_start_4a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4d

    :catch_4d
    return-void

    :cond_4e
    const/4 p0, 0x0

    .line 256
    :try_start_4f
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-lez p0, :cond_71

    const-string v1, "telephony_info"

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6b} :catch_6f
    .catchall {:try_start_4f .. :try_end_6b} :catchall_6c

    goto :goto_71

    :catchall_6c
    move-exception p0

    move-object v0, p2

    goto :goto_78

    :catch_6f
    move-object v0, p2

    goto :goto_7e

    :cond_71
    :goto_71
    if-eqz p2, :cond_83

    .line 265
    :try_start_73
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_83

    goto :goto_83

    :catchall_77
    move-exception p0

    :goto_78
    if-eqz v0, :cond_7d

    :try_start_7a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7d

    .line 268
    :catch_7d
    :cond_7d
    throw p0

    :catch_7e
    :goto_7e
    if-eqz v0, :cond_83

    .line 265
    :try_start_80
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_83

    :catch_83
    :cond_83
    :goto_83
    return-void
.end method

.method private blacklist deleteFirstRow(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string p0, "select * from telephony_info"

    const/4 v0, 0x0

    .line 358
    :try_start_6
    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_4a
    .catchall {:try_start_6 .. :try_end_a} :catchall_43

    if-eqz p0, :cond_3d

    .line 359
    :try_start_c
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_3d

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    .line 360
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_3d

    const-string v2, "telephony_info"

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_37} :catch_3b
    .catchall {:try_start_c .. :try_end_37} :catchall_38

    goto :goto_3d

    :catchall_38
    move-exception p1

    move-object v0, p0

    goto :goto_44

    :catch_3b
    move-object v0, p0

    goto :goto_4a

    :cond_3d
    :goto_3d
    if-eqz p0, :cond_4f

    .line 369
    :try_start_3f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_4f

    goto :goto_4f

    :catchall_43
    move-exception p1

    :goto_44
    if-eqz v0, :cond_49

    :try_start_46
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_49

    .line 372
    :catch_49
    :cond_49
    throw p1

    :catch_4a
    :goto_4a
    if-eqz v0, :cond_4f

    .line 369
    :try_start_4c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_4f

    :catch_4f
    :cond_4f
    :goto_4f
    return-void
.end method

.method private declared-synchronized blacklist dumpVendor(ILjava/io/PrintWriter;)V
    .registers 11

    monitor-enter p0

    .line 376
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "semTelephonyDatabase["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, "select * from semTelephonyDatabase order by key"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/vendor/secradio/sem_database_"

    .line 389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".db"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    new-instance v3, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->VENDOR:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    const/4 v6, 0x1

    invoke-direct {v3, v4, p1, v6, v5}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_ed

    const/4 p1, 0x0

    .line 400
    :try_start_49
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_dc
    .catchall {:try_start_49 .. :try_end_4d} :catchall_cc

    if-eqz v4, :cond_be

    .line 402
    :try_start_4f
    invoke-virtual {v4, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_be

    .line 403
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_be

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_be

    .line 405
    :cond_61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Date: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "|Key: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "|Value: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_b9} :catch_dd
    .catchall {:try_start_4f .. :try_end_b9} :catchall_bc

    if-nez p2, :cond_61

    goto :goto_be

    :catchall_bc
    move-exception p2

    goto :goto_ce

    :cond_be
    :goto_be
    if-eqz p1, :cond_c3

    .line 417
    :try_start_c0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_ed

    :catch_c3
    :cond_c3
    if-eqz v4, :cond_c8

    .line 423
    :try_start_c5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_ed

    .line 429
    :catch_c8
    :cond_c8
    :goto_c8
    :try_start_c8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_e8
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_ed

    goto :goto_e8

    :catchall_cc
    move-exception p2

    move-object v4, p1

    :goto_ce
    if-eqz p1, :cond_d3

    .line 417
    :try_start_d0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_ed

    :catch_d3
    :cond_d3
    if-eqz v4, :cond_d8

    .line 423
    :try_start_d5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d8} :catch_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_ed

    .line 429
    :catch_d8
    :cond_d8
    :try_start_d8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_ed

    .line 432
    :catch_db
    :try_start_db
    throw p2
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_ed

    :catch_dc
    move-object v4, p1

    :catch_dd
    if-eqz p1, :cond_e2

    .line 417
    :try_start_df
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_ed

    :catch_e2
    :cond_e2
    if-eqz v4, :cond_c8

    .line 423
    :try_start_e4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_c8
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_ed

    goto :goto_c8

    .line 433
    :catch_e8
    :goto_e8
    :try_start_e8
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ed

    .line 434
    monitor-exit p0

    return-void

    :catchall_ed
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
    .registers 1

    .line 230
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    return-object v0
.end method

.method private blacklist initIntentFilter()V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.mobiledoctor.GETAPMDATAFILES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_12
    return-void
.end method

.method private blacklist initKeyMap()V
    .registers 4

    .line 206
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x32

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "airplane_mode_status"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "nitz_status"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "set_preferred_network_mode"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "shutdown"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tmo_device_config"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mKeyMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "nr_mode_changed"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;ILandroid/os/Looper;)Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
    .registers 5

    .line 219
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-nez v0, :cond_17

    .line 220
    const-class v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    monitor-enter v0

    .line 221
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-nez v1, :cond_12

    .line 222
    new-instance v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    sput-object v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    .line 224
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 226
    :cond_17
    :goto_17
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mInstance:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    return-object p0
.end method

.method private blacklist makeCsDiagnosisFile()V
    .registers 9

    .line 499
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeCsDiagnosisFile"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/log/err/csdiag_airplane_mode_info.dat"

    const-string v1, "select * from telephony_info where key=\"airplane_mode_status\" order by date"

    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    monitor-enter v2

    const/4 v4, 0x0

    .line 514
    :try_start_12
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_aa
    .catchall {:try_start_12 .. :try_end_17} :catchall_a5

    .line 515
    :try_start_17
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_a1
    .catchall {:try_start_17 .. :try_end_1c} :catchall_9d

    .line 517
    :try_start_1c
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_9a
    .catchall {:try_start_1c .. :try_end_24} :catchall_97

    if-eqz p0, :cond_2e

    .line 519
    :try_start_26
    invoke-virtual {p0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_2e

    :catch_2b
    move-exception v0

    goto/16 :goto_ae

    :cond_2e
    :goto_2e
    if-eqz v4, :cond_6e

    .line 522
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6e

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6e

    :cond_3c
    const/4 v1, 0x1

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 528
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 530
    :cond_68
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 532
    :cond_6e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 664 "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_86} :catch_2b
    .catchall {:try_start_26 .. :try_end_86} :catchall_d8

    if-eqz v4, :cond_8b

    .line 538
    :try_start_88
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_df

    :catch_8b
    :cond_8b
    if-eqz p0, :cond_90

    .line 544
    :try_start_8d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_df

    .line 550
    :catch_90
    :cond_90
    :try_start_90
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_df

    .line 556
    :catch_93
    :goto_93
    :try_start_93
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_d6
    .catchall {:try_start_93 .. :try_end_96} :catchall_df

    goto :goto_d6

    :catchall_97
    move-exception v0

    move-object p0, v4

    goto :goto_d9

    :catch_9a
    move-exception v0

    move-object p0, v4

    goto :goto_ae

    :catchall_9d
    move-exception v0

    move-object p0, v4

    move-object v6, p0

    goto :goto_d9

    :catch_a1
    move-exception v0

    move-object p0, v4

    move-object v6, p0

    goto :goto_ae

    :catchall_a5
    move-exception v0

    move-object p0, v4

    move-object v5, p0

    move-object v6, v5

    goto :goto_d9

    :catch_aa
    move-exception v0

    move-object p0, v4

    move-object v5, p0

    move-object v6, v5

    .line 534
    :goto_ae
    :try_start_ae
    sget-object v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeCsDiagnosisFile - Something wrong: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_ae .. :try_end_c4} :catchall_d8

    if-eqz v4, :cond_c9

    .line 538
    :try_start_c6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_df

    :catch_c9
    :cond_c9
    if-eqz p0, :cond_ce

    .line 544
    :try_start_cb
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_df

    :catch_ce
    :cond_ce
    if-eqz v6, :cond_d3

    .line 550
    :try_start_d0
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_df

    :catch_d3
    :cond_d3
    if-eqz v5, :cond_d6

    goto :goto_93

    .line 560
    :catch_d6
    :cond_d6
    :goto_d6
    :try_start_d6
    monitor-exit v2
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_df

    return-void

    :catchall_d8
    move-exception v0

    :goto_d9
    if-eqz v4, :cond_e1

    .line 538
    :try_start_db
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_e1
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_e1

    :catchall_df
    move-exception p0

    goto :goto_f1

    :catch_e1
    :cond_e1
    :goto_e1
    if-eqz p0, :cond_e6

    .line 544
    :try_start_e3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_df

    :catch_e6
    :cond_e6
    if-eqz v6, :cond_eb

    .line 550
    :try_start_e8
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_df

    :catch_eb
    :cond_eb
    if-eqz v5, :cond_f0

    .line 556
    :try_start_ed
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_df

    .line 559
    :catch_f0
    :cond_f0
    :try_start_f0
    throw v0

    .line 560
    :goto_f1
    monitor-exit v2
    :try_end_f2
    .catchall {:try_start_f0 .. :try_end_f2} :catchall_df

    throw p0
.end method

.method private blacklist writeData(Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 291
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mSlot:I

    .line 293
    iget v1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mMaxSlot:I

    if-ge v0, v1, :cond_ab

    if-gez v0, :cond_d

    goto/16 :goto_ab

    .line 297
    :cond_d
    iget-object v1, p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    .line 301
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object v1, v1, v0

    if-nez v1, :cond_1d

    return-void

    .line 305
    :cond_1d
    monitor-enter v1

    const/4 v2, 0x0

    .line 308
    :try_start_1f
    iget-object v3, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_a1
    .catchall {:try_start_1f .. :try_end_27} :catchall_9a

    .line 309
    :try_start_27
    iget-object v3, p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mKey:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->checkTheNumberOfValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 311
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 313
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 315
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "date"

    .line 316
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key"

    .line 317
    iget-object v5, p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object p1, p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mValue:[Ljava/lang/String;

    array-length v3, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_55
    if-ge v5, v3, :cond_7c

    aget-object v7, p1, v5

    const/4 v8, 0x5

    if-gt v6, v8, :cond_75

    .line 322
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_70} :catch_98
    .catchall {:try_start_27 .. :try_end_70} :catchall_95

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    :cond_75
    if-eqz v0, :cond_7a

    .line 341
    :try_start_77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_a8

    .line 342
    :catch_7a
    :cond_7a
    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_a8

    return-void

    :cond_7c
    const-wide/16 v5, 0x0

    if-eqz v0, :cond_86

    :try_start_80
    const-string p1, "telephony_info"

    .line 331
    invoke-virtual {v0, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    :cond_86
    const-wide/16 v2, 0x3e8

    cmp-long p1, v5, v2

    if-ltz p1, :cond_8f

    .line 335
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->deleteFirstRow(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8f} :catch_98
    .catchall {:try_start_80 .. :try_end_8f} :catchall_95

    :cond_8f
    if-eqz v0, :cond_a6

    .line 341
    :try_start_91
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_a6
    .catchall {:try_start_91 .. :try_end_94} :catchall_a8

    goto :goto_a6

    :catchall_95
    move-exception p0

    move-object v2, v0

    goto :goto_9b

    :catch_98
    move-object v2, v0

    goto :goto_a1

    :catchall_9a
    move-exception p0

    :goto_9b
    if-eqz v2, :cond_a0

    :try_start_9d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a8

    .line 344
    :catch_a0
    :cond_a0
    :try_start_a0
    throw p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a8

    :catch_a1
    :goto_a1
    if-eqz v2, :cond_a6

    .line 341
    :try_start_a3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a8

    .line 345
    :catch_a6
    :cond_a6
    :goto_a6
    :try_start_a6
    monitor-exit v1

    return-void

    :catchall_a8
    move-exception p0

    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_a8

    throw p0

    :cond_ab
    :goto_ab
    return-void
.end method


# virtual methods
.method public blacklist dump(ILjava/io/PrintWriter;)V
    .registers 11

    const-string v0, "SemTelephonyDatabaseHelper"

    .line 437
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "select * from telephony_info order by key"

    .line 443
    new-instance v1, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TelephonyDatabase["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object v2, v2, p1

    if-nez v2, :cond_47

    .line 446
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " mDbLoader["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 450
    :cond_47
    invoke-virtual {v1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object v2, v2, p1

    monitor-enter v2

    const/4 v3, 0x0

    .line 453
    :try_start_50
    iget-object v4, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->mDbLoader:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_58} :catch_f7
    .catchall {:try_start_50 .. :try_end_58} :catchall_e7

    if-eqz v4, :cond_62

    .line 455
    :try_start_5a
    invoke-virtual {v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_62

    :catchall_5f
    move-exception p0

    goto/16 :goto_e9

    :cond_62
    :goto_62
    if-eqz v3, :cond_d9

    .line 458
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d9

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 461
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "|Key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    const/4 v7, 0x2

    .line 463
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a8
    const/16 v5, 0x8

    if-ge v6, v5, :cond_cc

    .line 466
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 467
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b7

    goto :goto_cc

    :cond_b7
    const-string v7, "|Value"

    .line 470
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v6, -0x2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    .line 472
    :cond_cc
    :goto_cc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_d7} :catch_f8
    .catchall {:try_start_5a .. :try_end_d7} :catchall_5f

    if-nez v0, :cond_70

    .line 477
    :cond_d9
    :try_start_d9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_10b

    if-eqz v3, :cond_e1

    .line 480
    :try_start_de
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_10b

    :catch_e1
    :cond_e1
    if-eqz v4, :cond_103

    .line 486
    :goto_e3
    :try_start_e3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_103
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_10b

    goto :goto_103

    :catchall_e7
    move-exception p0

    move-object v4, v3

    .line 477
    :goto_e9
    :try_start_e9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_10b

    if-eqz v3, :cond_f1

    .line 480
    :try_start_ee
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f1} :catch_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_10b

    :catch_f1
    :cond_f1
    if-eqz v4, :cond_f6

    .line 486
    :try_start_f3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f6} :catch_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_10b

    .line 489
    :catch_f6
    :cond_f6
    :try_start_f6
    throw p0

    :catch_f7
    move-object v4, v3

    .line 477
    :catch_f8
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_fb
    .catchall {:try_start_f6 .. :try_end_fb} :catchall_10b

    if-eqz v3, :cond_100

    .line 480
    :try_start_fd
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_100} :catch_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_10b

    :catch_100
    :cond_100
    if-eqz v4, :cond_103

    goto :goto_e3

    .line 490
    :catch_103
    :cond_103
    :goto_103
    :try_start_103
    monitor-exit v2
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_10b

    .line 491
    invoke-virtual {v1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 492
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->dumpVendor(ILjava/io/PrintWriter;)V

    return-void

    :catchall_10b
    move-exception p0

    .line 490
    :try_start_10c
    monitor-exit v2
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 565
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    if-eq v0, p1, :cond_8

    goto :goto_13

    .line 570
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->makeCsDiagnosisFile()V

    goto :goto_13

    .line 567
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->writeData(Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;)V

    :goto_13
    return-void
.end method

.method public varargs blacklist writeData(ILjava/lang/String;[Ljava/lang/String;)V
    .registers 13

    if-nez p3, :cond_3

    return-void

    .line 276
    :cond_3
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    .line 278
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_a
    if-ge v3, v1, :cond_26

    aget-object v5, p3, v3

    add-int/lit8 v6, v4, 0x1

    .line 279
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x3e8

    if-ge v7, v8, :cond_1c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    :cond_1c
    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_a

    .line 282
    :cond_26
    new-instance p3, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
