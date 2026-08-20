.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.super Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;
.source "SemInputDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;,
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$SettingHandler;,
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;,
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandlerMessage;
    }
.end annotation


# static fields
.field private static final CONNECTED:I = 0x1

.field private static final COVER_ATTACH_CHANGED_INTENT:Ljava/lang/String; = "com.samsung.android.intent.action.COVER_ATTACH_CHANGED"

.field private static final DISCONNECTED:I = 0x0

.field private static final DISPLAY_CATEGORY_BUILTIN:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BUILTIN"

.field public static final ERR_CMD_FAILED:I = -0x6

.field public static final ERR_EXCEPTION:I = -0x7

.field public static final ERR_NONE:I = 0x0

.field public static final ERR_NOT_DEFINED:I = -0x14

.field public static final ERR_NO_CMD_EXIST:I = -0x5

.field public static final ERR_NO_DEVICE:I = -0x2

.field public static final ERR_NO_HAL_SERVICE:I = -0x3

.field private static final EXTRA_COVER_ATTACH:Ljava/lang/String; = "attach"

.field private static final EXTRA_REAL_COVER_TYPE:Ljava/lang/String; = "real_cover_type"

.field private static final GOS_INTENT:Ljava/lang/String; = "com.samsung.android.game.gos.action.TSP"

.field public static final IS_SHIP_BUILD:Z = true

.field private static final POWER_STATE_OFF:I = 0x3

.field private static final POWER_STATE_OFF_ON:I = 0x4

.field private static final POWER_STATE_ON:I = 0x1

.field private static final POWER_STATE_ON_OFF:I = 0x2

.field private static final POWER_STATE_SHUTDOWN:I = -0x1

.field private static final SET_GAME_MODE:Ljava/lang/String; = "set_game_mode"

.field private static final SET_SCAN_RATE:Ljava/lang/String; = "set_scan_rate"

.field private static final SUPPORT_AMOLED_DISPLAY:Z

.field private static final SUPPORT_DEX:Z = false

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceManagerService"

.field private static mainHandler:Landroid/os/Handler;


