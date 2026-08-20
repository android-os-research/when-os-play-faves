.class public Lcom/android/internal/os/BinderCallsStats$UidEntry;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidEntry"
.end annotation


# instance fields
.field public blacklist callCount:J

.field public blacklist cpuTimeMicros:J

.field public blacklist incrementalCallCount:J

.field private blacklist mCallStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/os/BinderCallsStats$CallStatKey;",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

.field public blacklist recordAllTransactions:Z

.field public blacklist recordedCallCount:J

.field public blacklist workSourceUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallStats(Lcom/android/internal/os/BinderCallsStats$UidEntry;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    return-object p0
.end method

.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 1681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1686
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    .line 1687
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$CallStatKey;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    .line 1682
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    .line 1683
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1752
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1753
    return v0

    .line 1756
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1757
    .local v1, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    iget v3, v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method blacklist get(ILjava/lang/Class;IZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;
    .registers 8
    .param p1, "callingUid"    # I
    .param p3, "transactionCode"    # I
    .param p4, "screenInteractive"    # Z
    .param p5, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;IZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;"
        }
    .end annotation

    .line 1693
    .local p2, "binderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/Binder;>;"
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    .line 1694
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    iput-object p2, v0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    .line 1695
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    iput p3, v0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    .line 1696
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    invoke-static {v0, p4}, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->-$$Nest$fputscreenInteractive(Lcom/android/internal/os/BinderCallsStats$CallStatKey;Z)V

    .line 1697
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    iput-object p5, v0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->packageName:Ljava/lang/String;

    .line 1698
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$CallStat;

    return-object v0
.end method

.method public blacklist getCallStatsList()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            ">;"
        }
    .end annotation

    .line 1738
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method blacklist getOrCreate(ILjava/lang/Class;IZZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;
    .registers 15
    .param p1, "callingUid"    # I
    .param p3, "transactionCode"    # I
    .param p4, "screenInteractive"    # Z
    .param p5, "maxCallStatsReached"    # Z
    .param p6, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;IZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;"
        }
    .end annotation

    .line 1703
    .local p2, "binderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/Binder;>;"
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->get(ILjava/lang/Class;IZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    .line 1706
    .local v0, "mapCallStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    if-nez v0, :cond_49

    .line 1707
    if-eqz p5, :cond_28

    .line 1708
    const/4 v2, -0x1

    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$sfgetOVERFLOW_BINDER()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "OVERFLOW"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->get(ILjava/lang/Class;IZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    .line 1710
    if-eqz v0, :cond_1f

    .line 1711
    return-object v0

    .line 1714
    :cond_1f
    const/4 p1, -0x1

    .line 1715
    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$sfgetOVERFLOW_BINDER()Ljava/lang/Class;

    move-result-object p2

    .line 1716
    const/4 p3, -0x1

    .line 1717
    const/4 p4, 0x0

    .line 1718
    const-string p6, "OVERFLOW"

    .line 1721
    :cond_28
    new-instance v7, Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BinderCallsStats$CallStat;-><init>(ILjava/lang/Class;IZLjava/lang/String;)V

    move-object v0, v7

    .line 1723
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$CallStatKey;-><init>()V

    .line 1724
    .local v1, "key":Lcom/android/internal/os/BinderCallsStats$CallStatKey;
    iput p1, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    .line 1725
    iput-object p2, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    .line 1726
    iput p3, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    .line 1727
    invoke-static {v1, p4}, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->-$$Nest$fputscreenInteractive(Lcom/android/internal/os/BinderCallsStats$CallStatKey;Z)V

    .line 1728
    iput-object p6, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->packageName:Ljava/lang/String;

    .line 1729
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    .end local v1    # "key":Lcom/android/internal/os/BinderCallsStats$CallStatKey;
    :cond_49
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1762
    iget v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidEntry{cpuTimeMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
