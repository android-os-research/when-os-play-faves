.class public final Lcom/android/server/display/DisplayManagerService$DexEmulator;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DexEmulator"
.end annotation


# static fields
.field public static final CMD_DUAL_OVERLAY:Ljava/lang/String; = "dual-overlay"

.field public static final CMD_DUAL_SWITCH:Ljava/lang/String; = "dual-switch"

.field public static final OVERLAY_DISPLAY_DEFAULT:Ljava/lang/String; = "dex#1080x2220/320#2"

.field public static final OVERLAY_DISPLAY_DEX:Ljava/lang/String; = "dex#1920x1080/320#0"


# instance fields
.field public mDualOverlayEnabled:Z

.field public mDualSwitchEnabled:Z

.field public mSystemReady:Z

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public static synthetic $r8$lambda$Hgd1uAgjkf9pdRXk-fDqkUPPKS4(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->lambda$updateDualOverlayStateLocked$1(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KzC4-EdYdXUK_zZzMzC0WpQ4sAY(Lcom/android/server/display/DisplayManagerService$DexEmulator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->lambda$onSystemReadyLocked$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ivsM5LDka39ytlgvvacolyRd0DU(Lcom/android/server/display/DisplayManagerService$DexEmulator;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->lambda$dumpInternal$2(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDualSwitchEnabled(Lcom/android/server/display/DisplayManagerService$DexEmulator;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/display/DisplayManagerService$DexEmulator;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monLogicalDisplayAddedLocked(Lcom/android/server/display/DisplayManagerService$DexEmulator;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->onLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemReadyLocked(Lcom/android/server/display/DisplayManagerService$DexEmulator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->onSystemReadyLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 6261
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 6267
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    .line 6268
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    .line 6269
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$DexEmulator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method

.method private synthetic lambda$dumpInternal$2(Ljava/lang/String;)V
    .registers 3

    .line 6373
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 6374
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$onSystemReadyLocked$0()V
    .registers 2

    .line 6274
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 6275
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->initDualOverlayStateLocked()V

    .line 6276
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static synthetic lambda$updateDualOverlayStateLocked$1(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "overlay_display_devices"

    .line 6339
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_82

    .line 6350
    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_9

    goto/16 :goto_82

    .line 6353
    :cond_9
    aget-object p2, p2, v0

    const-string v1, "dual-switch"

    .line 6354
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "dual-overlay"

    .line 6355
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v1, :cond_1d

    if-eqz v3, :cond_1c

    goto :goto_1d

    :cond_1c
    return v0

    .line 6357
    :cond_1d
    :goto_1d
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v4

    monitor-enter v4

    .line 6358
    :try_start_24
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayDeviceRepo(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayDeviceRepository;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDeviceRepository;->getDexDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    if-nez v5, :cond_46

    .line 6359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[cmd desktopmode on] before enable "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6360
    monitor-exit v4

    return v2

    :cond_46
    if-eqz v1, :cond_5c

    .line 6363
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    if-nez p1, :cond_4e

    move p1, v2

    goto :goto_4f

    :cond_4e
    move p1, v0

    :goto_4f
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    .line 6364
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualSwitchStateLocked()V

    .line 6365
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-eqz p1, :cond_6a

    .line 6366
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    goto :goto_6a

    :cond_5c
    if-eqz v3, :cond_6a

    .line 6369
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-nez p1, :cond_64

    move p1, v2

    goto :goto_65

    :cond_64
    move p1, v0

    :goto_65
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    .line 6370
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    .line 6372
    :cond_6a
    :goto_6a
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mscheduleTraversalLocked(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 6373
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmUiHandler(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayManagerService$DexEmulator;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6375
    monitor-exit v4

    return v2

    :catchall_7f
    move-exception p0

    .line 6376
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_24 .. :try_end_81} :catchall_7f

    throw p0

    :cond_82
    :goto_82
    return v0
.end method

.method public final hasDualOverlaySettingsLocked()Z
    .registers 3

    .line 6318
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 6321
    :cond_6
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "overlay_display_devices"

    .line 6322
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dex#1080x2220/320#2"

    .line 6323
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "dex#1920x1080/320#0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method public final initDualOverlayStateLocked()V
    .registers 3

    .line 6327
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->hasDualOverlaySettingsLocked()Z

    move-result v1

    if-eq v0, v1, :cond_b

    .line 6328
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    :cond_b
    return-void
.end method

.method public final isExternalLogicalDisplayForDexLocked(Landroid/view/DisplayInfo;)Z
    .registers 3

    .line 6312
    iget p0, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    iget p0, p1, Landroid/view/DisplayInfo;->flags:I

    const/high16 p1, 0x8000000

    and-int/2addr p1, p0

    if-nez p1, :cond_14

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public final needToConfigureDefaultDisplayLocked(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .registers 3

    .line 6297
    iget p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1b

    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    if-eqz p1, :cond_1b

    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayDeviceRepo(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayDeviceRepository;

    move-result-object p0

    .line 6298
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceRepository;->hasExternalDisplayDeviceForDexLocked()Z

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public final needToConfigureDexDisplayLocked(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .registers 5

    .line 6284
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 6286
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    return p0

    .line 6287
    :cond_9
    iget p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v0, 0x4

    const/4 v2, 0x0

    if-ne p1, v0, :cond_26

    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    if-nez p1, :cond_26

    .line 6288
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-eqz p1, :cond_24

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayDeviceRepo(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayDeviceRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceRepository;->hasExternalDisplayDeviceForDexLocked()Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1

    :cond_26
    return v2
.end method

.method public final onLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 6302
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 6303
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->isExternalLogicalDisplayForDexLocked(Landroid/view/DisplayInfo;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    .line 6305
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    .line 6306
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualSwitchStateLocked()V

    .line 6307
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    :cond_15
    return-void
.end method

.method public final onSystemReadyLocked()V
    .registers 3

    const/4 v0, 0x1

    .line 6272
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    .line 6273
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService$DexEmulator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateDualOverlayStateLocked()V
    .registers 4

    .line 6333
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    if-nez v0, :cond_5

    return-void

    .line 6336
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6337
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-eqz v1, :cond_1d

    .line 6338
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    if-eqz v1, :cond_1a

    const-string v1, "dex#1080x2220/320#2"

    goto :goto_1f

    :cond_1a
    const-string v1, "dex#1920x1080/320#0"

    goto :goto_1f

    :cond_1d
    const-string v1, ""

    .line 6339
    :goto_1f
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object p0

    new-instance v2, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateDualSwitchStateLocked()V
    .registers 2

    .line 6343
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDexLogicalDisplayLocked()Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 6345
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    iput-boolean p0, v0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    :cond_10
    return-void
.end method
