.class Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;
.super Ljava/lang/Object;
.source "ScanMatcherUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.ScanMatcher"


# instance fields
.field private mLastBssidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field final mScanPoolListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWatchingConfigKey:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastBssidList(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mLastBssidList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mListener:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/util/ScanPool;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWatchingConfigKey(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mWatchingConfigKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastBssidList(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;Ljava/util/Set;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mLastBssidList:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;-><init>(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPoolListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    return-void
.end method

.method private declared-synchronized getBestAlternativeBssidExcept(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getBssidList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0xc8

    if-eqz p1, :cond_53

    .line 80
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_53

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 85
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v4, v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 86
    iget v5, v4, Landroid/net/wifi/ScanResult;->level:I

    if-le v5, v1, :cond_17

    .line 87
    iget v0, v4, Landroid/net/wifi/ScanResult;->level:I
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_55

    move v1, v0

    move-object v0, v2

    goto :goto_17

    .line 93
    :cond_53
    monitor-exit p0

    return-object v0

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized findBssidFromScanResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 127
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 128
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->generatePBssid(Ljava/lang/String;)[B

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    if-eqz v2, :cond_15

    .line 130
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_15

    .line 133
    :cond_2c
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->generatePBssid(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 134
    iget-object p1, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_55

    monitor-exit p0

    return-object p1

    :cond_3c
    :try_start_3c
    const-string v0, "WifiProfileShare.ScanMatcher"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_55

    const/4 p1, 0x0

    .line 139
    monitor-exit p0

    return-object p1

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getConfigKeyForPassword(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    if-nez p2, :cond_1f

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1f

    const/4 p2, 0x1

    .line 151
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2b

    monitor-exit p0

    return-object p1

    :cond_1f
    const/4 p2, 0x0

    .line 153
    :try_start_20
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_2b

    monitor-exit p0

    return-object p1

    :cond_28
    const/4 p1, 0x0

    .line 155
    monitor-exit p0

    return-object p1

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getConfigKeys(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getMcfDataForRequestingPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 4

    if-eqz p1, :cond_15

    if-nez p2, :cond_5

    goto :goto_15

    :cond_5
    const-string v0, ""

    .line 102
    invoke-static {p1, p2, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v0

    .line 104
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->getBestAlternativeBssidExcept(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 106
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->setRoamBssid(Ljava/lang/String;)V

    :cond_14
    return-object v0

    :cond_15
    :goto_15
    const-string p0, "WifiProfileShare.ScanMatcher"

    const-string p1, "getMcfDataForRequestingPassword - request configKey is null"

    .line 99
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method declared-synchronized getMcfDataListForSharingPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_28

    .line 114
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getBssidList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 116
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    invoke-static {v2, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    const-string p1, "WifiProfileShare.ScanMatcher"

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMcfDataList size:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 122
    monitor-exit p0

    return-object v0

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method registerBssidListChangedListener(Ljava/lang/String;Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mWatchingConfigKey:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mListener:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

    .line 49
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getBssidList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mLastBssidList:Ljava/util/Set;

    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPoolListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->registerScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    return-void
.end method

.method unregisterBssidListChangedListener()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPoolListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/ScanPool;->unregisterScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mWatchingConfigKey:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mLastBssidList:Ljava/util/Set;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mListener:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

    return-void
.end method
