.class public final Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;
.super Ljava/lang/Object;
.source "PackageInstallTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "com.android.server.pm"

.field public static final DEBUG:Z = false

.field public static final ENABLE_SURVEY_MODE:Z

.field public static final FEATURE_INSTALL_TIME:Ljava/lang/String; = "INST"

.field public static final MAX_ACTIVE_TIMEINFO:J = 0x20L

.field public static final MAX_AGE_MILLIS:J = 0x36ee80L

.field public static final MAX_HISTORICAL_TIMEINFO:J = 0xaL

.field public static final SURVEY_INTENT:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field public static final SURVEY_PKG_NAME:Ljava/lang/String; = "com.samsung.android.providers.context"

.field public static final TAG:Ljava/lang/String; = "PackageInstallTime"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHistoricalInfo:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHistoricalinfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstallLogging:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLogging"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 34
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abandonInstallTimeInfo(I)V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;

    .line 265
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final addHistoricalTimeInfo(Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;)V
    .registers 7

    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_8
    iget-object p1, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0xa

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1c

    .line 192
    iget-object p1, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 194
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public createInstallTimeInfo(II)Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p0, "PackageInstallTime"

    const-string p1, "createInstallTimeInfo() failed :Observer Hash is zero"

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 112
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-ltz v2, :cond_27

    const-string p1, "PackageInstallTime"

    const-string p2, "Active Logging info over 32"

    .line 113
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->removeExpiredTimeInfo()V

    .line 115
    monitor-exit v1

    return-object v0

    .line 117
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_48

    .line 119
    new-instance v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;-><init>(Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo-IA;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    .line 121
    iput-wide v2, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    .line 122
    iput p2, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mUserId:I

    .line 123
    iget-object p2, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 124
    :try_start_3a
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    monitor-exit p2

    return-object v1

    :catchall_45
    move-exception p0

    monitor-exit p2
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_45

    throw p0

    :catchall_48
    move-exception p0

    .line 117
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    if-eqz p1, :cond_1f9

    .line 286
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->skipDump([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto/16 :goto_1f9

    .line 293
    :cond_a
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 296
    :try_start_12
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;

    if-nez v2, :cond_32

    goto :goto_1c

    .line 302
    :cond_32
    iget-object v4, v2, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_1f6

    .line 303
    :try_start_35
    iget-object v5, v2, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    mul-int/lit8 v7, v5, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v2, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": \"Ver\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_62
    if-ge v3, v5, :cond_83

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 310
    :cond_83
    iget-object v2, v2, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    monitor-exit v4

    goto :goto_1c

    :catchall_8e
    move-exception p0

    monitor-exit v4
    :try_end_90
    .catchall {:try_start_35 .. :try_end_90} :catchall_8e

    :try_start_90
    throw p0

    .line 313
    :cond_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_1f6

    .line 314
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/16 v1, 0x78

    if-lez v0, :cond_f8

    .line 315
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v0, p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 316
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Active install Logging info:"

    .line 317
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 319
    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ef

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 322
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_b4

    .line 325
    :cond_ef
    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 326
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 327
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 333
    :cond_f8
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 334
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    monitor-enter v2

    .line 335
    :try_start_100
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_106
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_172

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;

    .line 336
    iget-object v5, v4, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_115
    .catchall {:try_start_100 .. :try_end_115} :catchall_1f3

    .line 337
    :try_start_115
    iget-object v6, v4, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    mul-int/lit8 v8, v6, 0x40

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 339
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v4, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ": \"Ver\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v3

    :goto_143
    if-ge v8, v6, :cond_164

    .line 342
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_143

    .line 344
    :cond_164
    iget-object v4, v4, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit v5

    goto :goto_106

    :catchall_16f
    move-exception p0

    monitor-exit v5
    :try_end_171
    .catchall {:try_start_115 .. :try_end_171} :catchall_16f

    :try_start_171
    throw p0

    .line 347
    :cond_172
    monitor-exit v2
    :try_end_173
    .catchall {:try_start_171 .. :try_end_173} :catchall_1f3

    .line 349
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_1f2

    .line 350
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v0, p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 352
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Historical install Logging info("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    .line 354
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "):"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 353
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 356
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1ec

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 359
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_1b7

    .line 362
    :cond_1ec
    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 363
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_1f2
    return-void

    :catchall_1f3
    move-exception p0

    .line 347
    :try_start_1f4
    monitor-exit v2
    :try_end_1f5
    .catchall {:try_start_1f4 .. :try_end_1f5} :catchall_1f3

    throw p0

    :catchall_1f6
    move-exception p0

    .line 313
    :try_start_1f7
    monitor-exit v0
    :try_end_1f8
    .catchall {:try_start_1f7 .. :try_end_1f8} :catchall_1f6

    throw p0

    :cond_1f9
    :goto_1f9
    return-void
.end method

.method public finishInstallTimeInfo(I)V
    .registers 15

    if-nez p1, :cond_a

    const-string p0, "PackageInstallTime"

    const-string p1, "finishInstallTimeInfo: invaild hash"

    .line 203
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 209
    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;

    .line 210
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_d2

    if-nez v1, :cond_1d

    return-void

    .line 219
    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v2

    .line 220
    iget-wide v4, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    sub-long v10, v2, v4

    .line 221
    iget-object v4, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 222
    :try_start_28
    iget-object v0, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\"end\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_cf

    .line 226
    iget-object v0, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 227
    :try_start_4e
    iget-object v2, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{\"Pkg\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", \"Ver\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_82
    if-ge v4, v2, :cond_a3

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    .line 235
    :cond_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_4e .. :try_end_a4} :catchall_cc

    .line 240
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 241
    :try_start_a7
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_c9

    const-string v7, "com.android.server.pm"

    const-string v8, "INST"

    .line 245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Landroid/os/UserHandle;

    iget p1, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mUserId:I

    invoke-direct {v12, p1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)V

    .line 249
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->addHistoricalTimeInfo(Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;)V

    return-void

    :catchall_c9
    move-exception p0

    .line 242
    :try_start_ca
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw p0

    :catchall_cc
    move-exception p0

    .line 235
    :try_start_cd
    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw p0

    :catchall_cf
    move-exception p0

    .line 223
    :try_start_d0
    monitor-exit v4
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw p0

    :catchall_d2
    move-exception p0

    .line 210
    :try_start_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw p0
.end method

.method public final getCurrentTime()J
    .registers 3

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasInstallTimeInfo(I)Z
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 98
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)V
    .registers 9

    .line 369
    sget-boolean v0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->ENABLE_SURVEY_MODE:Z

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->isCollectorInstalled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 370
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 371
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "feature"

    .line 372
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra"

    .line 373
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "value"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 377
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "data"

    .line 378
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context"

    .line 379
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 380
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_46
    return-void
.end method

.method public final isCollectorInstalled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final removeExpiredTimeInfo()V
    .registers 8

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    .line 83
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 84
    :try_start_b
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;

    if-nez v5, :cond_2a

    goto :goto_15

    .line 88
    :cond_2a
    iget-wide v5, v5, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    cmp-long v5, v5, v0

    if-gez v5, :cond_15

    .line 89
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 92
    :cond_3a
    monitor-exit v2

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_b .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final skipDump([Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    move v0, p0

    .line 273
    :cond_5
    array-length v1, p1

    if-ge v0, v1, :cond_26

    .line 274
    aget-object v1, p1, v0

    if-eqz v1, :cond_26

    .line 275
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_26

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1b

    goto :goto_26

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    const-string v2, "--proto"

    .line 278
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x1

    :cond_26
    :goto_26
    return p0
.end method

.method public updateInstallTag(ILjava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_86

    if-nez p2, :cond_6

    goto/16 :goto_86

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 165
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;

    .line 166
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_83

    if-nez v1, :cond_38

    const-string p0, "PackageInstallTime"

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePackageInfo: invalid ObserverHash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tag: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_38
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide p0

    .line 174
    iget-wide v2, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    sub-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iput-wide p0, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    .line 176
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x80

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object p1, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter p1

    .line 180
    :try_start_75
    iget-object p2, v1, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    monitor-exit p1

    return-void

    :catchall_80
    move-exception p0

    monitor-exit p1
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_80

    throw p0

    :catchall_83
    move-exception p0

    .line 166
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw p0

    :cond_86
    :goto_86
    const-string p0, "PackageInstallTime"

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePackageInfo: invalid hash("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") or tag("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updatePackageInfo(ILjava/lang/String;J)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 142
    :try_start_6
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;

    .line 143
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_36

    if-nez p0, :cond_2d

    const-string p0, "PackageInstallTime"

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updatePackageInfo: invalid ObserverHash: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_2d
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    .line 149
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    return-void

    :catchall_36
    move-exception p0

    .line 143
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method
