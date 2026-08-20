.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;
.super Ljava/lang/Object;
.source "SemWifiApEbf.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiApEbf"

.field private static mSoftApInterface:Ljava/lang/String; = "wlan0"


# instance fields
.field private dummyMhsMac:Ljava/lang/String;

.field private mListMac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListTrimmedMac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private pauseclients:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mLock:Ljava/lang/Object;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListMac:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListTrimmedMac:Ljava/util/List;

    const-string p1, "1234"

    .line 34
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->dummyMhsMac:Ljava/lang/String;

    .line 38
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseclients:Ljava/util/HashSet;

    return-void
.end method

.method private clearMacList()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListMac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseclients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListTrimmedMac:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 118
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private getMobileDataUsedForAllMac()[J
    .registers 10

    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListTrimmedMac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 143
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListTrimmedMac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_60

    .line 145
    :try_start_10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mSoftApInterface:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListTrimmedMac:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/net/IOemNetd;->getDataUsage(Ljava/lang/String;Ljava/util/List;)[Landroid/net/MBBStatsParcel;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_22

    :catch_1d
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_60

    .line 151
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_27
    if-ge v3, v2, :cond_60

    aget-object v5, v1, v3

    .line 152
    iget-wide v6, v5, Landroid/net/MBBStatsParcel;->totalBytes:J

    aput-wide v6, v0, v4

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mac address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListTrimmedMac:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " data used in bytes : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Landroid/net/MBBStatsParcel;->totalBytes:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SemWifiApEbf"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_60
    return-object v0
.end method

.method private getOemNetd()Lcom/android/internal/net/IOemNetd;
    .registers 5

    const-string v0, "SemWifiApEbf"

    .line 52
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    :try_start_7
    const-string v1, "netd"

    .line 56
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mNetdService:Landroid/net/INetd;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_2d

    :catch_14
    move-exception v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind service netd, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_2d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mNetdService:Landroid/net/INetd;

    if-nez v1, :cond_37

    const-string v1, "Can\'t bind service netd"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 64
    :cond_37
    :try_start_37
    invoke-interface {v1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_41} :catch_42
    .catch Landroid/os/ServiceSpecificException; {:try_start_37 .. :try_end_41} :catch_42

    goto :goto_57

    :catch_42
    move-exception v1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get OemNetd listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    return-object p0
.end method

.method private removeColon(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "[^a-zA-Z0-9]"

    const-string v0, ""

    .line 137
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removeColonFromEveryString(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->removeColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public getConnectedStaCount()I
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListMac:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 124
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getWifiApDataConsumptionByAllConnectedClients()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[J>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    new-array v1, v1, [J
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_18

    .line 184
    :try_start_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getMobileDataUsedForAllMac()[J

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b
    .catchall {:try_start_6 .. :try_end_a} :catchall_18

    goto :goto_f

    :catch_b
    move-exception v2

    .line 186
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    :goto_f
    new-instance v2, Landroid/util/Pair;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListMac:Ljava/util/List;

    invoke-direct {v2, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    :catchall_18
    move-exception p0

    .line 189
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public getWifiApDataConsumptionByClient(Ljava/lang/String;)J
    .registers 9

    .line 162
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->removeColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListTrimmedMac:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-wide/16 v2, -0x1

    if-gez v1, :cond_13

    .line 166
    monitor-exit v0

    return-wide v2

    .line 168
    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getMobileDataUsedForAllMac()[J

    move-result-object v4

    .line 169
    array-length v5, v4

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListTrimmedMac:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_47

    const-string p1, "SemWifiApEbf"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "some or All of the dataConsumed is missing, dataConsumed is not proper: dataConsumed.length = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", connMacList.size()="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListMac:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit v0

    return-wide v2

    :cond_47
    const-string p0, "SemWifiApEbf"

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApDataConsumptionByClient(): cmd = data is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v4, v1

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",mac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    aget-wide p0, v4, v1

    monitor-exit v0

    return-wide p0

    :catchall_6f
    move-exception p0

    .line 176
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public pauseDevice(ZLjava/lang/String;J)I
    .registers 12

    const/4 v0, -0x1

    .line 222
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mSoftApInterface:Ljava/lang/String;

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/net/IOemNetd;->pauseDevice(Ljava/lang/String;ZLjava/lang/String;J)I

    move-result v0

    const-string p0, "SemWifiApEbf"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDevice : enalbed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mac="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", totalDataToTarget = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    .line 226
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3b
    return v0
.end method

.method public pauseInternet(Ljava/lang/String;J)V
    .registers 5

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseclients:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 198
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->removeColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseDevice(ZLjava/lang/String;J)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    .line 202
    :goto_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pauseInternet:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApEbf"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pauseOverAllMhs(J)V
    .registers 5

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseclients:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->dummyMhsMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 235
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->dummyMhsMac:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseDevice(ZLjava/lang/String;J)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    .line 239
    :goto_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pauseInternet for Over All MHS:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApEbf"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resumeInternet(Ljava/lang/String;)V
    .registers 6

    const/4 v0, -0x1

    .line 209
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseclients:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 210
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseclients:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->removeColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseDevice(ZLjava/lang/String;J)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1b

    move v0, p0

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    :cond_1f
    :goto_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "resumeInternet:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApEbf"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resumeOverAllMhs()V
    .registers 6

    const/4 v0, -0x1

    .line 245
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseclients:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->dummyMhsMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 246
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseclients:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->dummyMhsMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 247
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->dummyMhsMac:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseDevice(ZLjava/lang/String;J)I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    move v0, p0

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    :cond_21
    :goto_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeInternet for over all mhs:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApEbf"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHotspotState(Z)V
    .registers 5

    const-string v0, "SemWifiApEbf"

    if-eqz p1, :cond_5a

    .line 77
    :try_start_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mSoftApInterface:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOn(Ljava/lang/String;)I

    move-result p1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable, MHS command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_80

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mSoftApInterface:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOff(Ljava/lang/String;)I

    move-result p1

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mSoftApInterface:Ljava/lang/String;

    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOn(Ljava/lang/String;)I

    move-result p0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable, MHS command again : offResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", on Result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_54} :catch_55

    goto :goto_80

    :catch_55
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_80

    .line 89
    :cond_5a
    :try_start_5a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mSoftApInterface:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOff(Ljava/lang/String;)I

    move-result p1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disable, MHS command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_78} :catch_79

    goto :goto_7d

    :catch_79
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :goto_7d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->clearMacList()V

    :cond_80
    :goto_80
    return-void
.end method

.method public staConnected(Ljava/lang/String;)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListMac:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListMac:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->removeColonFromEveryString(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListTrimmedMac:Ljava/util/List;

    .line 104
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public staDisConnected(Ljava/lang/String;)V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListMac:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListMac:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->removeColonFromEveryString(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->mListTrimmedMac:Ljava/util/List;

    .line 110
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method
