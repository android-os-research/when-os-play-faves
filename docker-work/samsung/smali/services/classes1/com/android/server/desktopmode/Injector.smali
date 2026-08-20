.class public Lcom/android/server/desktopmode/Injector;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/Injector$LazyDependencyCreator;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/server/desktopmode/Injector$LazyDependencyCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-0e_J1fO3BtELZNpMBT_Pbo6zV4(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$-uswu1N6PTfxznFOVGSEYCKvxSA(Lcom/android/server/desktopmode/Injector;)Landroid/os/PowerManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$09SUpBaBIub8GzM1QZQDORCYby4(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/DisplayPortStateManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDisplayPortStateManager()Lcom/android/server/desktopmode/DisplayPortStateManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0VYj8QlezoeY4DxfXUzPR-tlUyM(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/ServiceThread;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3PSWZVEIzRN79QcnMEJY1daBDC8(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4PzxVb_ozU6SrvjRiY1obWXugj8(Lcom/android/server/desktopmode/Injector;)Landroid/os/PowerManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4jNez9yXZyAZFJTmV42hXmhh_JU(Lcom/android/server/desktopmode/Injector;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getSemDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4oDxmyRHcdSEdXG5bU1K2zNJd-U(Lcom/android/server/desktopmode/Injector;)Landroid/hardware/display/IDisplayManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getIDisplayManager()Landroid/hardware/display/IDisplayManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7njAhTvZ__BmKGPfb4t8tCKpiX4(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/StateManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getIStateManager()Lcom/android/server/desktopmode/StateManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9MdVpMoFIeztJhb19ZF5FODsYtk(Lcom/android/server/desktopmode/Injector;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getIStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9w_-3raOVJRJmq-b3LZ87FDMS24(Lcom/android/server/desktopmode/Injector;)Landroid/app/IUiModeManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getIUiModeManager()Landroid/app/IUiModeManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AeN8ExN08rYP27GTMH5agZznWVw(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/EmergencyModeBlocker;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getEmergencyModeBlocker()Lcom/android/server/desktopmode/EmergencyModeBlocker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Arq1BdgQEfvexA1uZ0r8PYDjxzI(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/SettingsHelper;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getSettingsHelper()Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DyDvSMKWodscWkiGJE3MQsGXUkM(Lcom/android/server/desktopmode/Injector;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ELPtKP0P2EX7qH3lrO1O_P60e-w(Lcom/android/server/desktopmode/Injector;)Landroid/hardware/input/InputManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getInputManager()Landroid/hardware/input/InputManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F5x4xF4n3HxDdzaxBP8LT8tMK3w(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getActivityTaskManagerService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GdPEUcq9SJjdj3P37jDcuBJPpRw(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/WirelessDexManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getWirelessDexManager()Lcom/android/server/desktopmode/WirelessDexManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GzHeaBwIkMRT0PvAX2E_zLwa87M(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/UiModeManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getUiModeManagerInternal()Lcom/android/server/UiModeManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JrNGWgxNnAcRXtPW1Qv1mzWo9As(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/DualModeChanger;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDualModeChanger()Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KPMl5NWzK8jx5DEI_ecsKvguwEQ(Lcom/android/server/desktopmode/Injector;)Landroid/app/StatusBarManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MYCL6vactzRoRGZmUPuL0yRSL88(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/UiManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getUiManager()Lcom/android/server/desktopmode/UiManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OdQrm96y97BJMEbHIk7KfvGuvLg(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getSemDesktopModeStateNotifier()Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$StcsCSUPC3iaeeci2mIOuOOkdrc(Lcom/android/server/desktopmode/Injector;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getSemDvfsManager()Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U7hBIoO4_Hsyfub5W7JJrptv79o(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/BleAdvertiserServiceManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getBleAdvertiserServiceManager()Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UD1Pyve3aIOxFNK95MZ8kUxeZUk(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/McfManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getMcfManager()Lcom/android/server/desktopmode/McfManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UpkdqaWRLXdBhBgVPfMytTXbo2Q(Lcom/android/server/desktopmode/Injector;)Landroid/hardware/display/DisplayManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VTJnB4twjyEdsYKPwDzCZMK3KoY(Lcom/android/server/desktopmode/Injector;)Landroid/app/ActivityManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_YnJeVaD1bUvGztdpqlm966SL2U(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/TouchpadManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getTouchpadManager()Lcom/android/server/desktopmode/TouchpadManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bDX9lYoSZQdIFQikKRtFzISxlgo(Lcom/android/server/desktopmode/Injector;)Lcom/samsung/android/knox/dex/DexManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDexManager()Lcom/samsung/android/knox/dex/DexManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bIL5Hozi4FscqJeB3MooY3km8i4(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/DockManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDockManager()Lcom/android/server/desktopmode/DockManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c49jb_N8XjytxLqz3ivR_xMYXcg(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eCbDT4Ny-W5NoVwdQyAxxYuBELU(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getWindowManagerInternal()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gEJPZvXFwc0gxmRnEew_vTYUsL0(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/PackageStateManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getPackageStateManager()Lcom/android/server/desktopmode/PackageStateManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j-Co3gBxtpoDbpXPamEpyP7Kti8(Lcom/android/server/desktopmode/Injector;)Landroid/app/KeyguardManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jUSXF63VgTfA1dApDU8kJGcx42g(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/BlockerManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getBlockerManager()Lcom/android/server/desktopmode/BlockerManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$knC7mKVZOxXAbZnZZBz2SNp7n2Q(Lcom/android/server/desktopmode/Injector;)Landroid/content/pm/IPackageManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nA9SZ7sIZNIFrkhxJF6CBAlM6_8(Lcom/android/server/desktopmode/Injector;)Lcom/samsung/android/vr/GearVrManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getGearVrManagerInternal()Lcom/samsung/android/vr/GearVrManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nRscgJBOrsaKmcu57RP9JBKsia4(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/MultiResolutionManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getMultiResolutionManager()Lcom/android/server/desktopmode/MultiResolutionManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nX91KhDbFp_xVVuzixx8D0mB98c(Lcom/android/server/desktopmode/Injector;)Landroid/app/ActivityManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q2nnOZFpJ_7HR6QCan60x0uW_oY(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/StandaloneModeChanger;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getStandaloneModeChanger()Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qyIgTrbB9nOC6y43XECrVvG3fJo(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/DesktopModeService;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDesktopModeService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rjCjl-x70g6gaxBiZZBXLHTkg7s(Lcom/android/server/desktopmode/Injector;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/Injector;->lambda$get$0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uyyKnJvWYATr8AbxkKNKuxxZa3c(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/HardwareManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getHardwareManager()Lcom/android/server/desktopmode/HardwareManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xm5MoMVh5-0wJ5QbMO1yVgd8gPc(Lcom/android/server/desktopmode/Injector;)Landroid/telecom/TelecomManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xoOQQIrMIfou3DwEH-rK-VLYD2g(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/input/InputManagerService;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yLKb8zW6ZfUL2h88CDrMBNzdM3s(Lcom/android/server/desktopmode/Injector;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getMultiWindowManager()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yl5hkmX6UIuv4gjCIOROGUI79r0(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/CoverStateManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getCoverStateManager()Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zbPuuUA-dbdEdA_3fPT-y697EwA(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/BootInitBlocker;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getBootInitBlocker()Lcom/android/server/desktopmode/BootInitBlocker;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/Injector;->mDependencies:Landroid/util/ArrayMap;

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/Injector;->mProviders:Landroid/util/ArrayMap;

    .line 54
    iput-object p1, p0, Lcom/android/server/desktopmode/Injector;->mContext:Landroid/content/Context;

    .line 56
    const-class p1, Landroid/content/Context;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-class p1, Lcom/android/server/ServiceThread;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-class p1, Lcom/android/server/desktopmode/BlockerManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-class p1, Lcom/android/server/desktopmode/BootInitBlocker;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-class p1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class p1, Lcom/android/server/desktopmode/CoverStateManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-class p1, Lcom/android/server/desktopmode/DesktopModeService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-class p1, Lcom/android/server/desktopmode/DisplayPortStateManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-class p1, Lcom/android/server/desktopmode/DockManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-class p1, Lcom/android/server/desktopmode/DualModeChanger;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-class p1, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-class p1, Lcom/android/server/desktopmode/HardwareManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-class p1, Lcom/android/server/desktopmode/IStateManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-class p1, Lcom/android/server/desktopmode/MultiResolutionManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-class p1, Lcom/android/server/desktopmode/PackageStateManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-class p1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-class p1, Lcom/android/server/desktopmode/SettingsHelper;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-class p1, Lcom/android/server/desktopmode/StandaloneModeChanger;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-class p1, Lcom/android/server/desktopmode/TouchpadManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-class p1, Lcom/android/server/desktopmode/UiManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-class p1, Lcom/android/server/desktopmode/WirelessDexManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-class p1, Lcom/android/server/desktopmode/McfManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-class p1, Landroid/app/ActivityManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-class p1, Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-class p1, Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-class p1, Landroid/hardware/display/DisplayManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-class p1, Lcom/samsung/android/vr/GearVrManagerInternal;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-class p1, Landroid/app/IUiModeManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-class p1, Landroid/hardware/input/InputManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-class p1, Lcom/android/server/input/InputManagerService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-class p1, Landroid/content/pm/IPackageManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-class p1, Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-class p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-class p1, Landroid/os/PowerManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-class p1, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-class p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-class p1, Lcom/samsung/android/os/SemDvfsManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-class p1, Landroid/app/StatusBarManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-class p1, Landroid/telecom/TelecomManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-class p1, Lcom/android/server/UiModeManagerInternal;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-class p1, Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-class p1, Landroid/app/KeyguardManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-class p1, Landroid/hardware/display/IDisplayManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-class p1, Lcom/samsung/android/knox/dex/DexManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$get$0(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/Injector;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 113
    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public binderClearCallingIdentity()J
    .registers 3

    .line 125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderGetCallingPid()I
    .registers 1

    .line 117
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    return p0
.end method

.method public binderGetCallingUid()I
    .registers 1

    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public binderRestoreCallingIdentity(J)V
    .registers 3

    .line 129
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public createDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/desktopmode/Injector;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/Injector$LazyDependencyCreator;

    if-eqz v0, :cond_f

    .line 144
    invoke-interface {v0}, Lcom/android/server/desktopmode/Injector$LazyDependencyCreator;->createDependency()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 137
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dependency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/Injector;->mProviders:Landroid/util/ArrayMap;

    .line 141
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " providers known."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/server/desktopmode/Injector;->mDependencies:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/desktopmode/Injector;Ljava/lang/Class;)V

    invoke-static {v0, p1, v1}, Lcom/android/server/desktopmode/Utils;->getOrPut(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getActivityManager()Landroid/app/ActivityManager;
    .registers 2

    .line 355
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 371
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public final getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .registers 1

    const-string p0, "activity"

    .line 359
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public final getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    .line 363
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public final getActivityTaskManagerService()Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    .line 367
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public final getBleAdvertiserServiceManager()Lcom/android/server/desktopmode/BleAdvertiserServiceManager;
    .registers 5

    .line 180
    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    const-class v1, Landroid/content/Context;

    .line 181
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/ServiceThread;

    .line 182
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ServiceThread;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 183
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V

    return-object v0
.end method

.method public final getBlockerManager()Lcom/android/server/desktopmode/BlockerManager;
    .registers 8

    .line 164
    new-instance v6, Lcom/android/server/desktopmode/BlockerManager;

    const-class v0, Landroid/content/Context;

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Landroid/app/ActivityManager;

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/ActivityManager;

    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/display/DisplayManager;

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/BlockerManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Landroid/app/ActivityManager;Landroid/hardware/display/DisplayManager;Lcom/android/server/desktopmode/Injector;)V

    return-object v6
.end method

.method public final getBootInitBlocker()Lcom/android/server/desktopmode/BootInitBlocker;
    .registers 5

    .line 173
    new-instance v0, Lcom/android/server/desktopmode/BootInitBlocker;

    const-class v1, Lcom/android/server/ServiceThread;

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ServiceThread;

    const-class v2, Lcom/android/server/desktopmode/IStateManager;

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 176
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/BootInitBlocker;-><init>(Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getCoverStateManager()Lcom/android/server/desktopmode/CoverStateManager;
    .registers 8

    .line 187
    new-instance v6, Lcom/android/server/desktopmode/CoverStateManager;

    const-class v0, Landroid/content/Context;

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-class v0, Landroid/os/PowerManager;

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/PowerManager;

    const-class v0, Lcom/android/server/input/InputManagerService;

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/server/input/InputManagerService;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/CoverStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Landroid/os/PowerManager;Lcom/android/server/input/InputManagerService;)V

    return-object v6
.end method

.method public final getDesktopModeService()Lcom/android/server/desktopmode/DesktopModeService;
    .registers 8

    .line 196
    new-instance v6, Lcom/android/server/desktopmode/DesktopModeService;

    const-class v0, Landroid/content/Context;

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const-class v0, Lcom/android/server/ServiceThread;

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/ServiceThread;

    const-class v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/desktopmode/IStateManager;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Lcom/android/server/desktopmode/Injector;Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/IStateManager;)V

    return-object v6
.end method

.method public final getDexManager()Lcom/samsung/android/knox/dex/DexManager;
    .registers 1

    .line 459
    invoke-static {}, Lcom/samsung/android/knox/dex/DexManager;->getInstance()Lcom/samsung/android/knox/dex/DexManager;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayManager()Landroid/hardware/display/DisplayManager;
    .registers 2

    .line 375
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public final getDisplayPortStateManager()Lcom/android/server/desktopmode/DisplayPortStateManager;
    .registers 5

    .line 205
    new-instance v0, Lcom/android/server/desktopmode/DisplayPortStateManager;

    const-class v1, Landroid/content/Context;

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/desktopmode/IStateManager;

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v3, Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/desktopmode/SettingsHelper;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V

    return-object v0
.end method

.method public final getDockManager()Lcom/android/server/desktopmode/DockManager;
    .registers 5

    .line 210
    new-instance v0, Lcom/android/server/desktopmode/DockManager;

    const-class v1, Landroid/content/Context;

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/ServiceThread;

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ServiceThread;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 213
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/DockManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V

    return-object v0
.end method

.method public final getDualModeChanger()Lcom/android/server/desktopmode/DualModeChanger;
    .registers 25

    move-object/from16 v0, p0

    .line 217
    new-instance v22, Lcom/android/server/desktopmode/DualModeChanger;

    move-object/from16 v1, v22

    const-class v2, Landroid/content/Context;

    .line 218
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 219
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    const-class v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 220
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    const-class v5, Lcom/android/server/ServiceThread;

    .line 221
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ServiceThread;

    const-class v6, Lcom/android/internal/statusbar/IStatusBarService;

    .line 222
    invoke-virtual {v0, v6}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/statusbar/IStatusBarService;

    const-class v7, Lcom/android/server/desktopmode/UiManager;

    .line 223
    invoke-virtual {v0, v7}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/desktopmode/UiManager;

    const-class v8, Lcom/android/server/desktopmode/SettingsHelper;

    .line 224
    invoke-virtual {v0, v8}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v9, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 225
    invoke-virtual {v0, v9}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/desktopmode/MultiResolutionManager;

    const-class v10, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 226
    invoke-virtual {v0, v10}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerService;

    const-class v11, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 227
    invoke-virtual {v0, v11}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class v12, Landroid/app/ActivityManagerInternal;

    .line 228
    invoke-virtual {v0, v12}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManagerInternal;

    const-class v13, Lcom/android/server/wm/WindowManagerInternal;

    .line 229
    invoke-virtual {v0, v13}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowManagerInternal;

    const-class v14, Landroid/app/StatusBarManager;

    .line 230
    invoke-virtual {v0, v14}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/StatusBarManager;

    const-class v15, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 231
    invoke-virtual {v0, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-object/from16 v23, v1

    const-class v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 232
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-class v1, Lcom/android/server/desktopmode/CoverStateManager;

    .line 233
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/server/desktopmode/CoverStateManager;

    const-class v1, Landroid/app/KeyguardManager;

    .line 234
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/app/KeyguardManager;

    const-class v1, Lcom/android/server/desktopmode/TouchpadManager;

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/server/desktopmode/TouchpadManager;

    const-class v1, Landroid/os/PowerManager;

    .line 236
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroid/os/PowerManager;

    const-class v1, Landroid/os/PowerManagerInternal;

    .line 237
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/PowerManagerInternal;

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Lcom/android/server/desktopmode/DualModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/android/server/desktopmode/CoverStateManager;Landroid/app/KeyguardManager;Lcom/android/server/desktopmode/TouchpadManager;Landroid/os/PowerManager;Landroid/os/PowerManagerInternal;)V

    return-object v22
.end method

.method public final getEmergencyModeBlocker()Lcom/android/server/desktopmode/EmergencyModeBlocker;
    .registers 5

    .line 241
    new-instance v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    const-class v1, Landroid/content/Context;

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/desktopmode/IStateManager;

    .line 243
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 244
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/android/server/desktopmode/Injector;)V

    return-object v0
.end method

.method public final getGearVrManagerInternal()Lcom/samsung/android/vr/GearVrManagerInternal;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHardwareManager()Lcom/android/server/desktopmode/HardwareManager;
    .registers 12

    .line 249
    new-instance v10, Lcom/android/server/desktopmode/HardwareManager;

    const-class v0, Landroid/content/Context;

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v0, Landroid/hardware/input/InputManager;

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/input/InputManager;

    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/display/DisplayManager;

    const-class v0, Landroid/os/PowerManagerInternal;

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/PowerManagerInternal;

    const-class v0, Lcom/android/server/wm/WindowManagerService;

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/wm/WindowManagerService;

    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/vr/GearVrManagerInternal;

    const-class v0, Landroid/hardware/display/IDisplayManager;

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Landroid/hardware/display/IDisplayManager;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/desktopmode/HardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Landroid/hardware/input/InputManager;Landroid/hardware/display/DisplayManager;Landroid/os/PowerManagerInternal;Lcom/android/server/wm/WindowManagerService;Lcom/samsung/android/vr/GearVrManagerInternal;Landroid/hardware/display/IDisplayManager;)V

    return-object v10
.end method

.method public final getIDisplayManager()Landroid/hardware/display/IDisplayManager;
    .registers 1

    const-string p0, "display"

    .line 455
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p0

    return-object p0
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 394
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public final getIStateManager()Lcom/android/server/desktopmode/StateManager;
    .registers 3

    .line 262
    new-instance v0, Lcom/android/server/desktopmode/StateManager;

    const-class v1, Lcom/android/server/ServiceThread;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ServiceThread;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/StateManager;-><init>(Lcom/android/server/ServiceThread;)V

    return-object v0
.end method

.method public final getIStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    const-string/jumbo p0, "statusbar"

    .line 399
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 398
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public final getIUiModeManager()Landroid/app/IUiModeManager;
    .registers 1

    const-string/jumbo p0, "uimode"

    .line 386
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object p0

    return-object p0
.end method

.method public final getInputManager()Landroid/hardware/input/InputManager;
    .registers 2

    .line 390
    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method public final getInputManagerService()Lcom/android/server/input/InputManagerService;
    .registers 1

    const-string/jumbo p0, "input"

    .line 426
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/InputManagerService;

    return-object p0
.end method

.method public final getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 2

    .line 451
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public final getMcfManager()Lcom/android/server/desktopmode/McfManager;
    .registers 8

    .line 344
    new-instance v6, Lcom/android/server/desktopmode/McfManager;

    const-class v0, Landroid/content/Context;

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/ServiceThread;

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/ServiceThread;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/McfManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    return-object v6
.end method

.method public final getMultiResolutionManager()Lcom/android/server/desktopmode/MultiResolutionManager;
    .registers 9

    .line 266
    new-instance v7, Lcom/android/server/desktopmode/MultiResolutionManager;

    const-class v0, Landroid/content/Context;

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class v0, Lcom/android/server/wm/WindowManagerService;

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/wm/WindowManagerService;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/desktopmode/MultiResolutionManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;)V

    return-object v7
.end method

.method public final getMultiWindowManager()Lcom/samsung/android/multiwindow/MultiWindowManager;
    .registers 1

    .line 403
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageStateManager()Lcom/android/server/desktopmode/PackageStateManager;
    .registers 6

    .line 276
    new-instance v0, Lcom/android/server/desktopmode/PackageStateManager;

    const-class v1, Landroid/content/Context;

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/desktopmode/IStateManager;

    .line 278
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v3, Lcom/android/server/ServiceThread;

    .line 279
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ServiceThread;

    const-class v4, Landroid/content/pm/IPackageManager;

    .line 280
    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/IPackageManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/desktopmode/PackageStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/ServiceThread;Landroid/content/pm/IPackageManager;)V

    return-object v0
.end method

.method public final getPowerManager()Landroid/os/PowerManager;
    .registers 2

    .line 407
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method public final getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .registers 1

    .line 411
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public final getSemDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .registers 2

    .line 415
    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object p0
.end method

.method public final getSemDesktopModeStateNotifier()Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;
    .registers 3

    .line 284
    new-instance v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/Injector;)V

    return-object v0
.end method

.method public final getSemDvfsManager()Lcom/samsung/android/os/SemDvfsManager;
    .registers 2

    .line 419
    const-class v0, Landroid/content/Context;

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 421
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 158
    new-instance p0, Lcom/android/server/ServiceThread;

    const-string v0, "desktopmode"

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 159
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-object p0
.end method

.method public final getSettingsHelper()Lcom/android/server/desktopmode/SettingsHelper;
    .registers 5

    .line 288
    new-instance v0, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v1, Landroid/content/Context;

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/ServiceThread;

    .line 290
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ServiceThread;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 291
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/desktopmode/SettingsHelper;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/Injector;)V

    return-object v0
.end method

.method public final getStandaloneModeChanger()Lcom/android/server/desktopmode/StandaloneModeChanger;
    .registers 24

    move-object/from16 v0, p0

    .line 296
    new-instance v21, Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-object/from16 v1, v21

    const-class v2, Landroid/content/Context;

    .line 297
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 298
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    const-class v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 299
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    const-class v5, Lcom/android/server/ServiceThread;

    .line 300
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ServiceThread;

    const-class v6, Lcom/android/server/desktopmode/UiManager;

    .line 301
    invoke-virtual {v0, v6}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/desktopmode/UiManager;

    const-class v7, Lcom/android/server/desktopmode/SettingsHelper;

    .line 302
    invoke-virtual {v0, v7}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v8, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 303
    invoke-virtual {v0, v8}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/desktopmode/MultiResolutionManager;

    const-class v9, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 304
    invoke-virtual {v0, v9}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityTaskManagerService;

    const-class v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 305
    invoke-virtual {v0, v10}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class v11, Landroid/app/ActivityManagerInternal;

    .line 306
    invoke-virtual {v0, v11}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManagerInternal;

    const-class v12, Lcom/android/server/wm/WindowManagerInternal;

    .line 307
    invoke-virtual {v0, v12}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowManagerInternal;

    const-class v13, Landroid/app/StatusBarManager;

    .line 308
    invoke-virtual {v0, v13}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/StatusBarManager;

    const-class v14, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 309
    invoke-virtual {v0, v14}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-class v15, Lcom/samsung/android/os/SemDvfsManager;

    .line 310
    invoke-virtual {v0, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v22, v1

    const-class v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 311
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-class v1, Landroid/telecom/TelecomManager;

    .line 312
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/telecom/TelecomManager;

    const-class v1, Landroid/app/IUiModeManager;

    .line 313
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/app/IUiModeManager;

    const-class v1, Lcom/android/server/desktopmode/HardwareManager;

    .line 314
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/server/desktopmode/HardwareManager;

    const-class v1, Lcom/android/server/UiModeManagerInternal;

    .line 315
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/UiModeManagerInternal;

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lcom/android/server/desktopmode/StandaloneModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/os/SemDvfsManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Landroid/telecom/TelecomManager;Landroid/app/IUiModeManager;Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/UiModeManagerInternal;)V

    return-object v21
.end method

.method public final getStatusBarManager()Landroid/app/StatusBarManager;
    .registers 2

    .line 430
    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    return-object p0
.end method

.method public final getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 148
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getTelecomManager()Landroid/telecom/TelecomManager;
    .registers 2

    .line 434
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public final getTouchpadManager()Lcom/android/server/desktopmode/TouchpadManager;
    .registers 8

    .line 319
    new-instance v6, Lcom/android/server/desktopmode/TouchpadManager;

    const-class v0, Landroid/content/Context;

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/android/server/ServiceThread;

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/ServiceThread;

    const-class v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v0, Lcom/android/server/wm/WindowManagerService;

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/server/wm/WindowManagerService;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/TouchpadManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/WindowManagerService;)V

    return-object v6
.end method

.method public final getUiManager()Lcom/android/server/desktopmode/UiManager;
    .registers 5

    .line 328
    new-instance v0, Lcom/android/server/desktopmode/UiManager;

    const-class v1, Landroid/content/Context;

    .line 329
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/ServiceThread;

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ServiceThread;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V

    return-object v0
.end method

.method public final getUiModeManagerInternal()Lcom/android/server/UiModeManagerInternal;
    .registers 1

    .line 438
    const-class p0, Lcom/android/server/UiModeManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/UiModeManagerInternal;

    return-object p0
.end method

.method public final getWindowManagerInternal()Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 442
    const-class p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public final getWindowManagerService()Lcom/android/server/wm/WindowManagerService;
    .registers 1

    const-string/jumbo p0, "window"

    .line 447
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public final getWirelessDexManager()Lcom/android/server/desktopmode/WirelessDexManager;
    .registers 10

    .line 333
    new-instance v8, Lcom/android/server/desktopmode/WirelessDexManager;

    const-class v0, Landroid/content/Context;

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/android/server/desktopmode/UiManager;

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/desktopmode/UiManager;

    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/display/DisplayManager;

    const-class v0, Landroid/hardware/input/InputManager;

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/input/InputManager;

    const-class v0, Lcom/android/server/ServiceThread;

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/ServiceThread;

    const-class v0, Lcom/android/server/wm/WindowManagerService;

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/server/wm/WindowManagerService;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/desktopmode/WirelessDexManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/UiManager;Landroid/hardware/display/DisplayManager;Landroid/hardware/input/InputManager;Lcom/android/server/ServiceThread;Lcom/android/server/wm/WindowManagerService;)V

    return-object v8
.end method
