.class public Lc/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "V10"

.field private static final B:Ljava/lang/String; = "V11"

.field private static final C:Ljava/lang/String; = "V12"

.field private static final D:Ljava/lang/String; = "V13"

.field private static final E:Ljava/lang/String; = "V14"

.field private static final F:Ljava/lang/String; = "V15"

.field private static final G:Ljava/lang/String; = "V16"

.field private static final H:Ljava/lang/String; = "V17"

.field private static final I:Ljava/lang/String; = "V18"

.field private static final J:Ljava/lang/String; = "V19"

.field private static final K:Ljava/lang/String; = "V20"

.field private static final L:Ljava/lang/String; = "V21"

.field private static final M:Ljava/lang/String; = "V22"

.field private static final N:Ljava/lang/String; = "V23"

.field private static final O:Ljava/lang/String; = "Status"

.field private static final P:Ljava/lang/String; = "BattLevel"

.field private static final Q:Ljava/lang/String; = "Time"

.field private static final R:Ljava/lang/String; = "TimeOffset"

.field private static final S:Ljava/lang/String; = "BattUsage"

.field private static final T:Ljava/lang/String; = "DcDuration"

.field private static final U:Ljava/lang/String; = "Day"

.field private static final V:Ljava/lang/String; = "Wifi"

.field private static final W:Ljava/lang/String; = "SystemLoad"

.field private static final X:Ljava/lang/String; = "PRED"

.field private static final Y:Ljava/lang/String; = ","

.field private static final Z:Ljava/lang/String; = "("

.field private static final a0:Ljava/lang/String; = ")"

.field private static final b:Ljava/lang/String;

.field private static final b0:Ljava/lang/String; = "["

.field private static c:Landroid/content/Context; = null

.field private static final c0:Ljava/lang/String; = "]"

.field private static d:Lc/e; = null

.field private static d0:I = 0x0

.field private static final e:Ljava/lang/String; = "hcm_info"

.field private static final f:I = 0x4

.field private static final g:Ljava/lang/Object;

.field private static final h:Ljava/lang/String; = "MAIN"

.field private static final i:Ljava/lang/String; = "BATT_"

.field private static final j:Ljava/lang/String; = "QFIND_"

.field private static final k:Ljava/lang/String; = "ID"

.field private static final l:Ljava/lang/String; = "Date"

.field private static final m:Ljava/lang/String; = "Type1"

.field private static final n:Ljava/lang/String; = "Type2"

.field private static final o:Ljava/lang/String; = "Type3"

.field private static final p:Ljava/lang/String; = "Type4"

.field private static final q:Ljava/lang/String; = "V00"

.field private static final r:Ljava/lang/String; = "V01"

.field private static final s:Ljava/lang/String; = "V02"

.field private static final t:Ljava/lang/String; = "V03"

.field private static final u:Ljava/lang/String; = "V04"

.field private static final v:Ljava/lang/String; = "V05"

.field private static final w:Ljava/lang/String; = "V06"

.field private static final x:Ljava/lang/String; = "V07"

.field private static final y:Ljava/lang/String; = "V08"

.field private static final z:Ljava/lang/String; = "V09"


# instance fields
.field private a:La/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lc/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lc/e;->d0:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "hcm_info"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lc/e;->a:La/d;

    sget-object v0, Lc/e;->b:Ljava/lang/String;

    const-string v1, "DataManagerDBHelper Start"

    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lc/e;->c:Landroid/content/Context;

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object p1

    iput-object p1, p0, Lc/e;->a:La/d;

    return-void
.end method

