.class public final Lcom/android/server/dreams/DreamManagerService;
.super Lcom/android/server/SystemService;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamManagerService$LocalService;,
        Lcom/android/server/dreams/DreamManagerService$BinderService;,
        Lcom/android/server/dreams/DreamManagerService$DreamHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "DreamManagerService"


# instance fields
.field public final mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

.field public final mAmbientDisplayComponent:Landroid/content/ComponentName;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/server/dreams/DreamController;

.field public final mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

.field public mCurrentDreamCanDoze:Z

.field public mCurrentDreamDozeScreenBrightness:I

.field public mCurrentDreamDozeScreenState:I

.field public mCurrentDreamIsDozing:Z

.field public mCurrentDreamIsPreview:Z

.field public mCurrentDreamIsWaking:Z

.field public mCurrentDreamName:Landroid/content/ComponentName;

.field public mCurrentDreamToken:Landroid/os/Binder;

.field public mCurrentDreamUserId:I

.field public final mDismissDreamOnActivityStart:Z

.field public mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mDozeEnabledObserver:Landroid/database/ContentObserver;

.field public final mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mDreamOverlayServiceName:Landroid/content/ComponentName;

.field public final mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLogger;

.field public mDreamsOnlyEnabledForSystemUser:Z

.field public mForceAmbientDisplayEnabled:Z

