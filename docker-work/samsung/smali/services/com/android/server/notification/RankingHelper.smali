.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RankingHelper"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field public final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field public final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field public final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/RankingConfig;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V
    .registers 12

    const-string v0, "."

    const-string v1, "RankingHelper"

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v2, Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-direct {v2}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 39
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 47
    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 49
    new-instance p2, Lcom/android/server/notification/NotificationComparator;

    invoke-direct {p2, p1}, Lcom/android/server/notification/NotificationComparator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    .line 51
    array-length p1, p6

    .line 52
    new-array p2, p1, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    const/4 p2, 0x0

    :goto_26
    if-ge p2, p1, :cond_9d

    .line 55
    :try_start_28
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    aget-object v3, p6, p2

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 58
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p5}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    .line 59
    invoke-interface {v2, p3}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 60
    invoke-interface {v2, p4}, Lcom/android/server/notification/NotificationSignalExtractor;->setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V

    .line 61
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v2, v3, p2
    :try_end_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_49} :catch_80
    .catch Ljava/lang/InstantiationException; {:try_start_28 .. :try_end_49} :catch_65
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_49} :catch_4a

    goto :goto_9a

    :catch_4a
    move-exception v2

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem accessing extractor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p6, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9a

    :catch_65
    move-exception v2

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t instantiate extractor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p6, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9a

    :catch_80
    move-exception v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find extractor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p6, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9a
    add-int/lit8 p2, p2, 0x1

    goto :goto_26

    :cond_9d
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7

    .line 179
    iget-object p2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_1d

    const-wide v1, 0x20900000001L

    .line 181
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v3, v3, v0

    .line 182
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6

    .line 166
    iget-object p3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length p3, p3

    .line 167
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSignalExtractors.length = "

    .line 168
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p3, :cond_2c

    .line 171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    .line 172
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2c
    return-void
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .registers 7

    .line 85
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_21

    .line 87
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    .line 89
    :try_start_a
    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 91
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v3, v2}, Lcom/android/server/notification/RankingHandler;->requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_1e

    :catchall_16
    move-exception v2

    const-string v3, "RankingHelper"

    const-string v4, "NotificationSignalExtractor failed."

    .line 94
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_21
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    .line 76
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return-object v2

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    .line 161
    iget-object p0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    return p0
.end method

.method public sort(Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_15

    .line 103
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 107
    :cond_15
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1f
    if-ge v3, v0, :cond_43

    .line 112
    :try_start_21
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 113
    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    .line 114
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    .line 115
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-nez v6, :cond_3d

    .line 117
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :catchall_40
    move-exception p0

    goto/16 :goto_ef

    :cond_43
    move v3, v2

    :goto_44
    if-ge v3, v0, :cond_e3

    .line 123
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 124
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 125
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_66

    const-string/jumbo v6, "nsk"

    goto :goto_83

    :cond_66
    const-string v7, ""

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    const-string v6, "esk"

    goto :goto_83

    .line 138
    :cond_71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gsk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    :goto_83
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    const-string v8, "crtcl=0x%04x:intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    .line 144
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 145
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v10

    const/16 v11, 0x30

    const/16 v12, 0x31

    const/4 v13, 0x1

    if-eqz v10, :cond_ad

    .line 146
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v10

    if-le v10, v13, :cond_ad

    move v10, v11

    goto :goto_ae

    :cond_ad
    move v10, v12

    .line 145
    :goto_ae
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x2

    .line 148
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v10

    const/4 v5, 0x3

    if-eqz v7, :cond_c3

    goto :goto_c4

    :cond_c3
    move v11, v12

    .line 149
    :goto_c4
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v9, v5

    const/4 v5, 0x4

    aput-object v6, v9, v5

    const/4 v5, 0x5

    .line 151
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    .line 143
    invoke-static {v8, v9}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_44

    .line 153
    :cond_e3
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 154
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_21 .. :try_end_e9} :catchall_40

    .line 157
    iget-object p0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    .line 154
    :goto_ef
    :try_start_ef
    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_40

    throw p0
.end method
