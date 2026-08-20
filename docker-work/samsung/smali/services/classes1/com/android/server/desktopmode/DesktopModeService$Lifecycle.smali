.class public final Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public final mService:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 372
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 373
    new-instance v0, Lcom/android/server/desktopmode/Injector;

    invoke-direct {v0, p1}, Lcom/android/server/desktopmode/Injector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 374
    const-class p1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/desktopmode/DesktopModeService;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 28

    move-object/from16 v0, p0

    const/16 v1, 0x1f4

    move/from16 v2, p1

    if-ne v2, v1, :cond_12f

    .line 385
    iget-object v2, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v3, Lcom/android/server/am/ActivityManagerService;

    .line 386
    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v4, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 387
    invoke-virtual {v1, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 388
    invoke-virtual {v1, v5}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v6, Lcom/android/server/desktopmode/BlockerManager;

    .line 389
    invoke-virtual {v1, v6}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/desktopmode/BlockerManager;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v7, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 390
    invoke-virtual {v1, v7}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v8, Lcom/android/server/desktopmode/UiManager;

    .line 391
    invoke-virtual {v1, v8}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/desktopmode/UiManager;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v9, Lcom/android/server/desktopmode/SettingsHelper;

    .line 392
    invoke-virtual {v1, v9}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v10, Lcom/android/server/desktopmode/HardwareManager;

    .line 393
    invoke-virtual {v1, v10}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/desktopmode/HardwareManager;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v11, Lcom/android/server/desktopmode/TouchpadManager;

    .line 394
    invoke-virtual {v1, v11}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/desktopmode/TouchpadManager;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v12, Lcom/android/server/desktopmode/CoverStateManager;

    .line 395
    invoke-virtual {v1, v12}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/desktopmode/CoverStateManager;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v13, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 396
    invoke-virtual {v1, v13}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/desktopmode/MultiResolutionManager;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v14, Lcom/android/server/desktopmode/DockManager;

    .line 397
    invoke-virtual {v1, v14}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/desktopmode/DockManager;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v15, Lcom/android/server/desktopmode/PackageStateManager;

    .line 398
    invoke-virtual {v1, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/desktopmode/PackageStateManager;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    move-object/from16 p1, v15

    const-class v15, Landroid/app/StatusBarManager;

    .line 399
    invoke-virtual {v1, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/app/StatusBarManager;

    .line 400
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v1, :cond_b6

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v15, Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-virtual {v1, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/BootInitBlocker;

    goto :goto_b7

    :cond_b6
    const/4 v1, 0x0

    :goto_b7
    iget-object v15, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    move-object/from16 v18, v1

    const-class v1, Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 401
    invoke-virtual {v15, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 402
    sget-boolean v15, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-nez v15, :cond_d0

    sget-boolean v15, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_DEX_ON_PC:Z

    if-eqz v15, :cond_cc

    goto :goto_d0

    :cond_cc
    move-object/from16 v19, v1

    const/4 v1, 0x0

    goto :goto_dc

    :cond_d0
    :goto_d0
    iget-object v15, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    move-object/from16 v19, v1

    const-class v1, Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-virtual {v15, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/WirelessDexManager;

    .line 404
    :goto_dc
    sget-boolean v15, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v15, :cond_ed

    .line 405
    iget-object v15, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    move-object/from16 v20, v1

    const-class v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {v15, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    goto :goto_f0

    :cond_ed
    move-object/from16 v20, v1

    const/4 v1, 0x0

    .line 406
    :goto_f0
    iget-object v15, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    move-object/from16 v25, v1

    const-class v1, Lcom/android/server/desktopmode/DualModeChanger;

    .line 407
    invoke-virtual {v15, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v15, Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 408
    invoke-virtual {v1, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v15, Lcom/android/server/desktopmode/McfManager;

    .line 409
    invoke-virtual {v1, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/server/desktopmode/McfManager;

    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    const-class v1, Lcom/samsung/android/knox/dex/DexManager;

    .line 410
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lcom/samsung/android/knox/dex/DexManager;

    move-object/from16 v15, p1

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v25

    .line 385
    invoke-virtual/range {v2 .. v24}, Lcom/android/server/desktopmode/DesktopModeService;->injectServices(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/desktopmode/BlockerManager;Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/CoverStateManager;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/PackageStateManager;Landroid/app/StatusBarManager;Lcom/android/server/desktopmode/BootInitBlocker;Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/BleAdvertiserServiceManager;Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/McfManager;Lcom/samsung/android/knox/dex/DexManager;)V

    :cond_12f
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    const-string v1, "desktopmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 416
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$monUserStarting(Lcom/android/server/desktopmode/DesktopModeService;I)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 436
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$monUserStopped(Lcom/android/server/desktopmode/DesktopModeService;I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 431
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$monUserStopping(Lcom/android/server/desktopmode/DesktopModeService;I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 426
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$monUserSwitching(Lcom/android/server/desktopmode/DesktopModeService;I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 421
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$monUserUnlocking(Lcom/android/server/desktopmode/DesktopModeService;I)V

    return-void
.end method
