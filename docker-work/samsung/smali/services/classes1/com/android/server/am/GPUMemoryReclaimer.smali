.class public Lcom/android/server/am/GPUMemoryReclaimer;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;,
        Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;,
        Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;,
        Lcom/android/server/am/GPUMemoryReclaimer$Utils;,
        Lcom/android/server/am/GPUMemoryReclaimer$Dump;
    }
.end annotation


# static fields
.field public static FEATURE_ENABLED:Z = false

.field public static INSTANCE:Lcom/android/server/am/GPUMemoryReclaimer; = null

.field public static final IS_SHIP_BUILD:Z

.field public static final TAG:Ljava/lang/String; = "GMR"

.field public static __VendorPluginName:Ljava/lang/String;


# instance fields
.field public final mAMS:Lcom/android/server/am/ActivityManagerService;

.field public final mDump:Lcom/android/server/am/GPUMemoryReclaimer$Dump;

.field public final mUtils:Lcom/android/server/am/GPUMemoryReclaimer$Utils;

.field public mVendorPlugin:Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAMS(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mAMS:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUtils(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$Utils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mUtils:Lcom/android/server/am/GPUMemoryReclaimer$Utils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minit(Lcom/android/server/am/GPUMemoryReclaimer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/GPUMemoryReclaimer;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetFEATURE_ENABLED()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetIS_SHIP_BUILD()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/GPUMemoryReclaimer;->IS_SHIP_BUILD:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfput__VendorPluginName(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/server/am/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled"

    const/4 v1, 0x0

    .line 2393
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 2396
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/GPUMemoryReclaimer;->IS_SHIP_BUILD:Z

    const/4 v0, 0x0

    .line 2399
    sput-object v0, Lcom/android/server/am/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 2409
    sput-object v0, Lcom/android/server/am/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/am/GPUMemoryReclaimer;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 2425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2475
    iput-object v0, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    .line 2426
    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 2427
    new-instance p1, Lcom/android/server/am/GPUMemoryReclaimer$Dump;

    invoke-direct {p1, p0, p0, v0}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;-><init>(Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer$Dump-IA;)V

    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mDump:Lcom/android/server/am/GPUMemoryReclaimer$Dump;

    .line 2428
    new-instance p1, Lcom/android/server/am/GPUMemoryReclaimer$Utils;

    invoke-direct {p1, p0, p0, v0}, Lcom/android/server/am/GPUMemoryReclaimer$Utils;-><init>(Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer$Utils-IA;)V

    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mUtils:Lcom/android/server/am/GPUMemoryReclaimer$Utils;

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/am/GPUMemoryReclaimer;->init()V

    return-void
.end method

.method public static declared-synchronized createInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/GPUMemoryReclaimer;
    .registers 4

    const-class v0, Lcom/android/server/am/GPUMemoryReclaimer;

    monitor-enter v0

    :try_start_3
    const-string v1, "GMR"

    const-string v2, "createInstance start"

    .line 2417
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    sget-object v1, Lcom/android/server/am/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/am/GPUMemoryReclaimer;

    if-nez v1, :cond_15

    .line 2419
    new-instance v1, Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-direct {v1, p0}, Lcom/android/server/am/GPUMemoryReclaimer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v1, Lcom/android/server/am/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/am/GPUMemoryReclaimer;

    .line 2421
    :cond_15
    sget-object p0, Lcom/android/server/am/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/am/GPUMemoryReclaimer;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3

    .line 2515
    invoke-static {}, Lcom/android/server/am/GPUMemoryReclaimer;->getInstance()Lcom/android/server/am/GPUMemoryReclaimer;

    move-result-object v0

    if-nez v0, :cond_d

    const-string/jumbo p1, "gmr: not initialized"

    .line 2517
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2520
    :cond_d
    iget-object v0, v0, Lcom/android/server/am/GPUMemoryReclaimer;->mDump:Lcom/android/server/am/GPUMemoryReclaimer$Dump;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->run(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/GPUMemoryReclaimer;
    .registers 1

    .line 2412
    sget-object v0, Lcom/android/server/am/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/am/GPUMemoryReclaimer;

    return-object v0
.end method

.method public static final getVendorPluginName()Ljava/lang/String;
    .registers 2

    .line 2403
    sget-object v0, Lcom/android/server/am/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.vendor_plugin"

    const-string v1, ""

    .line 2404
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 2405
    :cond_f
    sget-object v0, Lcom/android/server/am/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final init()V
    .registers 6

    const-string v0, "GMR"

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v2, "init start"

    .line 2436
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    sget-boolean v2, Lcom/android/server/am/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    if-nez v2, :cond_13

    const-string p0, "feature disabled"

    .line 2440
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const-string v2, "feature enabled"

    .line 2443
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Configurations"

    .line 2447
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  feature enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  vendor_plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/GPUMemoryReclaimer;->getVendorPluginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    invoke-static {}, Lcom/android/server/am/GPUMemoryReclaimer;->getVendorPluginName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "kgsl"

    .line 2453
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 2454
    new-instance v3, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;

    invoke-direct {v3, p0, p0}, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;-><init>(Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer;)V

    iput-object v3, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    .line 2456
    :cond_5f
    iget-object v3, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    if-eqz v3, :cond_74

    invoke-virtual {v3}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_74

    :cond_6a
    const/4 p0, 0x1

    .line 2463
    sput-boolean p0, Lcom/android/server/am/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    const-string/jumbo p0, "init success"

    .line 2464
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 2457
    :cond_74
    :goto_74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vendor_plugin is not defined or invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2458
    iput-object v2, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    .line 2459
    sput-boolean v1, Lcom/android/server/am/GPUMemoryReclaimer;->FEATURE_ENABLED:Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8e} :catch_8f

    return-void

    :catch_8f
    move-exception p0

    .line 2466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    sput-boolean v1, Lcom/android/server/am/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    :goto_ab
    return-void
.end method

.method public onOomAdjChanged(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;)V
    .registers 10

    const-string v0, "GMR"

    .line 2479
    :try_start_2
    sget-boolean v1, Lcom/android/server/am/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    if-nez v1, :cond_c

    goto/16 :goto_98

    .line 2482
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    if-gtz v1, :cond_13

    return-void

    .line 2486
    :cond_13
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    if-eq v2, v3, :cond_b2

    .line 2487
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_99

    const-string v3, " "

    const/16 v4, 0x3e7

    const/16 v5, 0x33e

    if-lt v2, v5, :cond_5c

    .line 2488
    :try_start_29
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v2

    if-gt v2, v4, :cond_5c

    .line 2489
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-nez v2, :cond_5c

    .line 2490
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fg : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    iget-object v2, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    invoke-virtual {v2, v1}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->swapIn(I)I

    .line 2494
    :cond_5c
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v2

    const/16 v6, 0x2bc

    if-ne v2, v6, :cond_b2

    .line 2495
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-lt v2, v5, :cond_b2

    .line 2496
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p2

    if-gt p2, v4, :cond_b2

    .line 2497
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 2498
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bg : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    invoke-virtual {p0, v1}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->swapOut(I)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_97} :catch_99

    goto :goto_b2

    :cond_98
    :goto_98
    return-void

    :catch_99
    move-exception p0

    .line 2503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to handle onOomAdjChanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    :goto_b2
    return-void
.end method
