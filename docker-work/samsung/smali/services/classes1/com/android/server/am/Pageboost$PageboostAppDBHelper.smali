.class public final Lcom/android/server/am/Pageboost$PageboostAppDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageboostAppDBHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;
    }
.end annotation


# static fields
.field public static final COLUMN_ACCTIME:Ljava/lang/String; = "ACC_ETIME"

.field public static final COLUMN_ANON:Ljava/lang/String; = "ANON"

.field public static final COLUMN_APKPATH:Ljava/lang/String; = "APK_PATH"

.field public static final COLUMN_CAPTURED:Ljava/lang/String; = "CAPTURED"

.field public static final COLUMN_EXEC:Ljava/lang/String; = "EXEC_CNT"

.field public static final COLUMN_GPU:Ljava/lang/String; = "GPU"

.field public static final COLUMN_HIT:Ljava/lang/String; = "HIT_CNT"

.field public static final COLUMN_ID:Ljava/lang/String; = "ID"

.field public static final COLUMN_ION:Ljava/lang/String; = "ION"

.field public static final COLUMN_NAME:Ljava/lang/String; = "APPNAME"

.field public static final COLUMN_PREFETCH:Ljava/lang/String; = "PREFETCH_CNT"

.field public static final COLUMN_SCORE:Ljava/lang/String; = "SCORE"

.field public static final COLUMN_SIZE_MAP_PR:Ljava/lang/String; = "SIZE_MAP_PR"

.field public static final COLUMN_SIZE_PR:Ljava/lang/String; = "SIZE_PR"

.field public static final DATABASE_NAME:Ljava/lang/String; = "/data/misc/pageboost/pageboost_app_db.db"

.field public static final DATABASE_VERSION:I = 0x7

.field public static final TABLE_NAME:Ljava/lang/String; = "AppLRU"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 2836
    new-instance v5, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;

    invoke-direct {v5}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;-><init>()V

    const-string v2, "/data/misc/pageboost/pageboost_app_db.db"

    const/4 v3, 0x0

    const/4 v4, 0x7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    return-void
.end method

.method public static clearTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string v0, "AppLRU"

    const-string v1, "1"

    const/4 v2, 0x0

    .line 2894
    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    .line 2895
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db clear : ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static restoreAppLRU(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/server/am/Pageboost$PageboostAppList;
    .registers 21

    .line 2956
    new-instance v1, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v1}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    const-string v3, "AppLRU"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "ID ASC"

    move-object/from16 v2, p0

    .line 2958
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_b1

    .line 2961
    :goto_16
    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 2962
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    const-string v3, "APPNAME"

    .line 2963
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "CAPTURED"

    .line 2964
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v3, "ANON"

    .line 2965
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v3, "ION"

    .line 2966
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v3, "GPU"

    .line 2967
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v3, "SIZE_PR"

    .line 2968
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v3, "SIZE_MAP_PR"

    .line 2969
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v3, "SCORE"

    .line 2970
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v3, "EXEC_CNT"

    .line 2971
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v3, "ACC_ETIME"

    .line 2972
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-string v3, "PREFETCH_CNT"

    .line 2973
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v3, "HIT_CNT"

    .line 2974
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string v3, "APK_PATH"

    .line 2975
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v3, v0

    invoke-direct/range {v3 .. v19}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;IIIIJJIIJIILjava/lang/String;)V

    const/4 v3, 0x0

    .line 2977
    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_a8} :catch_aa

    goto/16 :goto_16

    :catch_aa
    move-exception v0

    .line 2980
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2982
    :cond_ae
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b1
    return-object v1
.end method

.method public static setContentValue(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Landroid/content/ContentValues;
    .registers 5

    .line 2899
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2900
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2901
    iget-object p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    const-string v1, "APPNAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CAPTURED"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2903
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ANON"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2904
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ION"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2905
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "GPU"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2906
    iget-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "SIZE_PR"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2907
    iget-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "SIZE_MAP_PR"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2908
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "SCORE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2909
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "EXEC_CNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2910
    iget-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "ACC_ETIME"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2911
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "PREFETCH_CNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2912
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "HIT_CNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2913
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const-string p1, "APK_PATH"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static storeApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;Lcom/android/server/am/Pageboost$PageboostAppInfo;)V
    .registers 9

    if-eqz p1, :cond_52

    if-nez p2, :cond_5

    goto :goto_52

    .line 2922
    :cond_5
    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter p1

    const/4 v0, 0x0

    .line 2924
    :try_start_9
    invoke-static {p2, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->setContentValue(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "AppLRU"

    const-string v3, "APPNAME = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 2925
    iget-object v5, p2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2b

    const-string v0, "AppLRU"

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 2927
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 2929
    :cond_2b
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db update :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ret "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    monitor-exit p1

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit p1
    :try_end_51
    .catchall {:try_start_9 .. :try_end_51} :catchall_4f

    throw p0

    :cond_52
    :goto_52
    return-void
.end method

.method public static storeAppLRU(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;)V
    .registers 11

    :try_start_0
    const-string v0, "AppLRU"

    const-string v1, "1"

    const/4 v2, 0x0

    .line 2938
    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 2939
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db clear : ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_25

    return-void

    .line 2943
    :cond_25
    iget-object v0, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_6e

    .line 2944
    :try_start_28
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    add-int/lit8 v4, v1, 0x1

    .line 2945
    invoke-static {v3, v1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->setContentValue(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Landroid/content/ContentValues;

    move-result-object v1

    const-string v5, "AppLRU"

    .line 2946
    invoke-virtual {p0, v5, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2947
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "db insert :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ret "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_2d

    .line 2949
    :cond_69
    monitor-exit v0

    goto :goto_77

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_28 .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p0
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6e} :catch_6e

    .line 2951
    :catch_6e
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "failed to store app lru info"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_77
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string p0, "CREATE TABLE IF NOT EXISTS AppLRU (ID INTEGER, APPNAME TEXT NOT NULL UNIQUE, CAPTURED INTEGER, ANON INTEGER, ION INTEGER, GPU INTEGER, SIZE_PR INTEGER, SIZE_MAP_PR INTEGER, SCORE INTEGER, EXEC_CNT INTEGER, ACC_ETIME INTEGER, PREFETCH_CNT INTEGER, HIT_CNT INTEGER, APK_PATH TEXT NOT NULL );"

    .line 2868
    :try_start_2
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2869
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppDB table creation done"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_1c

    :catch_f
    move-exception p0

    .line 2871
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "failed to create AppDB table"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 2890
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    const-string v0, "DROP TABLE IF EXISTS AppLRU"

    .line 2880
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2881
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_2d

    :catch_9
    move-exception p0

    .line 2883
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to upgrade or downgrade AppDB table : from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2d
    return-void
.end method
