.class public La/j;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static A:La/j; = null

.field private static B:Landroid/content/Context; = null

.field private static final a:Ljava/lang/String;

.field private static final b:Z = false

.field private static final c:I = 0x1

.field private static final d:Ljava/lang/String; = "hqm_hwparam"

.field public static final e:Ljava/lang/String; = "HWPARAM"

.field private static final f:Ljava/lang/String; = "CompId"

.field private static final g:Ljava/lang/String; = "Feature"

.field private static final h:Ljava/lang/String; = "KeyName"

.field private static final i:Ljava/lang/String; = "Min"

.field private static final j:Ljava/lang/String; = "Max"

.field private static final k:Ljava/lang/String; = "Desc1"

.field private static final l:Ljava/lang/String; = "Desc2"

.field private static final m:Ljava/lang/String; = "Desc3"

.field private static final n:Ljava/lang/String; = "Desc4"

.field private static final o:Ljava/lang/String; = "Type1"

.field private static final p:Ljava/lang/String; = "Type2"

.field private static final q:Ljava/lang/String; = "Status"

.field private static final r:Ljava/lang/String; = "Value"

.field private static final s:Ljava/lang/String; = "Time"

.field private static final t:Ljava/lang/String; = ","

.field private static final u:Ljava/lang/String; = "("

.field private static final v:Ljava/lang/String; = ")"

.field public static final w:Ljava/lang/String; = "["

.field public static final x:Ljava/lang/String; = "]"

.field private static final y:Ljava/lang/String; = "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'null\'"

