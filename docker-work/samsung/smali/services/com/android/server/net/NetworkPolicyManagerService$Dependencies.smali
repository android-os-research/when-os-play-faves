.class public Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mContext:Landroid/content/Context;

    .line 905
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 p0, 0x0

    .line 911
    invoke-virtual {p1, p0}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    return-void
.end method


# virtual methods
.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 15

    const-wide/32 v0, 0x200000

    const-string v2, "getNetworkTotalBytes"

    .line 915
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 917
    :try_start_8
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 918
    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    .line 919
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide p3
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_19} :catch_20
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    add-long/2addr p1, p3

    .line 924
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    :catchall_1e
    move-exception p0

    goto :goto_3d

    :catch_20
    move-exception p0

    :try_start_21
    const-string p1, "NetworkPolicy"

    .line 921
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read network stats: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_1e

    const-wide/16 p0, 0x0

    .line 924
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p0

    :goto_3d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 925
    throw p0
.end method

.method public getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "JJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    const-string v2, "getNetworkUidBytes"

    .line 931
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 932
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 934
    :try_start_d
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0

    .line 935
    :goto_16
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 936
    new-instance p1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 937
    invoke-virtual {p0, p1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 938
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_27} :catch_2e
    .catchall {:try_start_d .. :try_end_27} :catchall_2c

    goto :goto_16

    .line 943
    :cond_28
    :goto_28
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_46

    :catchall_2c
    move-exception p0

    goto :goto_47

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "NetworkPolicy"

    .line 941
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read network stats: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_2c

    goto :goto_28

    :goto_46
    return-object v2

    .line 943
    :goto_47
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 944
    throw p0
.end method
