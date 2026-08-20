.class public Lcom/android/server/chimera/SwapManager;
.super Lcom/android/server/chimera/PolicyHandler;
.source "SwapManager.java"

# interfaces
.implements Lcom/android/server/chimera/SystemEventListener$AppLaunchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/SwapManager$SwapHandler;
    }
.end annotation


# static fields
.field public static final CHIMERA_SWAP_PROCESS_MSG:I = 0x1

.field public static INSTANCE:Lcom/android/server/chimera/SwapManager; = null

.field public static TAG:Ljava/lang/String; = "SwapManager"

.field public static mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# instance fields
.field public mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public mAppToSwap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public final mChimeraSwapThread:Lcom/android/server/ServiceThread;

.field public mIsAppLaunch:Z

.field public mKillMemTarget:J

.field public mSwapActionCnt:J

.field public mSwapHandler:Landroid/os/Handler;

.field public mSwapMemTarget:J

.field public mSwapNotEnoughCnt:J

.field public mSwapNotEnoughKillCnt:J

.field public final mSwapNotEnoughListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$SwapNotEnoughListener;",
            ">;"
        }
    .end annotation
.end field

.field public mSwappedMemMb:J

.field public mSwappedProcCnt:J


# direct methods
.method public static synthetic $r8$lambda$ddpPmKKnxGtVWvJwGMBCUZBbJN4(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/chimera/SwapManager;->lambda$swapApp$0(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChimeraSwapThread(Lcom/android/server/chimera/SwapManager;)Lcom/android/server/ServiceThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SwapManager;->mChimeraSwapThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsAppLaunch(Lcom/android/server/chimera/SwapManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/chimera/SwapManager;->mIsAppLaunch:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSwapActionCnt(Lcom/android/server/chimera/SwapManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwapActionCnt:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSwapMemTarget(Lcom/android/server/chimera/SwapManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwapMemTarget:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSwappedMemMb(Lcom/android/server/chimera/SwapManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwappedMemMb:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSwappedProcCnt(Lcom/android/server/chimera/SwapManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwappedProcCnt:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputmSwapActionCnt(Lcom/android/server/chimera/SwapManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/chimera/SwapManager;->mSwapActionCnt:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSwappedMemMb(Lcom/android/server/chimera/SwapManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/chimera/SwapManager;->mSwappedMemMb:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSwappedProcCnt(Lcom/android/server/chimera/SwapManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/chimera/SwapManager;->mSwappedProcCnt:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/chimera/SwapManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V
    .registers 7

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/chimera/PolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    .line 36
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughListeners:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwapMemTarget:J

    .line 42
    iput-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mKillMemTarget:J

    const/4 p4, 0x0

    .line 43
    iput-boolean p4, p0, Lcom/android/server/chimera/SwapManager;->mIsAppLaunch:Z

    .line 46
    iput-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwapActionCnt:J

    .line 47
    iput-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwappedProcCnt:J

    .line 48
    iput-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwappedMemMb:J

    .line 49
    iput-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughCnt:J

    .line 50
    iput-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughKillCnt:J

    .line 55
    sput-object p3, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 56
    iput-object p1, p0, Lcom/android/server/chimera/SwapManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 57
    iput-object p2, p0, Lcom/android/server/chimera/SwapManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 59
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string p2, "ChimeraSwapThread"

    const/16 p3, 0xa

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/chimera/SwapManager;->mChimeraSwapThread:Lcom/android/server/ServiceThread;

    .line 61
    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p2

    if-nez p2, :cond_38

    .line 62
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 65
    :cond_38
    new-instance p1, Lcom/android/server/chimera/SwapManager$SwapHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/chimera/SwapManager$SwapHandler;-><init>(Lcom/android/server/chimera/SwapManager;Lcom/android/server/chimera/SwapManager$SwapHandler-IA;)V

    iput-object p1, p0, Lcom/android/server/chimera/SwapManager;->mSwapHandler:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)Lcom/android/server/chimera/SwapManager;
    .registers 6

    const-class v0, Lcom/android/server/chimera/SwapManager;

    monitor-enter v0

    .line 69
    :try_start_3
    sget-object v1, Lcom/android/server/chimera/SwapManager;->INSTANCE:Lcom/android/server/chimera/SwapManager;

    if-nez v1, :cond_e

    .line 70
    new-instance v1, Lcom/android/server/chimera/SwapManager;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/chimera/SwapManager;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    sput-object v1, Lcom/android/server/chimera/SwapManager;->INSTANCE:Lcom/android/server/chimera/SwapManager;

    .line 72
    :cond_e
    sget-object p0, Lcom/android/server/chimera/SwapManager;->INSTANCE:Lcom/android/server/chimera/SwapManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic lambda$swapApp$0(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I
    .registers 2

    .line 111
    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addSwapNotEnoughListener(Lcom/android/server/chimera/SystemEventListener$SwapNotEnoughListener;)V
    .registers 2

    .line 306
    iget-object p0, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_26

    .line 77
    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_26

    :cond_6
    const/4 v0, 0x0

    .line 81
    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/SwapManager;->dumpSwapInfo(Ljava/io/PrintWriter;)V

    goto :goto_26

    .line 83
    :cond_15
    array-length v1, p2

    if-lez v1, :cond_26

    .line 84
    aget-object p2, p2, v0

    const-string/jumbo v0, "info"

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/SwapManager;->dumpSwapInfo(Ljava/io/PrintWriter;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public final dumpSwapInfo(Ljava/io/PrintWriter;)V
    .registers 5

    .line 92
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "[Swap Strategy]"

    .line 93
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swap Target mem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/SwapManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v1}, Lcom/android/server/chimera/ChimeraStrategy;->getSwapMemTarget()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swap action count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/SwapManager;->mSwapActionCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swap not enough count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughKillCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swapped process count(PPR): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/SwapManager;->mSwappedProcCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swapped memory(Mb): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/SwapManager;->mSwappedMemMb:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .registers 10

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_11

    .line 148
    sget-object p0, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    sget-object p1, Lcom/android/server/chimera/SwapManager;->TAG:Ljava/lang/String;

    const-string p2, "executePolicy() - prepareForTrigger fails"

    invoke-interface {p0, p1, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 152
    :cond_11
    sget-object p2, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {p2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    move-result-wide v1

    .line 154
    sget-object p2, Lcom/android/server/chimera/SwapManager$1;->$SwitchMap$com$android$server$chimera$ChimeraCommonUtil$TriggerSource:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p2, p2, v3

    const/4 v3, 0x1

    if-eq p2, v3, :cond_24

    goto/16 :goto_a2

    .line 156
    :cond_24
    iput-boolean v0, p0, Lcom/android/server/chimera/SwapManager;->mIsAppLaunch:Z

    .line 159
    iget-object p2, p0, Lcom/android/server/chimera/SwapManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {p2}, Lcom/android/server/chimera/ChimeraStrategy;->getSwapMemTarget()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/chimera/SwapManager;->mSwapMemTarget:J

    .line 160
    iget-object p2, p0, Lcom/android/server/chimera/SwapManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {p2, v1, v2}, Lcom/android/server/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/chimera/SwapManager;->mKillMemTarget:J

    sub-long/2addr v3, v1

    .line 162
    iget-wide v5, p0, Lcom/android/server/chimera/SwapManager;->mSwapMemTarget:J

    cmp-long p2, v1, v5

    if-lez p2, :cond_65

    .line 163
    sget-object p1, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    sget-object p2, Lcom/android/server/chimera/SwapManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "available memory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", swap memory target: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/SwapManager;->mSwapMemTarget:J

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", quit chimera SwapManager!"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_65
    const-string p2, "SwapFree"

    .line 168
    invoke-static {p2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getMemInfoByName(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long p2, v1, v3

    if-gez p2, :cond_97

    .line 170
    sget-object p1, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    sget-object p2, Lcom/android/server/chimera/SwapManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerSwapSpaceNotEnough: swapFree:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " relTarget:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-wide p1, p0, Lcom/android/server/chimera/SwapManager;->mKillMemTarget:J

    sub-long/2addr p1, v1

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/SwapManager;->triggerSwapSpaceNotEnough(J)V

    goto :goto_a2

    .line 175
    :cond_97
    iget-object p2, p0, Lcom/android/server/chimera/SwapManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-virtual {p2, p1}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToSwap(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/SwapManager;->mAppToSwap:Ljava/util/List;

    .line 176
    invoke-virtual {p0}, Lcom/android/server/chimera/SwapManager;->swapApp()V

    :goto_a2
    return v0
.end method

.method public onAppLaunched(Ljava/lang/String;)V
    .registers 2

    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/android/server/chimera/SwapManager;->mIsAppLaunch:Z

    return-void
.end method

.method public performSwap(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 192
    iget-object p0, p0, Lcom/android/server/chimera/SwapManager;->mSwapHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeSwapNotEnoughListener(Lcom/android/server/chimera/SystemEventListener$SwapNotEnoughListener;)V
    .registers 2

    .line 310
    iget-object p0, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public swapApp()V
    .registers 16

    .line 102
    iget-object v0, p0, Lcom/android/server/chimera/SwapManager;->mAppToSwap:Ljava/util/List;

    if-eqz v0, :cond_a4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_a4

    :cond_c
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/android/server/chimera/SwapManager;->mAppToSwap:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->calcAppScores(Ljava/util/List;)V

    .line 111
    iget-object v1, p0, Lcom/android/server/chimera/SwapManager;->mAppToSwap:Ljava/util/List;

    new-instance v2, Lcom/android/server/chimera/SwapManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/chimera/SwapManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v2, p0, Lcom/android/server/chimera/SwapManager;->mAppToSwap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 116
    iget v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_42

    .line 117
    sget-object v3, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    sget-object v4, Lcom/android/server/chimera/SwapManager;->TAG:Ljava/lang/String;

    const-string v5, "Invalid app group id"

    invoke-interface {v3, v4, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 121
    :cond_42
    iget v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 122
    sget-object v5, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v6, v3, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lcom/android/server/chimera/SystemRepository;->hasPkgIcon(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_53

    goto :goto_27

    .line 126
    :cond_53
    iget-object v3, v3, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 127
    new-instance v14, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    iget-object v7, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget-wide v8, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    iget-wide v10, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    iget-wide v12, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;-><init>(ILjava/lang/String;JJJ)V

    .line 132
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_7b
    if-lez v0, :cond_9a

    .line 138
    sget-object v2, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    sget-object v3, Lcom/android/server/chimera/SwapManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start swapApp, swapCnt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/SwapManager;->performSwap(Ljava/util/List;)V

    goto :goto_a4

    .line 141
    :cond_9a
    sget-object p0, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    sget-object v0, Lcom/android/server/chimera/SwapManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no app to swap, quit!"

    invoke-interface {p0, v0, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public triggerSwapSpaceNotEnough(J)V
    .registers 9

    .line 314
    iget-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughCnt:J

    .line 315
    iget-object v0, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/SystemEventListener$SwapNotEnoughListener;

    .line 316
    iget-wide v2, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughKillCnt:J

    invoke-interface {v1, p1, p2}, Lcom/android/server/chimera/SystemEventListener$SwapNotEnoughListener;->onSwapNotEnough(J)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/chimera/SwapManager;->mSwapNotEnoughKillCnt:J

    goto :goto_d

    :cond_24
    return-void
.end method