# instance fields
.field private afterDisplayOnRunable:[Ljava/lang/Runnable;

.field private afterDisplayOnThread:[Ljava/lang/Thread;

.field private final bootingDump:Ljava/lang/StringBuilder;

.field private final chargerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

.field private final context:Landroid/content/Context;

.field private final coverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private coverManager:Lcom/samsung/android/cover/CoverManager;

.field private coverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

.field private currentChargingStatus:I

.field private currentChargingType:I

.field private currentDisplayIsEarly:[Z

.field private currentDisplayState:[I

.field private currentFolded:Z

.field private currentGameMode:Ljava/lang/String;

.field private currentPowerState:I

.field private currentProxLpScanMode:Ljava/lang/String;

.field private currentRotation:I

.field private currentScanRate:Ljava/lang/String;

.field private final desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private displayManager:Landroid/hardware/display/DisplayManager;

.field private final displayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

.field private foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field private final gameServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private gloveMode:I

.field private isSkippedDisplayStateChange:[Z

.field private isTspForceOff:Z

.field private keepProxLpScanMode:I

.field private final lazyBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mainExecutor:Landroid/os/HandlerExecutor;

.field private final mainHandlerThread:Landroid/os/HandlerThread;

.field private final mainRunnable:Ljava/lang/Runnable;

.field private monitorService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

.field private final motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

.field private final rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

.field private final sensorEventListener:Landroid/hardware/SensorEventListener;

.field private final settingHandler:Landroid/os/Handler;

.field private settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

.field private final shutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final subRunnable:Ljava/lang/Runnable;

.field private supportProxLpScanEnabled:Z

.field private supportSysinputEnabled:Z

.field private final sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

.field private final ueventObserver:Landroid/os/SemUEventObserver;

.field private final userSwitchedBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcoverManager(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/cover/CoverManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->coverManager:Lcom/samsung/android/cover/CoverManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentChargingStatus(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentChargingType(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentGameMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentRotation(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentScanRate(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdisplayManager(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->displayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgloveMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->gloveMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmonitorService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->monitorService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmotionController(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsettingObserver(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentChargingStatus(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentChargingType(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentGameMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentRotation(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentRotation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentScanRate(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgloveMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->gloveMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeepProxLpScanMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisplayStateToDevice(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;ZIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setDisplayStateToDevice(ZIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMainDisplayOn(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setMainDisplayOn(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmainHandler()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 87
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 88
    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->SUPPORT_AMOLED_DISPLAY:Z

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;-><init>()V

    .line 73
    const/4 v0, 0x3

    new-array v1, v0, [Z

    fill-array-data v1, :array_12e

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayIsEarly:[Z

    .line 74
    new-array v1, v0, [I

    fill-array-data v1, :array_134

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayState:[I

    .line 75
    new-array v1, v0, [Z

    fill-array-data v1, :array_13e

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->isSkippedDisplayStateChange:[Z

    .line 76
    new-array v1, v0, [Ljava/lang/Thread;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v5, 0x2

    aput-object v3, v1, v5

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->afterDisplayOnThread:[Ljava/lang/Thread;

    .line 77
    new-array v0, v0, [Ljava/lang/Runnable;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->afterDisplayOnRunable:[Ljava/lang/Runnable;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    .line 104
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentProxLpScanMode:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingStatus:I

    .line 109
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingType:I

    .line 110
    iput v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    .line 111
    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->isTspForceOff:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    .line 113
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->gloveMode:I

    .line 114
    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFolded:Z

    .line 116
    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportSysinputEnabled:Z

    .line 117
    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportProxLpScanEnabled:Z

    .line 118
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentRotation:I

    .line 119
    iput-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 120
    iput-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->coverManager:Lcom/samsung/android/cover/CoverManager;

    .line 121
    iput-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 122
    iput-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    .line 123
    iput-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->monitorService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    .line 216
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->ueventObserver:Landroid/os/SemUEventObserver;

    .line 341
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->chargerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->shutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 393
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lazyBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->gameServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->coverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 454
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$7;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->userSwitchedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 568
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$8;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->displayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    .line 582
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 611
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 638
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$11;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 656
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->coverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 679
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$13;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainRunnable:Ljava/lang/Runnable;

    .line 687
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$14;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->subRunnable:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    .line 128
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemInputMainHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandlerThread:Landroid/os/HandlerThread;

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Landroid/os/Looper;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    .line 131
    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainExecutor:Landroid/os/HandlerExecutor;

    .line 132
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$SettingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$SettingHandler;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    .line 134
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->connectHidl()Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 136
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-direct {v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    .line 137
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 139
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALFactory;->registerCallback(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;)V

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerUEventObserver()V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerBroadcastReceiver()V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerServiceListener()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerMonitorMotionEvent()V

    .line 145
    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_121

    .line 146
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 147
    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->setRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V

    goto :goto_123

    .line 149
    :cond_121
    iput-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 152
    :goto_123
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerSettingObserver()V

    .line 153
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    :array_12e
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_134
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_13e
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 312
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;Ljava/lang/String;Z)V

    .line 314
    return-void
.end method

.method private addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "broadcastPermission"    # Ljava/lang/String;

    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;Ljava/lang/String;Z)V

    .line 318
    return-void
.end method

.method private addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "callByHandler"    # Z

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    if-eqz p4, :cond_12

    .line 324
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2, v0, p3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_17

    .line 326
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    invoke-virtual {v1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    :goto_17
    return-void
.end method

.method private dumpEvents(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 935
    const-string v0, "\ndumping SemInputDeviceManager Events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    if-eqz v0, :cond_c

    .line 938
    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 940
    :cond_c
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->isCreated()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_20

    .line 941
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 944
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v0, :cond_2c

    .line 945
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 948
    :cond_2c
    return-void
.end method

.method private getCallerClassName(I)Ljava/lang/String;
    .registers 7
    .param p1, "stackIndex"    # I

    .line 1151
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1152
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 1154
    .local v1, "callerClassName":Ljava/lang/String;
    :try_start_a
    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1155
    const-string v2, "[.]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1156
    .local v2, "classNameSplit":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    move-object v1, v3

    .line 1157
    const-string v3, "[$]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_27

    return-object v3

    .line 1158
    .end local v2    # "classNameSplit":[Ljava/lang/String;
    :catch_27
    move-exception v2

    .line 1159
    .local v2, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2c

    .line 1160
    const-string v1, ""

    .line 1162
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerClassName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemInputDeviceManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private registerBroadcastReceiver()V
    .registers 5

    .line 331
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->chargerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->shutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;Ljava/lang/String;Z)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lazyBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->gameServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "com.samsung.android.game.gos.action.TSP"

    const-string v2, "android.permission.HARDWARE_TEST"

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->coverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "com.samsung.android.intent.action.COVER_ATTACH_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->userSwitchedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->addBroadcastReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 338
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "registerBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public static registerCallbackForHalRecovery(I)V
    .registers 5
    .param p0, "msDelay"    # I

    .line 167
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 168
    const/4 v1, 0x1

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    :cond_9
    return-void
.end method

.method private registerMonitorMotionEvent()V
    .registers 5

    .line 877
    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const-string v1, "SemInputDeviceManagerService"

    const/16 v2, 0x21

    if-ge v0, v2, :cond_35

    .line 878
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportInputMonitorEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 879
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->monitorService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    .line 880
    const-string v0, "registerMonitorMotionEvent SupportFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v1, "- TAAS MonitorMotionEvent register SupportFeature\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 883
    :cond_28
    const-string v0, "Not Support TAAS(SupportFeature)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v1, "- Not Support TAAS(SupportFeature)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 887
    :cond_35
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_55

    .line 888
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->monitorService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    .line 889
    const-string v0, "registerMonitorMotionEvent HFRFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v1, "- TAAS MonitorMotionEvent register HFRFeature\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 892
    :cond_55
    const-string v0, "Not Support TAAS(HFRFeature)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v1, "- Not Support TAAS(HFRFeature)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    :goto_61
    return-void
.end method

.method private registerSettingObserver()V
    .registers 5

    .line 224
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "registerSettingObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    .line 227
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->addObserver(Landroid/os/Handler;I)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->addObserver(Landroid/os/Handler;I)V

    .line 230
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CLOCK_SUPPORT_PREMIUM_WATCH"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 231
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v1, "- Setting Premium Watch Face registered\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_3a
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportAot()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 235
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->addObserver(Landroid/os/Handler;I)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v1, "- Setting AOT registered\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_51
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportDevice(I)I

    move-result v0

    if-nez v0, :cond_73

    .line 239
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->addObserver(Landroid/os/Handler;I)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->addObserver(Landroid/os/Handler;I)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v1, "- Setting Spen Mode registered\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_73
    return-void
.end method

.method private registerUEventObserver()V
    .registers 4

    .line 211
    const-string v0, "DEVPATH=/devices/virtual/sec/tsp"

    .line 212
    .local v0, "DEVPATH":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->ueventObserver:Landroid/os/SemUEventObserver;

    invoke-virtual {v1, v0}, Landroid/os/SemUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 213
    const-string v1, "SemInputDeviceManagerService"

    const-string v2, "registerUEventObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method private setDisplayStateForIncell(ZII)V
    .registers 9
    .param p1, "isEarly"    # Z
    .param p2, "stateForDevice"    # I
    .param p3, "displayType"    # I

    .line 775
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 776
    const-wide/16 v0, 0x3e8

    const-string v2, "SemInputDeviceManagerService"

    if-nez p1, :cond_7f

    const/4 v3, 0x2

    if-ne p2, v3, :cond_7f

    .line 777
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->afterDisplayOnThread:[Ljava/lang/Thread;

    aget-object v3, v3, p3

    if-eqz v3, :cond_6a

    .line 779
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisplayStateForIncell: afterDisplayOnThread(type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") duplication called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->afterDisplayOnThread:[Ljava/lang/Thread;

    aget-object v3, v3, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_36} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_37

    goto :goto_6a

    .line 783
    :catch_37
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previous afterDisplayOnThread.join e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 781
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previous afterDisplayOnThread.join e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->afterDisplayOnThread:[Ljava/lang/Thread;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->afterDisplayOnRunable:[Ljava/lang/Runnable;

    aget-object v2, v2, p3

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v1, v0, p3

    .line 788
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->afterDisplayOnThread:[Ljava/lang/Thread;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_c7

    .line 790
    :cond_7f
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->afterDisplayOnThread:[Ljava/lang/Thread;

    aget-object v3, v3, p3

    if-eqz v3, :cond_c2

    .line 792
    :try_start_85
    invoke-virtual {v3, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_88} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_bc

    .line 795
    :catch_89
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterDisplayOnThread.join e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 793
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a1
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterDisplayOnThread.join e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_bc
    nop

    .line 798
    :goto_bd
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->afterDisplayOnThread:[Ljava/lang/Thread;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    .line 800
    :cond_c2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p3, p2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setTspEnabled(IIZ)I

    .line 803
    :goto_c7
    const/4 v0, 0x1

    if-ne p3, v0, :cond_cf

    if-ne p2, v0, :cond_cf

    .line 804
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setMainDisplayOff(Z)V

    .line 807
    :cond_cf
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 808
    return-void
.end method

.method private setDisplayStateForOcta(ZII)V
    .registers 5
    .param p1, "isEarly"    # Z
    .param p2, "stateForDevice"    # I
    .param p3, "displayType"    # I

    .line 811
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p3, p2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setTspEnabled(IIZ)I

    .line 813
    const/4 v0, 0x1

    if-ne p3, v0, :cond_14

    .line 814
    if-ne p2, v0, :cond_e

    .line 815
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setMainDisplayOff(Z)V

    goto :goto_14

    .line 816
    :cond_e
    const/4 v0, 0x2

    if-ne p2, v0, :cond_14

    .line 817
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setMainDisplayOn(Z)V

    .line 820
    :cond_14
    :goto_14
    return-void
.end method

.method private setDisplayStateToDevice(ZIII)V
    .registers 14
    .param p1, "isEarly"    # Z
    .param p2, "stateLogical"    # I
    .param p3, "statePhysical"    # I
    .param p4, "displayType"    # I

    .line 696
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->SUPPORT_AMOLED_DISPLAY:Z

    if-eqz v0, :cond_6

    .line 697
    move v1, p2

    .local v1, "stateForDevice":I
    goto :goto_7

    .line 699
    .end local v1    # "stateForDevice":I
    :cond_6
    move v1, p3

    .line 702
    .restart local v1    # "stateForDevice":I
    :goto_7
    const-string v2, "SemInputDeviceManagerService"

    if-gez p4, :cond_28

    .line 703
    const/4 p4, 0x1

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisplayStateToDevice:display type("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not defined, set to default tsp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentDisplayState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayState:[I

    aget v4, v4, p4

    invoke-static {v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->getStatefromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_5a

    const-string v4, "EARLY:"

    goto :goto_5c

    :cond_5a
    const-string v4, "LATE:"

    :goto_5c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Logical: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->getStatefromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Physical: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 709
    invoke-static {p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->getStatefromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [Using: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 710
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;->getStatefromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DisplayState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] displayType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 708
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayState:[I

    aget v3, v3, p4

    if-ne v3, v1, :cond_ad

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayIsEarly:[Z

    aget-boolean v4, v4, p4

    if-ne v4, p1, :cond_ad

    .line 713
    const-string v0, "setDisplayStateToDevice: The same state&isEarly was called. Skip this event"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void

    .line 717
    :cond_ad
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayIsEarly:[Z

    aput-boolean p1, v4, p4

    .line 718
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v1, :cond_f9

    .line 719
    const-string v3, ")"

    const-string v6, "setDisplayStateToDevice: The same state was called. Skip this event("

    if-eqz p1, :cond_d8

    .line 720
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->isSkippedDisplayStateChange:[Z

    aput-boolean v5, v0, p4

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void

    .line 723
    :cond_d8
    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->isSkippedDisplayStateChange:[Z

    aget-boolean v8, v7, p4

    if-eqz v8, :cond_fd

    .line 724
    aput-boolean v4, v7, p4

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-void

    .line 729
    :cond_f9
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->isSkippedDisplayStateChange:[Z

    aput-boolean v4, v3, p4

    .line 731
    :cond_fd
    iput-boolean v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->isTspForceOff:Z

    .line 733
    const/4 v3, 0x2

    if-ne p4, v5, :cond_115

    if-ne p1, v5, :cond_115

    .line 734
    if-ne v1, v3, :cond_10a

    .line 735
    const/4 v4, 0x4

    iput v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    goto :goto_115

    .line 736
    :cond_10a
    if-ne v1, v5, :cond_115

    .line 737
    iput v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    .line 738
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    if-eqz v4, :cond_115

    .line 739
    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pauseService()V

    .line 743
    :cond_115
    :goto_115
    iget-boolean v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportSysinputEnabled:Z

    if-eqz v4, :cond_12b

    .line 744
    if-eqz v0, :cond_127

    .line 745
    move v0, p4

    .line 746
    .local v0, "type":I
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;ZII)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 749
    .end local v0    # "type":I
    goto :goto_14a

    .line 750
    :cond_127
    invoke-direct {p0, p1, v1, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setDisplayStateForIncell(ZII)V

    goto :goto_14a

    .line 753
    :cond_12b
    if-nez v0, :cond_14a

    .line 754
    if-ne p4, v5, :cond_14a

    if-nez p1, :cond_14a

    if-ne v1, v5, :cond_14a

    .line 755
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportProxLpScanEnabled:Z

    if-eqz v0, :cond_14a

    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    if-ltz v0, :cond_14a

    .line 756
    const-string v0, "running keeping prox lp scan mode(old model)"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProxLpScanMode(I)V

    .line 758
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    .line 764
    :cond_14a
    :goto_14a
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayState:[I

    aput v1, v0, p4

    .line 765
    if-ne p4, v5, :cond_15c

    if-nez p1, :cond_15c

    .line 766
    if-ne v1, v3, :cond_157

    .line 767
    iput v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    goto :goto_15c

    .line 768
    :cond_157
    if-ne v1, v5, :cond_15c

    .line 769
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    .line 772
    :cond_15c
    :goto_15c
    return-void
.end method

.method private setMainDisplayOff(Z)V
    .registers 5
    .param p1, "isEarly"    # Z

    .line 823
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 824
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenEnabled(IIZ)I

    goto :goto_24

    .line 826
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportProxLpScanEnabled:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    if-ltz v0, :cond_24

    .line 827
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "setMainDisplayOff: running keeping prox lp scan mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProxLpScanMode(I)V

    .line 829
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    .line 832
    :cond_24
    :goto_24
    return-void
.end method

.method private setMainDisplayOn(Z)V
    .registers 5
    .param p1, "isEarly"    # Z

    .line 835
    if-nez p1, :cond_18

    .line 836
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenEnabled(IIZ)I

    .line 837
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setKeyboardEnabled(IIZ)I

    .line 838
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    if-eqz v0, :cond_18

    .line 839
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->restartService()V

    .line 842
    :cond_18
    return-void
.end method

.method public static systemReady()V
    .registers 2

    .line 157
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_16

    .line 159
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1b

    .line 162
    :cond_16
    const-string v1, "systemReady: mainHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_1b
    return-void
.end method


# virtual methods
.method public clearHwParam(I)I
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->clearHwParam(I)I

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 900
    if-nez p2, :cond_3

    .line 901
    return-void

    .line 904
    :cond_3
    const-string v0, "dumping SemInputDeviceManagerService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const-string v1, ""

    if-eqz v0, :cond_1f

    .line 908
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->dump(Ljava/io/PrintWriter;)V

    .line 911
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->monitorService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    if-eqz v0, :cond_2b

    .line 912
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->monitorService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->dump(Ljava/io/PrintWriter;)V

    .line 915
    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    if-eqz v0, :cond_37

    .line 916
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->dump(Ljava/io/PrintWriter;)V

    .line 919
    :cond_37
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 920
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->dump(Ljava/io/PrintWriter;)V

    .line 923
    :cond_49
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    if-eqz v0, :cond_55

    .line 924
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->dump(Ljava/io/PrintWriter;)V

    .line 927
    :cond_55
    const-string v0, "end"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 931
    const-string v0, "end SemInputDeviceManagerService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method public enableMotion(Ljava/lang/String;ZLjava/lang/String;)I
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "client"    # Ljava/lang/String;

    .line 1052
    if-nez p1, :cond_4

    .line 1053
    const/4 v0, -0x4

    return v0

    .line 1056
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMotion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getTspSupportFeature(I)I

    move-result v0

    .line 1059
    .local v0, "feature":I
    const-string v1, "AIVF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1060
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_56

    .line 1061
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-nez v1, :cond_4a

    .line 1062
    const/4 v1, -0x1

    return v1

    .line 1065
    :cond_4a
    const/4 v2, 0x5

    if-eqz p2, :cond_51

    .line 1066
    invoke-virtual {v1, v2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->registerListener(ILjava/lang/String;)Z

    goto :goto_54

    .line 1068
    :cond_51
    invoke-virtual {v1, v2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->unregisterListener(ILjava/lang/String;)Z

    .line 1070
    :goto_54
    const/4 v1, 0x0

    return v1

    .line 1073
    :cond_56
    const/4 v1, -0x3

    return v1
.end method

.method public getAodActiveArea(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1333
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getAodActiveArea(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTSP()I
    .registers 2

    .line 951
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFolded:Z

    if-eqz v0, :cond_6

    .line 952
    const/4 v0, 0x2

    return v0

    .line 954
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public getFodInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getFodInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFodPosition(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1328
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getFodPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHwParam(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getHwParam(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPressStateAll()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 959
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getKeyPressStateAll()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLpDump(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1338
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getLpDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMotionControl(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 1102
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1103
    const/4 v0, -0x4

    return v0

    .line 1105
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v0, :cond_35

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMotionControl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->getMotionControl(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1109
    :cond_35
    const/4 v0, -0x2

    return v0
.end method

.method public getProxPowerOff(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1318
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getProxPowerOff(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScrubPosition(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1313
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getScrubPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpenPosition()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1367
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSpenPosition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportDevice(I)I
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportDevice(I)I

    move-result v0

    return v0
.end method

.method public getTspSupportFeature(I)I
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1308
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getTspSupportFeature(I)I

    move-result v0

    return v0
.end method

.method public isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 1090
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1091
    const/4 v0, -0x4

    return v0

    .line 1093
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v0, :cond_35

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnableMotion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->isEnableMotion(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1097
    :cond_35
    const/4 v0, -0x2

    return v0
.end method

.method public isKeyPressedByKeycode(I)Z
    .registers 3
    .param p1, "keycode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v0

    return v0
.end method

.method public isSupportMotion(Ljava/lang/String;)Z
    .registers 7
    .param p1, "type"    # Ljava/lang/String;

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getTspSupportFeature(I)I

    move-result v0

    .line 1036
    .local v0, "feature":I
    const-string v2, "AIVF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "isSupportMotion: "

    const-string v4, "SemInputDeviceManagerService"

    if-eqz v2, :cond_33

    .line 1037
    const/high16 v2, 0x200000

    and-int/2addr v2, v0

    if-eqz v2, :cond_33

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return v1

    .line 1042
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$registerServiceListener$0$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "folded"    # Ljava/lang/Boolean;

    .line 496
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFolded:Z

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fold State Changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFolded:Z

    if-eqz v1, :cond_18

    const-string v1, "folded"

    goto :goto_1a

    :cond_18
    const-string v1, "opened"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method

.method synthetic lambda$setDisplayStateToDevice$1$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(ZII)V
    .registers 4
    .param p1, "isEarly"    # Z
    .param p2, "stateForDevice"    # I
    .param p3, "type"    # I

    .line 747
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setDisplayStateForOcta(ZII)V

    .line 748
    return-void
.end method

.method synthetic lambda$setGripData$3$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(Ljava/lang/String;)V
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setGripData(Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$setLowSensitivityModeEnable$6$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 1292
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setLowSensitivityModeEnable(I)I

    return-void
.end method

.method synthetic lambda$setNoteMode$5$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 1201
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setNoteMode(I)I

    return-void
.end method

.method synthetic lambda$setSipMode$4$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 1189
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSipMode(I)I

    return-void
.end method

.method synthetic lambda$setSpenEnabled$7$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(IIZLjava/lang/String;)V
    .registers 6
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .param p4, "caller"    # Ljava/lang/String;

    .line 1350
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenEnabled(IIZLjava/lang/String;)I

    .line 1351
    return-void
.end method

.method synthetic lambda$setTspEnabled$2$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService(IIZLjava/lang/String;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .param p4, "caller"    # Ljava/lang/String;

    .line 1131
    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1132
    const/16 v1, 0x15

    if-ne p2, v1, :cond_20

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayState:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 1133
    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->isTspForceOff:Z

    .line 1134
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pauseService()V

    goto :goto_36

    .line 1135
    :cond_20
    const/16 v0, 0x16

    if-ne p2, v0, :cond_36

    .line 1136
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->isTspForceOff:Z

    if-eqz v0, :cond_36

    .line 1137
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setTspEnabled(IIZLjava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->restartService()V

    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->isTspForceOff:Z

    .line 1140
    return-void

    .line 1145
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setTspEnabled(IIZLjava/lang/String;)I

    .line 1146
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 970
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "registerCallback: not supported anymore. Please use registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_32

    .line 995
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback: not defined type #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return v0

    .line 991
    :pswitch_1d
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-nez v1, :cond_22

    .line 992
    return v0

    .line 993
    :cond_22
    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->registerListener(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 985
    :pswitch_27
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    if-nez v1, :cond_2c

    .line 986
    return v0

    .line 987
    :cond_2c
    invoke-virtual {v1, p1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->registerCallback(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27
        :pswitch_1d
        :pswitch_1d
        :pswitch_4
        :pswitch_4
        :pswitch_1d
    .end packed-switch
.end method

.method public registerListenerAtSystemReady()V
    .registers 5

    .line 558
    const-string v0, "SemInputDeviceManagerService"

    :try_start_2
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->coverManager:Lcom/samsung/android/cover/CoverManager;

    .line 559
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->coverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    .line 560
    const-string v1, "CoverManager listener register called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v2, "- CoverManagerListener register called\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_1c} :catch_1d

    .line 565
    goto :goto_56

    .line 562
    :catch_1d
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListenerAtSystemReady: cover : IllegalArgumentException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Exception CoverManagerListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_56
    return-void
.end method

.method public registerServiceListener()V
    .registers 9

    .line 468
    const-string v0, "\n"

    const-string v1, "SemInputDeviceManagerService"

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportSysinputEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportSysinputEnabled:Z

    .line 471
    const/4 v2, 0x1

    :try_start_d
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 472
    .local v3, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    if-eqz v3, :cond_34

    .line 473
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->displayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    .line 474
    const-string v4, "power manager listener register"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v5, "- DisplayStateListener register\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->afterDisplayOnRunable:[Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainRunnable:Ljava/lang/Runnable;

    aput-object v5, v4, v2

    .line 477
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->subRunnable:Ljava/lang/Runnable;

    aput-object v6, v4, v5

    goto :goto_40

    .line 479
    :cond_34
    const-string v4, "Failed to get DisplayManagerInternal service"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v5, "- Failed to get DisplayManagerInternal service\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_40} :catch_41

    .line 485
    .end local v3    # "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    :goto_40
    goto :goto_78

    .line 482
    :catch_41
    move-exception v3

    .line 483
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerServiceListener: pms : IllegalArgumentException e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Exception DisplayStateListener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_78
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 488
    if-eqz v3, :cond_f6

    .line 489
    const-string v4, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    .line 490
    .local v3, "displays":[Landroid/view/Display;
    if-eqz v3, :cond_e9

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Builtin displays: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    array-length v4, v3

    if-le v4, v2, :cond_e0

    .line 493
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    const-class v5, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/devicestate/DeviceStateManager;

    .line 494
    .local v4, "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    if-eqz v4, :cond_d4

    .line 495
    new-instance v5, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    new-instance v7, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    invoke-direct {v5, v6, v7}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 499
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {v4, v6, v5}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 500
    const-string v5, "foldStateListener register"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v6, "- FoldStateListener register\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e0

    .line 503
    :cond_d4
    const-string v5, "Failed to get DeviceStateManager"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v6, "- Failed to get DeviceStateManager\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .end local v4    # "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    :cond_e0
    :goto_e0
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    goto :goto_f5

    .line 509
    :cond_e9
    const-string v4, "Failed to get builtin displays"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v5, "- Failed to get builtin displays\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .end local v3    # "displays":[Landroid/view/Display;
    :goto_f5
    goto :goto_102

    .line 513
    :cond_f6
    const-string v3, "Failed to get DisplayManager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v4, "- Failed to get DisplayManager\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :goto_102
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportProxLpScanEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportProxLpScanEnabled:Z

    .line 518
    if-eqz v3, :cond_1ac

    .line 520
    :try_start_10c
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 521
    .local v3, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v3, :cond_168

    .line 522
    const v4, 0x10055

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 523
    .local v4, "lpScanSensor":Landroid/hardware/Sensor;
    if-eqz v4, :cond_15b

    .line 524
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v5, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    .line 526
    .local v2, "ret":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sensor listener register: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- SensorEventListener register: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    nop

    .end local v2    # "ret":Z
    goto :goto_167

    .line 529
    :cond_15b
    const-string v2, "lpscanSensor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v5, "- SensorEventListener: lpscanSensor is null\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .end local v4    # "lpScanSensor":Landroid/hardware/Sensor;
    :goto_167
    goto :goto_174

    .line 533
    :cond_168
    const-string v2, "Failed to get Sensor service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v4, "- Failed to get SensorManger\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_174
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10c .. :try_end_174} :catch_175

    .line 539
    .end local v3    # "sensorManager":Landroid/hardware/SensorManager;
    :goto_174
    goto :goto_1ac

    .line 536
    :catch_175
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerServiceListener: sensor : IllegalArgumentException e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Exception SensorEventListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1ac
    :goto_1ac
    const-string v0, "registerServiceListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method public runEmergency(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->runEmergency(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runEmergencyCurrentTsp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getCurrentTSP()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->runEmergency(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRawdataTsp(I[I)I
    .registers 7
    .param p1, "devid"    # I
    .param p2, "data"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 1024
    aget v2, p2, v1

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1027
    .end local v1    # "ii":I
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRawdataTsp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    .line 1028
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1027
    const-string v2, "SemInputDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    array-length v2, p2

    invoke-interface {v1, p1, v0, v2}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->sendRawdataTsp(ILjava/util/ArrayList;I)I

    move-result v1

    return v1
.end method

.method public setAodEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1237
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setAodEnable(I)I

    move-result v0

    return v0
.end method

.method public setAodRect(IIII)I
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1232
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setAodRect(IIII)I

    move-result v0

    return v0
.end method

.method public setBrushEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1227
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setBrushEnable(I)I

    move-result v0

    return v0
.end method

.method public setCoverMode(II)I
    .registers 4
    .param p1, "mode"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1207
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setCoverMode(II)I

    move-result v0

    return v0
.end method

.method public setEarDetectEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1267
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setEarDetectEnable(I)I

    move-result v0

    return v0
.end method

.method public setFodEnable(III)I
    .registers 5
    .param p1, "mode"    # I
    .param p2, "pressFast"    # I
    .param p3, "strictMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setFodEnable(III)I

    move-result v0

    return v0
.end method

.method public setFodIconVisible(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1247
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setFodIconVisible(I)I

    move-result v0

    return v0
.end method

.method public setFodLpMode(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setFodLpMode(I)I

    move-result v0

    return v0
.end method

.method public setFodRect(IIII)I
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setFodRect(IIII)I

    move-result v0

    return v0
.end method

.method public setFpIntControl(I)I
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1277
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getCurrentTSP()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setFpIntControl(II)I

    move-result v0

    return v0
.end method

.method public setGripData(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1169
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1170
    const/4 v0, 0x0

    return v0
.end method

.method public setLowSensitivityModeEnable(I)I
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1293
    const/4 v0, 0x0

    return v0
.end method

.method public setMotionControl(Ljava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 1078
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-nez v0, :cond_6

    .line 1079
    const/4 v0, -0x1

    return v0

    .line 1082
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMotionControl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getTspSupportFeature(I)I

    move-result v0

    .line 1085
    .local v0, "feature":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-virtual {v1, p1, p2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->setMotionControl(Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public setNoteMode(I)I
    .registers 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1195
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->SUPPORT_AMOLED_DISPLAY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_32

    .line 1196
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayIsEarly:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayState:[I

    aget v0, v0, v2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_32

    .line 1197
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoteMode,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " skip for incell"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemInputDeviceManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return v1

    .line 1201
    :cond_32
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1202
    return v1
.end method

.method public setPocketModeEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1287
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPocketModeEnable(I)I

    move-result v0

    return v0
.end method

.method public setProxPowerOff(II)I
    .registers 4
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProxPowerOff(II)I

    move-result v0

    return v0
.end method

.method public setSingletapEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1262
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSingletapEnable(I)I

    move-result v0

    return v0
.end method

.method public setSipMode(I)I
    .registers 7
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 1176
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getTspSupportFeature(I)I

    move-result v0

    .line 1177
    .local v0, "feature":I
    const-string v2, "ALL"

    if-lez p1, :cond_17

    .line 1178
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    const/16 v4, 0xb

    invoke-virtual {v3, v2, v4, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->setMotionControl(Ljava/lang/String;II)I

    goto :goto_1e

    .line 1180
    :cond_17
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    const/16 v4, 0xc

    invoke-virtual {v3, v2, v4, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->setMotionControl(Ljava/lang/String;II)I

    .line 1183
    .end local v0    # "feature":I
    :cond_1e
    :goto_1e
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->SUPPORT_AMOLED_DISPLAY:Z

    const/4 v2, 0x0

    if-nez v0, :cond_4f

    .line 1184
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayIsEarly:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentDisplayState:[I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    .line 1185
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSipMode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": skip for incell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    return v2

    .line 1189
    :cond_4f
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1190
    return v2
.end method

.method public setSpayEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1217
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpayEnable(I)I

    move-result v0

    return v0
.end method

.method public setSpenAodEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenAodEnable(I)I

    move-result v0

    return v0
.end method

.method public setSpenBleChargeMode(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1377
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenBleChargeMode(I)I

    move-result v0

    return v0
.end method

.method public setSpenCoverType(I)I
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1362
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenCoverType(I)I

    move-result v0

    return v0
.end method

.method public setSpenEnabled(IIZ)I
    .registers 13
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getCallerClassName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1349
    .local v0, "caller":Ljava/lang/String;
    sget-object v7, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;IIZLjava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1352
    const/4 v1, 0x0

    return v1
.end method

.method public setSpenLowCurrentMode(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenLowCurrentMode(I)I

    move-result v0

    return v0
.end method

.method public setSpenPdctLowSensitivityEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenPdctLowSensitivityEnable(I)I

    move-result v0

    return v0
.end method

.method public setSpenPower(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1372
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenPower(I)I

    move-result v0

    return v0
.end method

.method public setSpenPowerSavingMode(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenSavingMode(I)I

    move-result v0

    return v0
.end method

.method public setStylusEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setStylusEnable(I)I

    move-result v0

    return v0
.end method

.method public setSyncChanged(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSyncChanged(I)I

    move-result v0

    return v0
.end method

.method public setTemperature(I)I
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1212
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setTemperature(I)I

    move-result v0

    return v0
.end method

.method public setTouchableArea(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setTouchableArea(I)I

    move-result v0

    return v0
.end method

.method public setTspEnabled(IIZ)I
    .registers 13
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getCallerClassName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, "caller":Ljava/lang/String;
    sget-object v7, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;IIZLjava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1147
    const/4 v1, 0x0

    return v1
.end method

.method public unregisterCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 977
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "registerCallback: not supported anymore. Please use unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_32

    .line 1014
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener: not defined type #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return v0

    .line 1010
    :pswitch_1d
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-nez v1, :cond_22

    .line 1011
    return v0

    .line 1012
    :cond_22
    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->unregisterListener(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 1004
    :pswitch_27
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    if-nez v1, :cond_2c

    .line 1005
    return v0

    .line 1006
    :cond_2c
    invoke-virtual {v1, p1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->unregisterCallback(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27
        :pswitch_1d
        :pswitch_1d
        :pswitch_4
        :pswitch_4
        :pswitch_1d
    .end packed-switch
.end method