.field private static final z:Ljava/lang/String; = "SELECT * FROM HWPARAM"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, La/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "hqm_hwparam"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    sput-object p1, La/j;->B:Landroid/content/Context;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    const-string v0, "hqm_hwparam"

    return-object v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)La/j;
    .registers 4

    const-class v0, La/j;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/j;->a:Ljava/lang/String;

    const-string v2, "getInstance : "

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/j;->A:La/j;

    if-nez v1, :cond_15

    new-instance v1, La/j;

    invoke-direct {v1, p0}, La/j;-><init>(Landroid/content/Context;)V

    sput-object v1, La/j;->A:La/j;

    :cond_15
    sget-object p0, La/j;->A:La/j;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/io/PrintWriter;I)Z
    .registers 40

    move-object/from16 v1, p1

    const-string v0, " | "

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_a
    const-string v5, "SELECT * FROM HWPARAM"

    invoke-virtual {v2, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_10} :catch_247
    .catchall {:try_start_a .. :try_end_10} :catchall_245

    if-nez v3, :cond_18

    if-eqz v3, :cond_17

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_17
    return v4

    :cond_18
    :try_start_18
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1c} :catch_247
    .catchall {:try_start_18 .. :try_end_1c} :catchall_245

    if-nez v2, :cond_2f

    :try_start_1e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    sget-object v0, La/j;->a:Ljava/lang/String;

    const-string v2, "dump - no tables found, closing cursor"

    invoke-static {v0, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_28} :catch_2c
    .catchall {:try_start_1e .. :try_end_28} :catchall_245

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return v4

    :catch_2c
    move-exception v0

    goto/16 :goto_249

    :cond_2f
    :try_start_2f
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "CompId"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "Feature"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "KeyName"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "Min"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "Max"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "Desc1"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "Desc2"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "Desc3"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "Desc4"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "Type1"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "Type2"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v4, "Status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_7e
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_7e} :catch_247
    .catchall {:try_start_2f .. :try_end_7e} :catchall_245

    :try_start_7e
    const-string v1, "Value"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 p2, v0

    const-string v0, "Time"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0
    :try_end_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_7e .. :try_end_8c} :catch_241
    .catchall {:try_start_7e .. :try_end_8c} :catchall_245

    const/16 v16, 0x0

    :goto_8e
    :try_start_8e
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_235

    move-object/from16 v17, v2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v18, v5

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v19, v6

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v20, v7

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v21, v8

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v22, v9

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v23, v10

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v24, v11

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v25, v12

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v26, v13

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v27, v14

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v28, v15

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v29, v4

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v14

    move-object/from16 v31, v15

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move/from16 v32, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v34, "     No Action     "

    const-wide/16 v35, -0x1

    cmp-long v35, v14, v35

    if-eqz v35, :cond_10b

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v14, v17

    invoke-virtual {v14, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v34

    goto :goto_10d

    :cond_10b
    move-object/from16 v14, v17

    :goto_10d
    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " - "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v31

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_208
    .catch Ljava/lang/IllegalStateException; {:try_start_8e .. :try_end_208} :catch_23b
    .catchall {:try_start_8e .. :try_end_208} :catchall_245

    move-object/from16 v1, p1

    :try_start_20a
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_210
    .catch Ljava/lang/IllegalStateException; {:try_start_20a .. :try_end_210} :catch_233
    .catchall {:try_start_20a .. :try_end_210} :catchall_245

    const/16 v16, 0x1

    move-object/from16 p2, v2

    move-object v2, v14

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v15, v28

    move/from16 v4, v29

    move/from16 v0, v32

    move/from16 v1, v33

    goto/16 :goto_8e

    :catch_233
    move-exception v0

    goto :goto_23e

    :cond_235
    move-object/from16 v1, p1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_26a

    :catch_23b
    move-exception v0

    move-object/from16 v1, p1

    :goto_23e
    move/from16 v4, v16

    goto :goto_249

    :catch_241
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_248

    :catchall_245
    move-exception v0

    goto :goto_270

    :catch_247
    move-exception v0

    :goto_248
    const/4 v4, 0x0

    :goto_249
    :try_start_249
    sget-object v2, La/j;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update IllegalStateException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_263
    .catchall {:try_start_249 .. :try_end_263} :catchall_245

    if-eqz v3, :cond_268

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_268
    move/from16 v16, v4

    :goto_26a
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v16

    :goto_270
    if-eqz v3, :cond_275

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_275
    throw v0
.end method

.method public d(Ljava/util/LinkedHashMap;)V
    .registers 27

    move-object/from16 v0, p1

    if-eqz v0, :cond_183

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_183

    :cond_c
    sget-object v1, La/j;->a:Ljava/lang/String;

    const-string v2, "initDB : "

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "Feature"

    const-string v11, "KeyName"

    filled-new-array {v2, v11}, [Ljava/lang/String;

    move-result-object v12

    :try_start_22
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v14

    if-lez v14, :cond_144

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_30} :catch_158
    .catchall {:try_start_22 .. :try_end_30} :catchall_154

    const/16 v16, 0x0

    move/from16 v10, v16

    const/16 v17, 0x0

    :goto_36
    if-ge v10, v14, :cond_141

    :try_start_38
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_141

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, La/n;

    invoke-virtual/range {v18 .. v18}, La/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, La/n;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, La/n;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, La/n;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, La/n;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, La/n;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, La/n;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, La/n;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, La/n;->m()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, La/n;->n()I

    move-result v20

    invoke-virtual/range {v18 .. v18}, La/n;->j()I

    move-result v21

    move/from16 v22, v10

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "CompId"

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Min"

    invoke-virtual {v10, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Max"

    invoke-virtual {v10, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc1"

    invoke-virtual {v10, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc2"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc3"

    invoke-virtual {v10, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc4"

    invoke-virtual {v10, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Type1"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Type2"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HWPARAM"

    const-string v6, "Feature = ? AND KeyName = ?"

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    aput-object v9, v7, v16

    const/4 v13, 0x1

    aput-object v8, v7, v13

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v3, v1

    move-object v5, v12

    move-object/from16 v23, v8

    move-object/from16 v8, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v20

    move-object/from16 v24, v10

    move/from16 v20, v22

    move-object/from16 v10, v21

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_e4
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_e4} :catch_13d
    .catchall {:try_start_38 .. :try_end_e4} :catchall_139

    const-string v4, "HWPARAM"

    if-eqz v3, :cond_fe

    :try_start_e8
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_ef

    goto :goto_fe

    :cond_ef
    const-string v5, "Feature = ? AND KeyName = ?"

    new-array v0, v0, [Ljava/lang/String;

    aput-object v19, v0, v16

    aput-object v23, v0, v13

    move-object/from16 v6, v24

    invoke-virtual {v1, v4, v6, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_123

    :cond_fe
    :goto_fe
    move-object/from16 v6, v24

    invoke-virtual/range {v18 .. v18}, La/n;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, La/n;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, La/n;->l()J

    move-result-wide v7

    const-string v9, "Status"

    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Value"

    invoke-virtual {v6, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Time"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_123
    if-eqz v3, :cond_12b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_128
    .catch Ljava/lang/IllegalStateException; {:try_start_e8 .. :try_end_128} :catch_136
    .catchall {:try_start_e8 .. :try_end_128} :catchall_133

    move-object/from16 v17, v5

    goto :goto_12d

    :cond_12b
    move-object/from16 v17, v3

    :goto_12d
    add-int/lit8 v10, v20, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_36

    :catchall_133
    move-exception v0

    move-object v13, v3

    goto :goto_17a

    :catch_136
    move-exception v0

    move-object v13, v3

    goto :goto_15b

    :catchall_139
    move-exception v0

    move-object/from16 v13, v17

    goto :goto_17a

    :catch_13d
    move-exception v0

    move-object/from16 v13, v17

    goto :goto_15b

    :cond_141
    move-object/from16 v13, v17

    goto :goto_146

    :cond_144
    const/4 v5, 0x0

    move-object v13, v5

    :goto_146
    :try_start_146
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_149
    .catch Ljava/lang/IllegalStateException; {:try_start_146 .. :try_end_149} :catch_152
    .catchall {:try_start_146 .. :try_end_149} :catchall_179

    if-eqz v13, :cond_14e

    :goto_14b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_14e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_178

    :catch_152
    move-exception v0

    goto :goto_15b

    :catchall_154
    move-exception v0

    const/4 v5, 0x0

    move-object v13, v5

    goto :goto_17a

    :catch_158
    move-exception v0

    const/4 v5, 0x0

    move-object v13, v5

    :goto_15b
    :try_start_15b
    sget-object v2, La/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update IllegalStateException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_175
    .catchall {:try_start_15b .. :try_end_175} :catchall_179

    if-eqz v13, :cond_14e

    goto :goto_14b

    :goto_178
    return-void

    :catchall_179
    move-exception v0

    :goto_17a
    if-eqz v13, :cond_17f

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_17f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_183
    :goto_183
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_7
    const-string v2, "SELECT * FROM HWPARAM"

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_d} :catch_69
    .catchall {:try_start_7 .. :try_end_d} :catchall_67

    if-nez v1, :cond_15

    if-eqz v1, :cond_14

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_14
    return-object v0

    :cond_15
    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_29

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    sget-object p0, La/j;->a:Ljava/lang/String;

    const-string v2, "loadsaveUserID - no tables found, closing cursor"

    invoke-static {p0, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_25} :catch_69
    .catchall {:try_start_15 .. :try_end_25} :catchall_67

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_29
    :try_start_29
    const-string p0, "Feature"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string v2, "KeyName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :goto_35
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_63

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "USER"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const-string v3, "SID"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const-string p0, "Value"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_63

    :cond_5f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_62
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_62} :catch_69
    .catchall {:try_start_29 .. :try_end_62} :catchall_67

    goto :goto_35

    :cond_63
    :goto_63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_87

    :catchall_67
    move-exception p0

    goto :goto_88

    :catch_69
    move-exception p0

    :try_start_6a
    sget-object v2, La/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update IllegalStateException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_6a .. :try_end_84} :catchall_67

    if-eqz v1, :cond_87

    goto :goto_63

    :cond_87
    :goto_87
    return-object v0

    :goto_88
    if-eqz v1, :cond_8d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8d
    throw p0
.end method

.method public f(Ljava/lang/String;)Z
    .registers 19

    const-string v0, "KeyName"

    const-string v1, "Feature"

    const-string v2, ""

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v12, 0x0

    :try_start_e
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "USER"

    const-string v10, "SID"

    const-string v3, "Value"

    move-object/from16 v4, p1

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HWPARAM"

    const-string v6, "Feature = ? AND KeyName = ?"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object v3, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_36} :catch_aa
    .catchall {:try_start_e .. :try_end_36} :catchall_cf

    const-string v4, "HWPARAM"

    if-eqz v3, :cond_4b

    :try_start_3a
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_41

    goto :goto_4b

    :cond_41
    const-string v0, "Feature = ? AND KeyName = ?"

    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v4, v14, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_97

    :cond_4b
    :goto_4b
    const-string v5, "CompId"

    const-string v6, "HQM"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Min"

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Max"

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc1"

    const-string v1, "Single ID"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc2"

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc3"

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc4"

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Type1"

    const-string v1, "0"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Type2"

    const-string v1, "99"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Status"

    const-string v1, "N/A"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Time"

    const-string v1, "-1"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v4, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_97
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_97} :catch_a7
    .catchall {:try_start_3a .. :try_end_97} :catchall_a4

    :goto_97
    const/4 v13, 0x1

    :try_start_98
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9b
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_9b} :catch_a1
    .catchall {:try_start_98 .. :try_end_9b} :catchall_a4

    if-eqz v3, :cond_cb

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_cb

    :catch_a1
    move-exception v0

    move-object v12, v3

    goto :goto_ac

    :catchall_a4
    move-exception v0

    move-object v12, v3

    goto :goto_d0

    :catch_a7
    move-exception v0

    move-object v12, v3

    goto :goto_ab

    :catch_aa
    move-exception v0

    :goto_ab
    const/4 v13, 0x0

    :goto_ac
    :try_start_ac
    sget-object v1, La/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update IllegalStateException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_cf

    if-eqz v12, :cond_cb

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_cb
    :goto_cb
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v13

    :catchall_cf
    move-exception v0

    :goto_d0
    if-eqz v12, :cond_d5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_d5
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public g(Ljava/util/ArrayList;)V
    .registers 21

    sget-object v0, La/j;->a:Ljava/lang/String;

    const-string v1, "updateDB : "

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "Feature"

    const-string v2, "KeyName"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    :try_start_16
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1a} :catch_b2
    .catchall {:try_start_16 .. :try_end_1a} :catchall_af

    :goto_1a
    const/4 v12, 0x0

    :goto_1b
    :try_start_1b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/n;

    invoke-virtual {v2}, La/n;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, La/n;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, La/n;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, La/n;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, La/n;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, La/n;->l()J

    move-result-wide v6

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "Desc4"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Status"

    invoke-virtual {v15, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Value"

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "HWPARAM"

    const-string v5, "Feature = ? AND KeyName = ?"

    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v6, v16

    const/16 v17, 0x1

    aput-object v14, v6, v17

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object v2, v1

    move-object v4, v0

    move v10, v9

    move-object/from16 v9, v18

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_78
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_78} :catch_ac
    .catchall {:try_start_1b .. :try_end_78} :catchall_a9

    if-eqz v2, :cond_94

    :try_start_7a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_94

    const-string v3, "HWPARAM"

    const-string v4, "Feature = ? AND KeyName = ?"

    new-array v5, v10, [Ljava/lang/String;

    aput-object v13, v5, v16

    aput-object v14, v5, v17

    invoke-virtual {v1, v3, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_94

    :catchall_8e
    move-exception v0

    move-object v10, v2

    goto :goto_d6

    :catch_91
    move-exception v0

    move-object v10, v2

    goto :goto_b4

    :cond_94
    :goto_94
    if-eqz v2, :cond_9a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_99
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_99} :catch_91
    .catchall {:try_start_7a .. :try_end_99} :catchall_8e

    goto :goto_1a

    :cond_9a
    move-object v12, v2

    goto/16 :goto_1b

    :cond_9d
    :try_start_9d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a0
    .catch Ljava/lang/IllegalStateException; {:try_start_9d .. :try_end_a0} :catch_ac
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a9

    if-eqz v12, :cond_a5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a5
    :goto_a5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_d4

    :catchall_a9
    move-exception v0

    move-object v10, v12

    goto :goto_d6

    :catch_ac
    move-exception v0

    move-object v10, v12

    goto :goto_b4

    :catchall_af
    move-exception v0

    const/4 v10, 0x0

    goto :goto_d6

    :catch_b2
    move-exception v0

    const/4 v10, 0x0

    :goto_b4
    :try_start_b4
    sget-object v2, La/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update IllegalStateException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_b4 .. :try_end_ce} :catchall_d5

    if-eqz v10, :cond_a5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_a5

    :goto_d4
    return-void

    :catchall_d5
    move-exception v0

    :goto_d6
    if-eqz v10, :cond_db

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_db
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public h()Z
    .registers 18

    const-string v0, "KeyName"

    const-string v1, "Feature"

    const-string v2, ""

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v12, 0x0

    :try_start_e
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "HQMI"

    const-string v10, "UN"

    sget-object v3, Lc/k;->I:Ljava/lang/String;

    const-string v4, "Value"

    invoke-virtual {v14, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HWPARAM"

    const-string v6, "Feature = ? AND KeyName = ?"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object v3, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_36} :catch_ac
    .catchall {:try_start_e .. :try_end_36} :catchall_d1

    const-string v4, "HWPARAM"

    if-eqz v3, :cond_4b

    :try_start_3a
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_41

    goto :goto_4b

    :cond_41
    const-string v0, "Feature = ? AND KeyName = ?"

    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v4, v14, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_99

    :cond_4b
    :goto_4b
    const-string v5, "CompId"

    const-string v6, "HQM"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Min"

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Max"

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc1"

    const-string v1, "Unique Number"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc2"

    const-string v1, "990001"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc3"

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Desc4"

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Type1"

    const-string v1, "1"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Type2"

    const-string v1, "10"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Status"

    const-string v1, "Vendor"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Time"

    const-string v1, "-1"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v4, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_99
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_99} :catch_a9
    .catchall {:try_start_3a .. :try_end_99} :catchall_a6

    :goto_99
    const/4 v13, 0x1

    :try_start_9a
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_9a .. :try_end_9d} :catch_a3
    .catchall {:try_start_9a .. :try_end_9d} :catchall_a6

    if-eqz v3, :cond_cd

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_cd

    :catch_a3
    move-exception v0

    move-object v12, v3

    goto :goto_ae

    :catchall_a6
    move-exception v0

    move-object v12, v3

    goto :goto_d2

    :catch_a9
    move-exception v0

    move-object v12, v3

    goto :goto_ad

    :catch_ac
    move-exception v0

    :goto_ad
    const/4 v13, 0x0

    :goto_ae
    :try_start_ae
    sget-object v1, La/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update IllegalStateException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_ae .. :try_end_c8} :catchall_d1

    if-eqz v12, :cond_cd

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_cd
    :goto_cd
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v13

    :catchall_d1
    move-exception v0

    :goto_d2
    if-eqz v12, :cond_d7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_d7
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    sget-object p0, La/j;->a:Ljava/lang/String;

    const-string v0, "onCreate : "

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE HWPARAM(CompId TEXT,Feature TEXT,KeyName TEXT,Min TEXT,Max TEXT,Desc1 TEXT,Desc2 TEXT,Desc3 TEXT,Desc4 TEXT,Type1 TEXT,Type2 TEXT,Status TEXT,Value TEXT,Time TEXT)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, La/j;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "SELECT * FROM sqlite_master WHERE type=\'table\';"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_f
    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_metadata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "sqlite_sequence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_f

    :cond_31
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_38

    :cond_5e
    invoke-virtual {p0, p1}, La/j;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