.method private p(I)Ljava/lang/String;
    .registers 3

    const/16 p0, -0xc

    if-lt p1, p0, :cond_8

    const/16 p0, 0xe

    if-le p1, p0, :cond_11

    :cond_8
    sget-object p0, Lc/e;->b:Ljava/lang/String;

    const-string p1, "GMT offset range is over"

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xd

    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    if-gez p1, :cond_20

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BATT_N"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p1, p1, -0x1

    goto :goto_28

    :cond_20
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BATT_P"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private q(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 p0, -0xc

    if-lt p2, p0, :cond_8

    const/16 p0, 0xe

    if-le p2, p0, :cond_11

    :cond_8
    sget-object p0, Lc/e;->b:Ljava/lang/String;

    const-string p2, "GMT offset range is over"

    invoke-static {p0, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, -0xd

    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    if-gez p2, :cond_23

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "N"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p2, p2, -0x1

    goto :goto_2e

    :cond_23
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "P"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2e
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized r(Landroid/content/Context;)Lc/e;
    .registers 3

    const-class v0, Lc/e;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lc/e;->d:Lc/e;

    if-nez v1, :cond_e

    new-instance v1, Lc/e;

    invoke-direct {v1, p0}, Lc/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc/e;->d:Lc/e;

    :cond_e
    sget-object p0, Lc/e;->d:Lc/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;[IIII)V
    .registers 14

    const-string p4, "MAIN"

    sget-object v0, Lc/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAvgSlotInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_c0

    :try_start_22
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Date"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    move v2, p3

    :goto_37
    const/16 v3, 0x18

    const/4 v4, 0x1

    if-ge v2, v3, :cond_69

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, p3

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget v4, p2, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_69
    const/4 p2, 0x0

    if-eqz p5, :cond_7e

    if-eq p5, v4, :cond_8c

    const/4 v2, 0x2

    if-eq p5, v2, :cond_82

    const/4 v2, 0x3

    if-eq p5, v2, :cond_75

    goto :goto_95

    :cond_75
    const-string p5, "ID = ?"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, p3

    invoke-virtual {p0, p4, p5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7e
    invoke-virtual {p0, p4, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_95

    :cond_82
    const-string p2, "ID = ?"

    new-array p5, v4, [Ljava/lang/String;

    aput-object p1, p5, p3

    invoke-virtual {p0, p4, p2, p5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_95

    :cond_8c
    const-string p2, "ID = ?"

    new-array p5, v4, [Ljava/lang/String;

    aput-object p1, p5, p3

    invoke-virtual {p0, p4, v1, p2, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_95
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_98
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_98} :catch_9e
    .catchall {:try_start_22 .. :try_end_98} :catchall_9c

    :goto_98
    :try_start_98
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_c0

    goto :goto_ba

    :catchall_9c
    move-exception p1

    goto :goto_bc

    :catch_9e
    move-exception p1

    :try_start_9f
    sget-object p2, Lc/e;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update IllegalStateException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_9f .. :try_end_b9} :catchall_9c

    goto :goto_98

    :goto_ba
    :try_start_ba
    monitor-exit v0

    return-void

    :goto_bc
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_c0
    move-exception p0

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_ba .. :try_end_c2} :catchall_c0

    throw p0
.end method

.method public b(Lc/f;III)V
    .registers 12

    invoke-direct {p0, p2}, Lc/e;->p(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChargingInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_25
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_10a

    :try_start_2c
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "Status"

    invoke-virtual {p1}, Lc/f;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "Day"

    invoke-virtual {p1}, Lc/f;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "Time"

    invoke-virtual {p1}, Lc/f;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "Wifi"

    invoke-virtual {p1}, Lc/f;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "BattLevel"

    invoke-virtual {p1}, Lc/f;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "BattUsage"

    invoke-virtual {p1}, Lc/f;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "DcDuration"

    invoke-virtual {p1}, Lc/f;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "SystemLoad"

    invoke-virtual {p1}, Lc/f;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    if-eqz p4, :cond_b8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p4, v5, :cond_ce

    const/4 v6, 0x2

    if-eq p4, v6, :cond_bc

    const/4 v6, 0x3

    if-eq p4, v6, :cond_a7

    goto :goto_df

    :cond_a7
    const-string p4, "Time = ?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lc/e;->x(II)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-virtual {v2, v0, p4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_b8
    invoke-virtual {v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_df

    :cond_bc
    const-string p1, "Time = ?"

    new-array p4, v5, [Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lc/e;->x(II)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, v4

    invoke-virtual {v2, v0, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_df

    :cond_ce
    const-string p1, "Time = ?"

    new-array p4, v5, [Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lc/e;->x(II)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, v4

    invoke-virtual {v2, v0, v3, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_df
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e2
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_e2} :catch_e8
    .catchall {:try_start_2c .. :try_end_e2} :catchall_e6

    :goto_e2
    :try_start_e2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_10a

    goto :goto_104

    :catchall_e6
    move-exception p0

    goto :goto_106

    :catch_e8
    move-exception p0

    :try_start_e9
    sget-object p1, Lc/e;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update IllegalStateException : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_e9 .. :try_end_103} :catchall_e6

    goto :goto_e2

    :goto_104
    :try_start_104
    monitor-exit v1

    return-void

    :goto_106
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0

    :catchall_10a
    move-exception p0

    monitor-exit v1
    :try_end_10c
    .catchall {:try_start_104 .. :try_end_10c} :catchall_10a

    throw p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BATT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Status"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " INTEGER"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Day"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Wifi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BattLevel"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BattUsage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LONG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DcDuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SystemLoad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 13

    const-string v0, "MAIN"

    sget-object v1, Lc/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPredictionInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_b3

    :try_start_22
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ID"

    const-string v4, "PRED"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "V00"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "V01"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "V02"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "V03"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "V04"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "V05"

    invoke-virtual {v2, p2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p7, :cond_6f

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eq p7, p4, :cond_7f

    const/4 p5, 0x2

    if-eq p7, p5, :cond_73

    const/4 p5, 0x3

    if-eq p7, p5, :cond_66

    goto :goto_88

    :cond_66
    const-string p5, "V00 = ?"

    new-array p4, p4, [Ljava/lang/String;

    aput-object p1, p4, p3

    invoke-virtual {p0, v0, p5, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6f
    invoke-virtual {p0, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_88

    :cond_73
    const-string p1, "ID = ?"

    const-string p2, "PRED"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_88

    :cond_7f
    const-string p2, "V00 = ?"

    new-array p4, p4, [Ljava/lang/String;

    aput-object p1, p4, p3

    invoke-virtual {p0, v0, v2, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_88
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_8b} :catch_91
    .catchall {:try_start_22 .. :try_end_8b} :catchall_8f

    :goto_8b
    :try_start_8b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_b3

    goto :goto_ad

    :catchall_8f
    move-exception p1

    goto :goto_af

    :catch_91
    move-exception p1

    :try_start_92
    sget-object p2, Lc/e;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update IllegalStateException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_92 .. :try_end_ac} :catchall_8f

    goto :goto_8b

    :goto_ad
    :try_start_ad
    monitor-exit v1

    return-void

    :goto_af
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_b3
    move-exception p0

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_ad .. :try_end_b5} :catchall_b3

    throw p0
.end method

.method public e(Ljava/lang/String;I[IIIII)V
    .registers 15

    const-string p6, "MAIN"

    sget-object v0, Lc/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addQfindSlotInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_ef

    :try_start_2a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Type1"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Date"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    move p5, p2

    :goto_48
    const/4 v2, 0x1

    if-ge p5, p4, :cond_98

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, p2

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget v3, p3, p5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lc/e;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update db value["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p3, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_48

    :cond_98
    const/4 p3, 0x0

    if-eqz p7, :cond_ad

    if-eq p7, v2, :cond_bb

    const/4 p4, 0x2

    if-eq p7, p4, :cond_b1

    const/4 p4, 0x3

    if-eq p7, p4, :cond_a4

    goto :goto_c4

    :cond_a4
    const-string p4, "ID = ?"

    new-array p5, v2, [Ljava/lang/String;

    aput-object p1, p5, p2

    invoke-virtual {p0, p6, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_ad
    invoke-virtual {p0, p6, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_c4

    :cond_b1
    const-string p3, "ID = ?"

    new-array p4, v2, [Ljava/lang/String;

    aput-object p1, p4, p2

    invoke-virtual {p0, p6, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_c4

    :cond_bb
    const-string p3, "ID = ?"

    new-array p4, v2, [Ljava/lang/String;

    aput-object p1, p4, p2

    invoke-virtual {p0, p6, v1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_c4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c7
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_c7} :catch_cd
    .catchall {:try_start_2a .. :try_end_c7} :catchall_cb

    :goto_c7
    :try_start_c7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_ef

    goto :goto_e9

    :catchall_cb
    move-exception p1

    goto :goto_eb

    :catch_cd
    move-exception p1

    :try_start_ce
    sget-object p2, Lc/e;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update IllegalStateException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_ce .. :try_end_e8} :catchall_cb

    goto :goto_c7

    :goto_e9
    :try_start_e9
    monitor-exit v0

    return-void

    :goto_eb
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_ef
    move-exception p0

    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_e9 .. :try_end_f1} :catchall_ef

    throw p0
.end method

.method public f(Ljava/lang/String;I[III)V
    .registers 14

    const-string v0, "QFIND_"

    invoke-direct {p0, v0, p2}, Lc/e;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lc/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addScreenSlotInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_ef

    :try_start_26
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Date"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    move v2, p1

    :goto_3b
    array-length v3, p3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_8c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, p1

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget v4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lc/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update db value["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_8c
    const/4 p3, 0x0

    if-eqz p5, :cond_a5

    if-eq p5, v4, :cond_b7

    const/4 v2, 0x2

    if-eq p5, v2, :cond_a9

    const/4 v2, 0x3

    if-eq p5, v2, :cond_98

    goto :goto_c4

    :cond_98
    const-string p5, "Date = ?"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, p1

    invoke-virtual {p0, p2, p5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_a5
    invoke-virtual {p0, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_c4

    :cond_a9
    const-string p3, "Date = ?"

    new-array p5, v4, [Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p5, p1

    invoke-virtual {p0, p2, p3, p5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_c4

    :cond_b7
    const-string p3, "Date = ?"

    new-array p5, v4, [Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p5, p1

    invoke-virtual {p0, p2, v1, p3, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_c4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c7
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_c7} :catch_cd
    .catchall {:try_start_26 .. :try_end_c7} :catchall_cb

    :goto_c7
    :try_start_c7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_ef

    goto :goto_e9

    :catchall_cb
    move-exception p1

    goto :goto_eb

    :catch_cd
    move-exception p1

    :try_start_ce
    sget-object p2, Lc/e;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update IllegalStateException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_ce .. :try_end_e8} :catchall_cb

    goto :goto_c7

    :goto_e9
    :try_start_e9
    monitor-exit v0

    return-void

    :goto_eb
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_ef
    move-exception p0

    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_e9 .. :try_end_f1} :catchall_ef

    throw p0
.end method

.method public g(Ljava/lang/String;I[III)V
    .registers 14

    const-string v0, "MAIN"

    sget-object v1, Lc/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSmartChargeInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_e8

    :try_start_22
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ID"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Date"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "Type1"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    move p5, p2

    :goto_40
    array-length v3, p3

    const/4 v4, 0x1

    if-ge p5, v3, :cond_91

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, p2

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget v4, p3, p5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lc/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update db value["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p3, p5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_40

    :cond_91
    const/4 p3, 0x0

    if-eqz p4, :cond_a6

    if-eq p4, v4, :cond_b4

    const/4 p5, 0x2

    if-eq p4, p5, :cond_aa

    const/4 p5, 0x3

    if-eq p4, p5, :cond_9d

    goto :goto_bd

    :cond_9d
    const-string p4, "ID = ?"

    new-array p5, v4, [Ljava/lang/String;

    aput-object p1, p5, p2

    invoke-virtual {p0, v0, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_a6
    invoke-virtual {p0, v0, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_bd

    :cond_aa
    const-string p3, "ID = ?"

    new-array p4, v4, [Ljava/lang/String;

    aput-object p1, p4, p2

    invoke-virtual {p0, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_bd

    :cond_b4
    const-string p3, "ID = ?"

    new-array p4, v4, [Ljava/lang/String;

    aput-object p1, p4, p2

    invoke-virtual {p0, v0, v2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_bd
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c0
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_c0} :catch_c6
    .catchall {:try_start_22 .. :try_end_c0} :catchall_c4

    :goto_c0
    :try_start_c0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_e8

    goto :goto_e2

    :catchall_c4
    move-exception p1

    goto :goto_e4

    :catch_c6
    move-exception p1

    :try_start_c7
    sget-object p2, Lc/e;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update IllegalStateException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_c7 .. :try_end_e1} :catchall_c4

    goto :goto_c0

    :goto_e2
    :try_start_e2
    monitor-exit v1

    return-void

    :goto_e4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_e8
    move-exception p0

    monitor-exit v1
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_e8

    throw p0
.end method

.method public h(Ljava/lang/String;I[IIIII)V
    .registers 15

    const-string p6, "MAIN"

    sget-object v0, Lc/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUmblSlotInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_c7

    :try_start_22
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Type1"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Date"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    move p5, p2

    :goto_40
    const/4 v2, 0x1

    if-ge p5, p4, :cond_70

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, p2

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget v3, p3, p5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_40

    :cond_70
    const/4 p3, 0x0

    if-eqz p7, :cond_85

    if-eq p7, v2, :cond_93

    const/4 p4, 0x2

    if-eq p7, p4, :cond_89

    const/4 p4, 0x3

    if-eq p7, p4, :cond_7c

    goto :goto_9c

    :cond_7c
    const-string p4, "ID = ?"

    new-array p5, v2, [Ljava/lang/String;

    aput-object p1, p5, p2

    invoke-virtual {p0, p6, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_85
    invoke-virtual {p0, p6, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_9c

    :cond_89
    const-string p3, "ID = ?"

    new-array p4, v2, [Ljava/lang/String;

    aput-object p1, p4, p2

    invoke-virtual {p0, p6, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_9c

    :cond_93
    const-string p3, "ID = ?"

    new-array p4, v2, [Ljava/lang/String;

    aput-object p1, p4, p2

    invoke-virtual {p0, p6, v1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_9c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9f
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_9f} :catch_a5
    .catchall {:try_start_22 .. :try_end_9f} :catchall_a3

    :goto_9f
    :try_start_9f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_c7

    goto :goto_c1

    :catchall_a3
    move-exception p1

    goto :goto_c3

    :catch_a5
    move-exception p1

    :try_start_a6
    sget-object p2, Lc/e;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update IllegalStateException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_a6 .. :try_end_c0} :catchall_a3

    goto :goto_9f

    :goto_c1
    :try_start_c1
    monitor-exit v0

    return-void

    :goto_c3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_c7
    move-exception p0

    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_c1 .. :try_end_c9} :catchall_c7

    throw p0
.end method

.method public i()V
    .registers 9

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "MAIN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget-object v1, Lc/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "row cnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    if-eqz p0, :cond_31

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_31
    return-void
.end method

.method public j(Lc/a;I)V
    .registers 45

    invoke-virtual/range {p1 .. p1}, Lc/a;->f()[I

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lc/a;->g()[I

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lc/a;->h()[I

    move-result-object v2

    const-string v11, "MAIN"

    const-string v12, "ID"

    const-string v13, "Date"

    const-string v14, "Type1"

    const-string v15, "Type2"

    const-string v16, "Type3"

    const-string v17, "Type4"

    const-string v18, "V00"

    const-string v19, "V01"

    const-string v20, "V02"

    const-string v21, "V03"

    const-string v22, "V04"

    const-string v23, "V05"

    const-string v24, "V06"

    const-string v25, "V07"

    const-string v26, "V08"

    const-string v27, "V09"

    const-string v28, "V10"

    const-string v29, "V11"

    const-string v30, "V12"

    const-string v31, "V13"

    const-string v32, "V14"

    const-string v33, "V15"

    const-string v34, "V16"

    const-string v35, "V17"

    const-string v36, "V18"

    const-string v37, "V19"

    const-string v38, "V20"

    const-string v39, "V21"

    const-string v40, "V22"

    const-string v41, "V23"

    filled-new-array/range {v12 .. v41}, [Ljava/lang/String;

    move-result-object v12

    sget-object v3, Lc/e;->b:Ljava/lang/String;

    const-string v4, "getDBAvgBattUsageInfo : MAIN"

    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v13

    :try_start_58
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v6, "ID = ?"

    const-string v3, "BATTAVG"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v14

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v10, 0x18

    if-eqz v3, :cond_119

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_80

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    monitor-exit v13

    return-void

    :cond_80
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_116

    const-string v4, "Date"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    new-array v5, v10, [I

    move/from16 v6, v16

    :goto_90
    if-ge v6, v10, :cond_be

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "V"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d"

    new-array v10, v15, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v10, v16

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x18

    goto :goto_90

    :cond_be
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v6, p1

    invoke-virtual {v6, v4}, Lc/a;->x(I)V

    sget-object v6, Lc/e;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDBAvgBattUsageInfo BATTAVG update time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, v16

    const/16 v10, 0x18

    :goto_e5
    if-ge v4, v10, :cond_116

    aget v6, v5, v4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v4

    sget-object v6, Lc/e;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BATTAVG avgUsage["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e5

    :cond_116
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_119
    const-string v6, "ID = ?"

    const-string v0, "BATTAVGBYDAY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object v3, v14

    move-object v4, v11

    move-object v5, v12

    move v15, v10

    move-object v10, v0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1ac

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_13a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    monitor-exit v13

    return-void

    :cond_13a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1a9

    const-string v3, "Date"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    new-array v3, v15, [I

    move/from16 v4, v16

    :goto_149
    if-ge v4, v15, :cond_176

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v16

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_149

    :cond_176
    move/from16 v4, v16

    :goto_178
    if-ge v4, v15, :cond_1a9

    aget v5, v3, v4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    sget-object v5, Lc/e;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BATTAVGBYDAY avgUsageByDay["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_178

    :cond_1a9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1ac
    const-string v6, "ID = ?"

    const-string v0, "BATTAVGBYDAY_N"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v14

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_23d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1cb

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    monitor-exit v13

    return-void

    :cond_1cb
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_23a

    const-string v1, "Date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    new-array v1, v15, [I

    move/from16 v3, v16

    :goto_1da
    if-ge v3, v15, :cond_207

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v16

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1da

    :cond_207
    move/from16 v3, v16

    :goto_209
    if-ge v3, v15, :cond_23a

    aget v4, v1, v3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    sget-object v4, Lc/e;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BATTAVGBYDAY_N avgUsageByDay_N["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_209

    :cond_23a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_23d
    monitor-exit v13

    return-void

    :catchall_23f
    move-exception v0

    monitor-exit v13
    :try_end_241
    .catchall {:try_start_58 .. :try_end_241} :catchall_23f

    throw v0
.end method

.method public k(Ljava/util/ArrayList;III)V
    .registers 25

    move/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lc/e;->p(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lc/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInfo table name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v8

    :try_start_21
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_c4

    if-eqz v1, :cond_c2

    :try_start_38
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b9

    const-string v0, "Status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "Day"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Time"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Wifi"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "BattLevel"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "BattUsage"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "DcDuration"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v9, "SystemLoad"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    :goto_6e
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_b9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v10, 0x1

    move/from16 v11, p4

    if-ne v11, v10, :cond_a4

    div-int/lit8 v10, v14, 0x3c

    div-int/lit8 v10, v10, 0x18

    move/from16 p0, v0

    move/from16 v0, p3

    if-lt v10, v0, :cond_a8

    goto :goto_b9

    :cond_a4
    move/from16 p0, v0

    move/from16 v0, p3

    :cond_a8
    new-instance v10, Lc/f;

    move-object v11, v10

    invoke-direct/range {v11 .. v19}, Lc/f;-><init>(IIIIIIII)V

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b6
    .catchall {:try_start_38 .. :try_end_b6} :catchall_bd

    move/from16 v0, p0

    goto :goto_6e

    :cond_b9
    :goto_b9
    :try_start_b9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_c2

    :catchall_bd
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_c2
    :goto_c2
    monitor-exit v8

    return-void

    :catchall_c4
    move-exception v0

    monitor-exit v8
    :try_end_c6
    .catchall {:try_start_b9 .. :try_end_c6} :catchall_c4

    throw v0
.end method

.method public l(Ljava/lang/String;I[II)I
    .registers 39

    move-object/from16 v0, p1

    move/from16 v1, p4

    const-string v3, "MAIN"

    const-string v4, "ID"

    const-string v5, "Date"

    const-string v6, "Type1"

    const-string v7, "Type2"

    const-string v8, "Type3"

    const-string v9, "Type4"

    const-string v10, "V00"

    const-string v11, "V01"

    const-string v12, "V02"

    const-string v13, "V03"

    const-string v14, "V04"

    const-string v15, "V05"

    const-string v16, "V06"

    const-string v17, "V07"

    const-string v18, "V08"

    const-string v19, "V09"

    const-string v20, "V10"

    const-string v21, "V11"

    const-string v22, "V12"

    const-string v23, "V13"

    const-string v24, "V14"

    const-string v25, "V15"

    const-string v26, "V16"

    const-string v27, "V17"

    const-string v28, "V18"

    const-string v29, "V19"

    const-string v30, "V20"

    const-string v31, "V21"

    const-string v32, "V22"

    const-string v33, "V23"

    filled-new-array/range {v4 .. v33}, [Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lc/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBQfindSlotInfo : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " date : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v11

    :try_start_69
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v6, "ID = ? AND Date = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v7, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v7, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_124

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_96

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    monitor-exit v11

    return v3

    :cond_96
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_121

    const-string v3, "Type1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count- : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v1, [I

    move v5, v12

    :goto_c1
    if-ge v5, v1, :cond_ed

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "V"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02d"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c1

    :cond_ed
    :goto_ed
    if-ge v12, v1, :cond_121

    aget v5, v4, v12

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p3, v12

    sget-object v5, Lc/e;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "- portion["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p3, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_ed

    :cond_121
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_124
    monitor-exit v11

    return v3

    :catchall_126
    move-exception v0

    monitor-exit v11
    :try_end_128
    .catchall {:try_start_69 .. :try_end_128} :catchall_126

    throw v0
.end method

.method public m(Ljava/lang/String;[II)I
    .registers 38

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v3, "MAIN"

    const-string v4, "ID"

    const-string v5, "Date"

    const-string v6, "Type1"

    const-string v7, "Type2"

    const-string v8, "Type3"

    const-string v9, "Type4"

    const-string v10, "V00"

    const-string v11, "V01"

    const-string v12, "V02"

    const-string v13, "V03"

    const-string v14, "V04"

    const-string v15, "V05"

    const-string v16, "V06"

    const-string v17, "V07"

    const-string v18, "V08"

    const-string v19, "V09"

    const-string v20, "V10"

    const-string v21, "V11"

    const-string v22, "V12"

    const-string v23, "V13"

    const-string v24, "V14"

    const-string v25, "V15"

    const-string v26, "V16"

    const-string v27, "V17"

    const-string v28, "V18"

    const-string v29, "V19"

    const-string v30, "V20"

    const-string v31, "V21"

    const-string v32, "V22"

    const-string v33, "V23"

    filled-new-array/range {v4 .. v33}, [Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lc/e;->b:Ljava/lang/String;

    const-string v2, "getDBUmblSlotInfo : MAIN"

    invoke-static {v10, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v11

    :try_start_50
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v5, "ID = ?"

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v6, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_ff

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_70

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    monitor-exit v11

    return v13

    :cond_70
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_fc

    const-string v3, "Type1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count- : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v1, [I

    move v5, v13

    :goto_9b
    if-ge v5, v1, :cond_c7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "V"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02d"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    :cond_c7
    :goto_c7
    if-ge v13, v1, :cond_fb

    aget v5, v4, v13

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v13

    sget-object v5, Lc/e;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "- portion["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p2, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_c7

    :cond_fb
    move v13, v3

    :cond_fc
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ff
    monitor-exit v11

    return v13

    :catchall_101
    move-exception v0

    monitor-exit v11
    :try_end_103
    .catchall {:try_start_50 .. :try_end_103} :catchall_101

    throw v0
.end method

.method public n(I)I
    .registers 10

    invoke-direct {p0, p1}, Lc/e;->p(I)Ljava/lang/String;

    move-result-object v1

    sget-object p1, Lc/e;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1f
    monitor-exit p1

    return v0

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public o(Ljava/lang/String;ILjava/lang/String;)I
    .registers 37

    invoke-direct/range {p0 .. p2}, Lc/e;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ID"

    const-string v4, "Date"

    const-string v5, "Type1"

    const-string v6, "Type2"

    const-string v7, "Type3"

    const-string v8, "Type4"

    const-string v9, "V00"

    const-string v10, "V01"

    const-string v11, "V02"

    const-string v12, "V03"

    const-string v13, "V04"

    const-string v14, "V05"

    const-string v15, "V06"

    const-string v16, "V07"

    const-string v17, "V08"

    const-string v18, "V09"

    const-string v19, "V10"

    const-string v20, "V11"

    const-string v21, "V12"

    const-string v22, "V13"

    const-string v23, "V14"

    const-string v24, "V15"

    const-string v25, "V16"

    const-string v26, "V17"

    const-string v27, "V18"

    const-string v28, "V19"

    const-string v29, "V20"

    const-string v30, "V21"

    const-string v31, "V22"

    const-string v32, "V23"

    filled-new-array/range {v3 .. v32}, [Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v9

    :try_start_47
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "ID = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_82

    const/4 v0, -0x1

    if-eqz v1, :cond_80

    :try_start_5d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget-object v2, Lc/e;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_7b

    :try_start_77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_80

    :catchall_7b
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_80
    :goto_80
    monitor-exit v9

    return v0

    :catchall_82
    move-exception v0

    monitor-exit v9
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_82

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    sget-object v0, Lc/e;->b:Ljava/lang/String;

    const-string v1, "onCreate : "

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE MAIN(ID STRING,Date STRING,Type1 STRING,Type2 STRING,Type3 STRING,Type4 STRING,V00 STRING,V01 STRING,V02 STRING,V03 STRING,V04 STRING,V05 STRING,V06 STRING,V07 STRING,V08 STRING,V09 STRING,V10 STRING,V11 STRING,V12 STRING,V13 STRING,V14 STRING,V15 STRING,V16 STRING,V17 STRING,V18 STRING,V19 STRING,V20 STRING,V21 STRING,V22 STRING,V23 STRING)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, -0xd

    :goto_e
    const/16 v1, 0xe

    if-gt v0, v1, :cond_ae

    new-instance v1, Ljava/lang/StringBuilder;

    if-gez v0, :cond_24

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BATT_N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2f

    :cond_24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BATT_P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Status"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Day"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Time"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Wifi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "BattLevel"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "BattUsage"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DcDuration"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SystemLoad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_ae
    invoke-virtual {p0, p1}, Lc/e;->v(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oldVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "newVersion :"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lc/e;->b:Ljava/lang/String;

    invoke-static {v0, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    if-lt p3, p2, :cond_38

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!!! onUpgrade table name : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc/e;->v(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_38
    return-void
.end method

.method public s(Ljava/util/HashMap;)V
    .registers 35

    move-object/from16 v0, p1

    const-string v2, "MAIN"

    const-string v3, "ID"

    const-string v4, "Date"

    const-string v5, "Type1"

    const-string v6, "Type2"

    const-string v7, "Type3"

    const-string v8, "Type4"

    const-string v9, "V00"

    const-string v10, "V01"

    const-string v11, "V02"

    const-string v12, "V03"

    const-string v13, "V04"

    const-string v14, "V05"

    const-string v15, "V06"

    const-string v16, "V07"

    const-string v17, "V08"

    const-string v18, "V09"

    const-string v19, "V10"

    const-string v20, "V11"

    const-string v21, "V12"

    const-string v22, "V13"

    const-string v23, "V14"

    const-string v24, "V15"

    const-string v25, "V16"

    const-string v26, "V17"

    const-string v27, "V18"

    const-string v28, "V19"

    const-string v29, "V20"

    const-string v30, "V21"

    const-string v31, "V22"

    const-string v32, "V23"

    filled-new-array/range {v3 .. v32}, [Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lc/e;->b:Ljava/lang/String;

    const-string v1, "getPredictionInfo : MAIN"

    invoke-static {v9, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v10

    :try_start_4e
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "ID = ?"

    const-string v5, "PRED"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_65

    monitor-exit v10

    return-void

    :cond_65
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_75

    const-string v0, "getPredictionInfo cursor is null"

    invoke-static {v9, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    monitor-exit v10

    return-void

    :cond_75
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_100

    const-string v2, "V00"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "V01"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "V02"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "V03"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "V04"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "V05"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    :goto_9f
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_100

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v8, Lb/e;

    move-object v11, v8

    invoke-direct/range {v11 .. v16}, Lb/e;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    if-eqz v0, :cond_fc

    invoke-virtual {v8}, Lb/e;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f5

    sget-object v9, Lc/e;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Alread have prediction : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lb/e;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fc

    :cond_f5
    invoke-virtual {v8}, Lb/e;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fc
    :goto_fc
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_9f

    :cond_100
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    monitor-exit v10

    return-void

    :catchall_105
    move-exception v0

    monitor-exit v10
    :try_end_107
    .catchall {:try_start_4e .. :try_end_107} :catchall_105

    throw v0
.end method

.method public t(Ljava/lang/String;[III)V
    .registers 41

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {}, La/j;->m()I

    move-result v2

    const-string v3, "QFIND_"

    move-object/from16 v4, p0

    invoke-direct {v4, v3, v2}, Lc/e;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ID"

    const-string v7, "Date"

    const-string v8, "Type1"

    const-string v9, "Type2"

    const-string v10, "Type3"

    const-string v11, "Type4"

    const-string v12, "V00"

    const-string v13, "V01"

    const-string v14, "V02"

    const-string v15, "V03"

    const-string v16, "V04"

    const-string v17, "V05"

    const-string v18, "V06"

    const-string v19, "V07"

    const-string v20, "V08"

    const-string v21, "V09"

    const-string v22, "V10"

    const-string v23, "V11"

    const-string v24, "V12"

    const-string v25, "V13"

    const-string v26, "V14"

    const-string v27, "V15"

    const-string v28, "V16"

    const-string v29, "V17"

    const-string v30, "V18"

    const-string v31, "V19"

    const-string v32, "V20"

    const-string v33, "V21"

    const-string v34, "V22"

    const-string v35, "V23"

    filled-new-array/range {v6 .. v35}, [Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lc/e;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScreenSlotInfo : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " date : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_73
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v3, "ID = ? AND Date = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v8, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x1

    aput-object v7, v8, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_107

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_9b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    monitor-exit v2

    return-void

    :cond_9b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_104

    new-array v4, v1, [I

    move v5, v12

    :goto_a4
    if-ge v5, v1, :cond_d0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "V"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02d"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a4

    :cond_d0
    :goto_d0
    if-ge v12, v1, :cond_104

    aget v5, v4, v12

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v12

    sget-object v5, Lc/e;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "- slot["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p2, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_d0

    :cond_104
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_107
    monitor-exit v2

    return-void

    :catchall_109
    move-exception v0

    monitor-exit v2
    :try_end_10b
    .catchall {:try_start_73 .. :try_end_10b} :catchall_109

    throw v0
.end method

.method public u(Ljava/lang/String;[II)I
    .registers 37

    move-object/from16 v0, p2

    const-string v2, "MAIN"

    const-string v3, "ID"

    const-string v4, "Date"

    const-string v5, "Type1"

    const-string v6, "Type2"

    const-string v7, "Type3"

    const-string v8, "Type4"

    const-string v9, "V00"

    const-string v10, "V01"

    const-string v11, "V02"

    const-string v12, "V03"

    const-string v13, "V04"

    const-string v14, "V05"

    const-string v15, "V06"

    const-string v16, "V07"

    const-string v17, "V08"

    const-string v18, "V09"

    const-string v19, "V10"

    const-string v20, "V11"

    const-string v21, "V12"

    const-string v22, "V13"

    const-string v23, "V14"

    const-string v24, "V15"

    const-string v25, "V16"

    const-string v26, "V17"

    const-string v27, "V18"

    const-string v28, "V19"

    const-string v29, "V20"

    const-string v30, "V21"

    const-string v31, "V22"

    const-string v32, "V23"

    filled-new-array/range {v3 .. v32}, [Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lc/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmartChargeInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v9

    :try_start_67
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "ID = ? "

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_e2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_87

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    monitor-exit v9

    return v11

    :cond_87
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_df

    const-string v2, "Type1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    array-length v3, v0

    new-array v3, v3, [I

    move v4, v11

    :goto_9f
    array-length v5, v0

    if-ge v4, v5, :cond_cc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9f

    :cond_cc
    :goto_cc
    array-length v4, v0

    if-ge v11, v4, :cond_de

    aget v4, v3, v11

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_cc

    :cond_de
    move v11, v2

    :cond_df
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e2
    monitor-exit v9

    return v11

    :catchall_e4
    move-exception v0

    monitor-exit v9
    :try_end_e6
    .catchall {:try_start_67 .. :try_end_e6} :catchall_e4

    throw v0
.end method

.method public v(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    sget-object p0, Lc/e;->b:Ljava/lang/String;

    const-string v0, "onCreate_Q : "

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0xd

    :goto_9
    const/16 v0, 0xe

    if-gt p0, v0, :cond_19b

    new-instance v0, Ljava/lang/StringBuilder;

    if-gez p0, :cond_1f

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QFIND_N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QFIND_P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ID"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " STRING"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Date"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Type1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Type2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Type3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Type4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V01"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V02"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V03"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V04"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V05"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V06"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V07"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V08"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V09"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V10"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V11"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V12"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V13"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V14"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V15"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V16"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V17"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V18"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V19"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V20"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V21"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V22"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "V23"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_9

    :cond_19b
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;I)J
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lc/e;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ID"

    const-string v3, "Date"

    const-string v4, "Type1"

    const-string v5, "Type2"

    const-string v6, "Type3"

    const-string v7, "Type4"

    const-string v8, "V00"

    const-string v9, "V01"

    const-string v10, "V02"

    const-string v11, "V03"

    const-string v12, "V04"

    const-string v13, "V05"

    const-string v14, "V06"

    const-string v15, "V07"

    const-string v16, "V08"

    const-string v17, "V09"

    const-string v18, "V10"

    const-string v19, "V11"

    const-string v20, "V12"

    const-string v21, "V13"

    const-string v22, "V14"

    const-string v23, "V15"

    const-string v24, "V16"

    const-string v25, "V17"

    const-string v26, "V18"

    const-string v27, "V19"

    const-string v28, "V20"

    const-string v29, "V21"

    const-string v30, "V22"

    const-string v31, "V23"

    filled-new-array/range {v2 .. v31}, [Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lc/e;->g:Ljava/lang/Object;

    monitor-enter v8

    :try_start_4d
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "ID = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_7f

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_7d

    :try_start_64
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_74

    const-string v0, "Date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_74
    .catchall {:try_start_64 .. :try_end_74} :catchall_78

    :cond_74
    :try_start_74
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7d

    :catchall_78
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7d
    :goto_7d
    monitor-exit v8

    return-wide v2

    :catchall_7f
    move-exception v0

    monitor-exit v8
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method public x(II)J
    .registers 11

    invoke-direct {p0, p1}, Lc/e;->p(I)Ljava/lang/String;

    move-result-object v1

    sget-object p1, Lc/e;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_32

    :try_start_19
    invoke-interface {p0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p2

    if-eqz p2, :cond_29

    const-string p2, "Date"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2d

    :cond_29
    :try_start_29
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_32

    :catchall_2d
    move-exception p2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_32
    :goto_32
    monitor-exit p1

    return-wide v0

    :catchall_34
    move-exception p0

    monitor-exit p1
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p0
.end method