.field public final mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mSystemPropertiesChanged:Ljava/lang/Runnable;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$7fsbHggt18AiNDHG2sShSOLJWe8(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/dreams/DreamManagerService;->lambda$startDreamLocked$0(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8PbxzJ_iQSeiwzaYzcIxSLlQRfY(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->lambda$cleanupDreamLocked$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmController(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentDreamCanDoze(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentDreamIsDozing(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentDreamIsWaking(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentDreamName(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentDreamToken(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDreamOverlayServiceName(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamOverlayServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupDreamLocked(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishSelfInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->finishSelfInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforceAmbientDisplayEnabledInternal(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->forceAmbientDisplayEnabledInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetActiveDreamComponentInternal(Lcom/android/server/dreams/DreamManagerService;Z)Landroid/content/ComponentName;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getActiveDreamComponentInternal(Z)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDefaultDreamComponentForUser(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDozeComponent(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDreamComponentsForUser(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misDreamingInternal(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrequestAwakenInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->requestAwakenInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestDreamInternal(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msemStartDozingInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;IIIZ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/dreams/DreamManagerService;->semStartDozingInternal(Landroid/os/IBinder;IIIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDreamComponentsForUser(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartDozingInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartDreamInternal(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopDozingInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopDreamInternal(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopDreamLocked(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtestDreamInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->testDreamInternal(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwritePulseGestureEnabled(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 113
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 591
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 602
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$6;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    .line 858
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$7;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    .line 138
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 139
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    .line 140
    new-instance v2, Lcom/android/server/dreams/DreamController;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V

    iput-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    const-string/jumbo v0, "power"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 143
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 144
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/16 v1, 0x40

    const-string v2, "DreamManagerService"

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 146
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 147
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 148
    new-instance v0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040361

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/dreams/DreamUiEventLoggerImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLogger;

    .line 150
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mAmbientDisplayComponent:Landroid/content/ComponentName;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsOnlyEnabledForSystemUser:Z

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110115

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDismissDreamOnActivityStart:Z

    return-void
.end method

.method public static componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, ","

    .line 583
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 584
    array-length v0, p0

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    .line 585
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 586
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 569
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_24

    aget-object v3, p0, v2

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1a

    const/16 v4, 0x2c

    .line 572
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    :cond_1a
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 576
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$cleanupDreamLocked$1()V
    .registers 2

    .line 547
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyDreamStateChanged(Z)V

    return-void
.end method

.method private synthetic lambda$startDreamLocked$0(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .registers 18

    move-object v0, p0

    .line 499
    iget-object v1, v0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyDreamStateChanged(Z)V

    .line 500
    iget-object v3, v0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    iget-object v10, v0, Lcom/android/server/dreams/DreamManagerService;->mDreamOverlayServiceName:Landroid/content/ComponentName;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/dreams/DreamController;->startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public final checkPermission(Ljava/lang/String;)V
    .registers 4

    .line 552
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 554
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied to process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must have permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final chooseDreamForUser(ZI)Landroid/content/ComponentName;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 363
    invoke-virtual {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_e

    move-object v0, p1

    :cond_e
    return-object v0

    .line 366
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 367
    array-length p1, p0

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    aget-object v0, p0, p1

    :cond_1b
    return-object v0
.end method

.method public final cleanupDreamLocked()V
    .registers 4

    .line 528
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mAmbientDisplayComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 530
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->DREAM_STOP:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLogger;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 532
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-interface {v0, v1, v2}, Lcom/android/server/dreams/DreamUiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x0

    .line 534
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    .line 535
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsPreview:Z

    .line 537
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 538
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    .line 539
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    .line 540
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz v1, :cond_35

    .line 541
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 542
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 544
    :cond_35
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    const/4 v0, -0x1

    .line 545
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 546
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dreamsEnabledForUser(I)Z
    .registers 2

    .line 455
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsOnlyEnabledForSystemUser:Z

    if-eqz p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 9

    const-string v0, "DREAM MANAGER (dumpsys dreams)"

    .line 193
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsWaking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mForceAmbientDisplayEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mForceAmbientDisplayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDreamsOnlyEnabledForSystemUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsOnlyEnabledForSystemUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamDozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 205
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamDozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDozeComponent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 210
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v2, Lcom/android/server/dreams/DreamManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/dreams/DreamManagerService$3;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    const-string v4, ""

    const-wide/16 v5, 0xc8

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    return-void
.end method

.method public final finishSelfInternal(Landroid/os/IBinder;Z)V
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_c

    const-string p1, "finished self"

    .line 258
    invoke-virtual {p0, p2, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(ZLjava/lang/String;)V

    .line 260
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final forceAmbientDisplayEnabledInternal(Z)V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mForceAmbientDisplayEnabled:Z

    .line 354
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getActiveDreamComponentInternal(Z)Landroid/content/ComponentName;
    .registers 3

    .line 358
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(ZI)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .registers 3

    .line 426
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screensaver_default_component"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    goto :goto_15

    .line 429
    :cond_11
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method public final getDozeComponent()Landroid/content/ComponentName;
    .registers 2

    .line 433
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getDozeComponent(I)Landroid/content/ComponentName;
    .registers 2

    .line 445
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result p1

    if-nez p1, :cond_11

    .line 446
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 8

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dreamsEnabledForUser(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 392
    :cond_8
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_32

    .line 400
    array-length v2, v0

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_32

    aget-object v4, v0, v3

    .line 401
    invoke-virtual {p0, v4}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 402
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 408
    :cond_32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Falling back to default dream "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DreamManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/ComponentName;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 460
    :try_start_3
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_10

    nop

    :catch_10
    :cond_10
    return-object v0
.end method

.method public final isDreamingInternal()Z
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsPreview:Z

    if-nez v1, :cond_11

    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 222
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 6

    const/16 v0, 0x258

    if-ne p1, v0, :cond_43

    .line 167
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_d

    .line 168
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 170
    :cond_d
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 179
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "doze_pulse_on_double_tap"

    .line 180
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 179
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    .line 184
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDismissDreamOnActivityStart:Z

    if-eqz p1, :cond_43

    .line 185
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v0, 0x4

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    :cond_43
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 160
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$BinderService-IA;)V

    const-string v2, "dreams"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 161
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    new-instance v2, Lcom/android/server/dreams/DreamManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$LocalService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final requestAwakenInternal(Ljava/lang/String;)V
    .registers 6

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 240
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 241
    invoke-virtual {p0, v3, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(ZLjava/lang/String;)V

    return-void
.end method

.method public final requestDreamInternal()V
    .registers 5

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 231
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 232
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->nap(J)V

    return-void
.end method

.method public final semStartDozingInternal(Landroid/os/IBinder;IIIZ)V
    .registers 8

    .line 318
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_20

    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-eqz p1, :cond_20

    .line 320
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 321
    iput p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 322
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(IIIZ)V

    .line 323
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-nez p1, :cond_20

    const/4 p1, 0x1

    .line 324
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 325
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 328
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .registers 4

    .line 419
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 421
    invoke-static {p2}, Lcom/android/server/dreams/DreamManagerService;->componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "screensaver_components"

    .line 419
    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final startDozingInternal(Landroid/os/IBinder;II)V
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_20

    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-eqz p1, :cond_20

    .line 297
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 298
    iput p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 299
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    .line 301
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-nez p1, :cond_20

    const/4 p1, 0x1

    .line 302
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 303
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 306
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final startDreamInternal(Z)V
    .registers 6

    .line 270
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(ZI)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_11

    const/4 v3, 0x0

    .line 275
    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V

    .line 277
    :cond_11
    monitor-exit v1

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final startDreamLocked(Landroid/content/ComponentName;ZZI)V
    .registers 16

    .line 469
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    const-string v1, "DreamManagerService"

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 470
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsPreview:Z

    if-ne v0, p2, :cond_20

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-ne v0, p3, :cond_20

    iget v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    if-ne v0, p4, :cond_20

    const-string p0, "Already in target dream."

    .line 474
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    const/4 v0, 0x1

    const-string/jumbo v2, "starting new dream"

    .line 478
    invoke-virtual {p0, v0, v2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(ZLjava/lang/String;)V

    const-string v2, "Entering dreamland."

    .line 480
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 483
    iput-object v5, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    .line 484
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 485
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsPreview:Z

    .line 486
    iput-boolean p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 487
    iput p4, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    .line 489
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mAmbientDisplayComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 491
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->DREAM_START:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 492
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLogger;

    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 493
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-interface {v1, v2, v3}, Lcom/android/server/dreams/DreamUiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V

    .line 496
    :cond_55
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "startDream"

    .line 497
    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v2, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stopDozingInternal(Landroid/os/IBinder;)V
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_19

    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    .line 339
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 340
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 341
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    .line 344
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final stopDreamInternal(ZLjava/lang/String;)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(ZLjava/lang/String;)V

    .line 284
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final stopDreamLocked(ZLjava/lang/String;)V
    .registers 5

    .line 506
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v0, :cond_28

    const-string v0, "DreamManagerService"

    if-eqz p1, :cond_11

    const-string v1, "Leaving dreamland."

    .line 508
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    goto :goto_1e

    .line 510
    :cond_11
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    if-eqz v1, :cond_16

    return-void

    :cond_16
    const-string v1, "Gently waking up from dream."

    .line 513
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    .line 517
    :goto_1e
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    return-void
.end method

.method public final testDreamInternal(Landroid/content/ComponentName;I)V
    .registers 6

    .line 264
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    :try_start_5
    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V

    .line 266
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final validateDream(Landroid/content/ComponentName;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 372
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    const-string v1, "Dream "

    const-string v2, "DreamManagerService"

    if-nez p0, :cond_26

    .line 374
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 376
    :cond_26
    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_58

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_DREAM_SERVICE"

    .line 377
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    .line 378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not available because its manifest is missing the "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " permission on the dream service declaration."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_58
    const/4 p0, 0x1

    return p0
.end method

.method public final writePulseGestureEnabled()V
    .registers 2

    .line 560
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 561
    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result p0

    .line 562
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerInternal;->setPulseGestureEnabled(Z)V

    return-void
.end method
