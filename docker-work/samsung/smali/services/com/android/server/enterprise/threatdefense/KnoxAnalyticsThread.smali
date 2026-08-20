.class public Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
.super Ljava/lang/Object;
.source "KnoxAnalyticsThread.java"


# static fields
.field public static final API_LEN:I = 0x3

.field public static final EVENT:[Ljava/lang/String;

.field public static final GET_PROCESSID:I = 0x2

.field public static final KNOX_ANALYTICS_COUNT_TAG:Ljava/lang/String; = "c"

.field public static final KNOX_ANALYTICS_EVENT_NAME:Ljava/lang/String; = "MTD_USAGE_EVENT"

.field public static final KNOX_ANALYTICS_EVENT_TAG:Ljava/lang/String; = "e"

.field public static final KNOX_ANALYTICS_FEATURE_NAME:Ljava/lang/String; = "KNOX_MTD"

.field public static final KNOX_ANALYTICS_PACKAGE_TAG:Ljava/lang/String; = "pN"

.field public static final KNOX_ANALYTICS_SCHEMA_VERSION:I = 0x1

.field public static final PROCESS_PROC_READER:I = 0x1

.field public static final PROC_READER:I = 0x0

.field public static final TAG:Ljava/lang/String; = "KnoxAnalyticsThread"

.field public static final sApiCalledCount:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "PROC_USAGE"

    const-string v1, "PROC_PID_USAGE"

    const-string v2, "GET_PID_USAGE"

    .line 21
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->EVENT:[Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public countApiCall(Ljava/lang/String;I)V
    .registers 13

    if-eqz p1, :cond_c2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_7

    goto/16 :goto_c2

    .line 40
    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 42
    :try_start_c
    sget-object v3, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_40

    .line 43
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_40
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7ffffffe

    cmp-long v6, v4, v6

    const-wide/16 v7, 0x1

    if-nez v6, :cond_90

    .line 52
    sget-boolean v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v3, :cond_88

    .line 53
    sget-object v3, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkg="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", api="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", c="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    add-long/2addr v4, v7

    .line 55
    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sendKnoxAnalyticsLogs(Ljava/lang/String;IJ)V

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->flush(Ljava/lang/String;I)V

    goto :goto_b9

    .line 58
    :cond_90
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    add-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_a2} :catch_b4
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_a2} :catch_af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_a2} :catch_aa
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_a2} :catch_a5
    .catchall {:try_start_c .. :try_end_a2} :catchall_a3

    goto :goto_b9

    :catchall_a3
    move-exception p0

    goto :goto_c0

    :catch_a5
    move-exception p1

    .line 70
    :try_start_a6
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_b8

    :catch_aa
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b8

    :catch_af
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_b8

    :catch_b4
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_b8
    move v1, v2

    :goto_b9
    if-eqz v1, :cond_be

    .line 74
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->reset()V

    .line 76
    :cond_be
    monitor-exit v0

    return-void

    :goto_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_a6 .. :try_end_c1} :catchall_a3

    throw p0

    :cond_c2
    :goto_c2
    return-void
.end method

.method public final flush(Ljava/lang/String;I)V
    .registers 13

    if-eqz p1, :cond_7d

    const/4 v0, 0x3

    if-lt p2, v0, :cond_7

    goto/16 :goto_7d

    :cond_7
    const-wide/16 v0, 0x0

    .line 138
    :try_start_9
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_c} :catch_56

    .line 139
    :try_start_c
    sget-object v2, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_4e

    .line 140
    :try_start_22
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 142
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_22 .. :try_end_48} :catchall_49

    goto :goto_5e

    :catchall_49
    move-exception p1

    move-wide v8, v0

    move-wide v0, v3

    move-wide v2, v8

    goto :goto_50

    :catchall_4e
    move-exception p1

    move-wide v2, v0

    :goto_50
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_54

    :try_start_51
    throw p1
    :try_end_52
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_52} :catch_52

    :catch_52
    move-exception p0

    goto :goto_58

    :catchall_54
    move-exception p1

    goto :goto_50

    :catch_56
    move-exception p0

    move-wide v2, v0

    .line 144
    :goto_58
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-wide v8, v0

    move-wide v0, v2

    move-wide v3, v8

    .line 146
    :goto_5e
    sget-object p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Flush!! status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_7d
    :goto_7d
    sget-object p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", api="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final reset()V
    .registers 3

    .line 123
    sget-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    const-string v1, "Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 125
    :try_start_a
    sget-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 126
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0
.end method

.method public schedule()V
    .registers 7

    .line 80
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    sget-boolean v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v3, :cond_39

    .line 84
    sget-object v3, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KnoxAnalytics triggered pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    if-eqz v2, :cond_d

    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_68

    if-nez v3, :cond_d

    const/4 v3, 0x0

    :goto_42
    const/4 v4, 0x3

    if-ge v3, v4, :cond_d

    .line 92
    :try_start_45
    sget-object v4, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sendKnoxAnalyticsLogs(Ljava/lang/String;IJ)V
    :try_end_5e
    .catch Ljava/lang/NullPointerException; {:try_start_45 .. :try_end_5e} :catch_5f
    .catchall {:try_start_45 .. :try_end_5e} :catchall_68

    goto :goto_63

    :catch_5f
    move-exception v4

    .line 94
    :try_start_60
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 100
    :cond_66
    monitor-exit v0

    return-void

    :catchall_68
    move-exception p0

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public final sendKnoxAnalyticsLogs(Ljava/lang/String;IJ)V
    .registers 9

    .line 104
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_MTD"

    const/4 v2, 0x1

    const-string v3, "MTD_USAGE_EVENT"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    sget-object v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->EVENT:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-string v2, "e"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "c"

    .line 107
    invoke-virtual {v0, v1, p3, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    const-string/jumbo v1, "pN"

    .line 108
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long p3, p3, v1

    if-nez p3, :cond_3b

    .line 110
    sget-object p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skip!! api="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 112
    :cond_3b
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 113
    sget-boolean p3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    const-string p4, "KA Data : "

    if-eqz p3, :cond_5d

    .line 114
    sget-object p3, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 116
    :cond_5d
    sget-object p3, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_79
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->flush(Ljava/lang/String;I)V

    :goto_7c
    return-void
.end method
