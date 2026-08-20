.class public final Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;
.super Landroid/os/Handler;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PerProcessNandswap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NandswapMsgHandler"
.end annotation


# instance fields
.field public final LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

.field public final RECENT_ENTRY_PROCESS_COUNT:I

.field public final TAG:Ljava/lang/String;

.field public recentEntryProcessNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final self:Lcom/android/server/am/PerProcessNandswap;

.field public final synthetic this$0:Lcom/android/server/am/PerProcessNandswap;


# direct methods
.method public static bridge synthetic -$$Nest$mevictRequest(Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->evictRequest(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap;)V
    .registers 3

    .line 1575
    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    .line 1576
    invoke-static {p1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmMsgThread(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/ServiceThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p1, "com.sec.android.app.launcher"

    .line 1569
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

    .line 1572
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    const/4 p1, 0x2

    .line 1573
    iput p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->RECENT_ENTRY_PROCESS_COUNT:I

    .line 1577
    const-class p1, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 1578
    iput-object p2, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->self:Lcom/android/server/am/PerProcessNandswap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;-><init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap;)V

    return-void
.end method


# virtual methods
.method public final acceptPPRRequest(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    const/4 v0, 0x1

    .line 1946
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/am/ProcessRecord;I)V

    .line 1948
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapSlotManager(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->addApp(Ljava/lang/String;I)V

    return-void
.end method

.method public final changePPRState(Lcom/android/server/am/ProcessRecord;I)V
    .registers 5

    .line 1924
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1925
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePPRState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ppnState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_32
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->ppnStateLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1930
    :try_start_35
    iput p2, p1, Lcom/android/server/am/ProcessRecord;->ppnState:I

    .line 1931
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public final checkCanDoPPRForCachedApp(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    .line 1739
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    .line 1740
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/16 v0, 0x352

    if-lt p0, v0, :cond_17

    .line 1741
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->ppnState:I

    if-nez p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v1
.end method

.method public final checkDHAHeavyProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 2

    .line 1763
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1764
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/DynamicHiddenApp;->IsForceKillHeavyProcess(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final checkPPRAppCondition(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nandswap check_ppr_app: pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1897
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    .line 1899
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->checkCanDoPPRForCachedApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4c

    .line 1900
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 1901
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " deny reason: no adj target or empty app "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return v3

    .line 1903
    :cond_4c
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->checkDHAHeavyProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1904
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 1905
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " deny reason: DHA heavy process"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return v3

    .line 1907
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->isExceptionApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 1908
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_91

    .line 1909
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " deny reason: exception app"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    return v3

    :cond_92
    const/4 p0, 0x1

    return p0
.end method

.method public final checkPPRCondition()Z
    .registers 7

    .line 1856
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetWRITEBACK_ENABLED(Lcom/android/server/am/PerProcessNandswap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_db

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-gtz v0, :cond_11

    goto/16 :goto_db

    .line 1860
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x14

    cmp-long v0, v2, v4

    if-ltz v0, :cond_49

    .line 1861
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1862
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nandswap check_ppr:  deny reason: pending app count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return v1

    .line 1864
    :cond_49
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_7f

    .line 1865
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1866
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nandswap check_ppr:  deny reason: delayed app count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1867
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1866
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    return v1

    .line 1869
    :cond_7f
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackQuotaAvailable()Z

    move-result v0

    if-nez v0, :cond_93

    .line 1870
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1871
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    const-string v0, "Nandswap check_ppr:  deny reason: quota"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return v1

    .line 1875
    :cond_93
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1882
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1883
    iget-object v2, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v2, v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mgetSwapFreePercentage(Lcom/android/server/am/PerProcessNandswap;Lcom/android/internal/util/MemInfoReader;)I

    move-result v2

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getMinSwapFreePercentage()I

    move-result v3

    if-ge v2, v3, :cond_d9

    .line 1884
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 1885
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nandswap check_ppr:  deny reason: swap space not enough - free "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " KB over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " KB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1885
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    return v1

    :cond_d9
    const/4 p0, 0x1

    return p0

    .line 1857
    :cond_db
    :goto_db
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1858
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    const-string v0, "Nandswap check_ppr:  deny reason: disabled"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    return v1
.end method

.method public final checkTimeoutPPRForCachedApp(Lcom/android/server/am/ProcessRecord;)Z
    .registers 7

    .line 1750
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isForcedPrefetchEnabled()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    .line 1756
    :cond_8
    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->lastNandswapTime:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_11

    return v0

    .line 1758
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1759
    iget-wide p0, p1, Lcom/android/server/am/ProcessRecord;->lastNandswapTime:J

    sub-long/2addr v1, p0

    const-wide/32 p0, 0xea60

    cmp-long p0, v1, p0

    if-lez p0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public final denyPPRRequest(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    const/4 v0, 0x0

    .line 1938
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public final evictRequest(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 1959
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evictRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapSlotManager(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    const-string v3, "evict"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->removeApp(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 1962
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1584
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetWRITEBACK_ENABLED(Lcom/android/server/am/PerProcessNandswap;)Z

    move-result v0

    if-eqz v0, :cond_2ae

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-gtz v0, :cond_10

    goto/16 :goto_2ae

    .line 1587
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_2b4

    .line 1730
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    goto/16 :goto_297

    .line 1590
    :pswitch_1b
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    .line 1593
    :cond_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    if-nez p1, :cond_29

    return-void

    .line 1597
    :cond_29
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1598
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try_to_nandswap_by_bg_event_msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_54
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapByBgEvent(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_2b3

    .line 1605
    :pswitch_59
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isPsiEnabled()Z

    move-result v0

    if-nez v0, :cond_60

    return-void

    .line 1608
    :cond_60
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1609
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1610
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try_to_nandswap_by_psi_event_msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_7f
    invoke-virtual {p0}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapByPsiEvent()V

    goto/16 :goto_2b3

    .line 1685
    :pswitch_84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1689
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_8c
    if-ge v4, v3, :cond_9b

    aget-object v5, v0, v4

    .line 1690
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    move v1, v2

    goto :goto_9b

    :cond_98
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    :cond_9b
    :goto_9b
    if-nez v1, :cond_ba

    .line 1696
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1697
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_entry_msg: reject launcher app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    return-void

    :cond_ba
    move v0, v2

    .line 1703
    :goto_bb
    iget-object v3, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_db

    .line 1704
    iget-object v3, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1705
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 1707
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v2

    goto :goto_db

    :cond_d8
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 1712
    :cond_db
    :goto_db
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_ff

    .line 1714
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 1715
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_entry_msg: reject recent app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fe
    return-void

    .line 1719
    :cond_ff
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_10d

    .line 1720
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1722
    :cond_10d
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1723
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_entry_msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_129
    iget-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapSlotManager(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->decreaseLifetimeByAppEntry(Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;)V

    goto/16 :goto_2b3

    .line 1673
    :pswitch_134
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 1674
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1675
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    .line 1677
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_162

    .line 1678
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_died_msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_162
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapSlotManager(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    move-result-object p0

    const-string v1, "died"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->removeApp(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2b3

    .line 1651
    :pswitch_16f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 1652
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1653
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    .line 1654
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p1

    .line 1656
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1ab

    .line 1657
    iget-object v3, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app_reentry_msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " adj:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_1ab
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isPrefetchActionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1cb

    .line 1661
    iget-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "madvise_prefetch for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-static {v1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$smprefetchProcess(I)V

    .line 1664
    :cond_1cb
    iget-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p1, v0, v1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mgetProcessRecord(Lcom/android/server/am/PerProcessNandswap;Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_2b3

    .line 1665
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b3

    .line 1666
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/am/ProcessRecord;I)V

    .line 1667
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapSlotManager(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    const-string/jumbo v1, "reentry"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->removeApp(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2b3

    .line 1628
    :pswitch_1f2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1629
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1630
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1631
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1632
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 1634
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_234

    .line 1635
    iget-object v4, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "change_ppr_state_msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ppnState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_234
    if-ne p1, v1, :cond_241

    .line 1640
    iget-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapSlotManager(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    move-result-object p1

    const-string v1, "action_remove_slot"

    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->removeApp(Ljava/lang/String;ILjava/lang/String;)V

    .line 1643
    :cond_241
    iget-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p1, v3, v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mgetProcessRecord(Lcom/android/server/am/PerProcessNandswap;Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_2b3

    .line 1644
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b3

    .line 1645
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/am/ProcessRecord;I)V

    goto :goto_2b3

    .line 1617
    :pswitch_255
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 1618
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try_to_ppr_msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingTryToPPRProcessesCountLock(Lcom/android/server/am/PerProcessNandswap;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_285
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_285} :catch_2af

    .line 1621
    :try_start_285
    iget-object v2, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v2}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingTryToPPRProcessesCount(Lcom/android/server/am/PerProcessNandswap;)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fputmPendingTryToPPRProcessesCount(Lcom/android/server/am/PerProcessNandswap;I)V

    .line 1622
    monitor-exit v0
    :try_end_290
    .catchall {:try_start_285 .. :try_end_290} :catchall_294

    .line 1623
    :try_start_290
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapProcess(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_293
    .catch Ljava/lang/Exception; {:try_start_290 .. :try_end_293} :catch_2af

    goto :goto_2b3

    :catchall_294
    move-exception p0

    .line 1622
    :try_start_295
    monitor-exit v0
    :try_end_296
    .catchall {:try_start_295 .. :try_end_296} :catchall_294

    :try_start_296
    throw p0

    .line 1730
    :goto_297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ad
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_2ad} :catch_2af

    goto :goto_2b3

    :cond_2ae
    :goto_2ae
    return-void

    :catch_2af
    move-exception p0

    .line 1734
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b3
    :goto_2b3
    return-void

    :pswitch_data_2b4
    .packed-switch 0x1
        :pswitch_255
        :pswitch_1f2
        :pswitch_16f
        :pswitch_134
        :pswitch_84
        :pswitch_59
        :pswitch_1b
    .end packed-switch
.end method

.method public final isExceptionApp(Lcom/android/server/am/ProcessRecord;)Z
    .registers 7

    .line 1769
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$sfgetNANDSWAP_EXCEPTION_PKGNAMES()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    .line 1770
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x1

    goto :goto_18

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    :goto_18
    return v1
.end method

.method public final startNandswapProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 1917
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1918
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_26

    .line 1920
    iget-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapHandler(Lcom/android/server/am/PerProcessNandswap;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapHandler(Lcom/android/server/am/PerProcessNandswap;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_26
    move-exception p0

    .line 1919
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final tryToNandswapByBgEvent(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 1780
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->checkCanDoPPRForCachedApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1782
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->checkTimeoutPPRForCachedApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 1784
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1785
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1786
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "try_to_nandswap_by_bg_event not accepted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p0

    .line 1789
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_44
    :goto_44
    return-void
.end method

.method public final tryToNandswapByPsiEvent()V
    .registers 8

    .line 1797
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmProcLock(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_52

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->checkPPRCondition()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1799
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_4c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1801
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->self:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmAm(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 1803
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_29
    if-ge v3, v2, :cond_47

    if-lez v4, :cond_47

    .line 1805
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_44

    .line 1806
    invoke-virtual {p0, v5}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->checkCanDoPPRForCachedApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    if-nez v6, :cond_3c

    goto :goto_44

    .line 1808
    :cond_3c
    invoke-virtual {p0, v5}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_44

    add-int/lit8 v4, v4, -0x1

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1814
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_15 .. :try_end_48} :catchall_4c

    :try_start_48
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_52

    goto :goto_56

    :catchall_4c
    move-exception p0

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_52

    :catch_52
    move-exception p0

    .line 1816
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_56
    return-void
.end method

.method public final tryToNandswapProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nandswap check_ppr (pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1823
    invoke-virtual {p0}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->checkPPRCondition()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2f

    .line 1826
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->denyPPRRequest(Lcom/android/server/am/ProcessRecord;)V

    return v2

    .line 1828
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->checkPPRAppCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1831
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->denyPPRRequest(Lcom/android/server/am/ProcessRecord;)V

    return v2

    .line 1833
    :cond_39
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapSlotManager(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->isFull()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1836
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1837
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " deny by slot full"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_61
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->denyPPRRequest(Lcom/android/server/am/ProcessRecord;)V

    return v2

    .line 1844
    :cond_65
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1845
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accept"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_81
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->acceptPPRRequest(Lcom/android/server/am/ProcessRecord;)V

    .line 1848
    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->startNandswapProcess(Lcom/android/server/am/ProcessRecord;)V

    const/4 p0, 0x1

    return p0
.end method
