.class public Lcom/android/server/ssrm/DynamicLoadDetector;
.super Ljava/lang/Object;
.source "DynamicLoadDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final MONITORING_TEMP:I = 0x154

.field static final MSG_TYPE_CHECK_FOREGROUND_APP:I = 0x4

.field static final MSG_TYPE_LOAD_DETECTED:I = 0x2

.field static final MSG_TYPE_RESTART_LOAD_DETECT:I = 0x3

.field static final MSG_TYPE_START_MONITORING:I = 0x1

.field static final TAG:Ljava/lang/String;

.field static mSiopShift:Z

.field static sHandler:Landroid/os/Handler;


# instance fields
.field final APP_START_DELAY:I

.field MAX_SHIFT_TIME:J

.field MAX_SHIFT_TIME_FOR_GPU:J

.field final RESTART_MONITORING_DELAY:I

.field final SIOP_SHIFT_TIMEOUT:I

.field final SIOP_SHIFT_TIMEOUT_FOR_GPU:I

.field final TYPE_CPU:I

.field final TYPE_GPU:I

.field final TYPE_NONE:I

.field fakeCount:I

.field mContext:Landroid/content/Context;

.field mForegroundPackageName:Ljava/lang/String;

.field mIsFirstShift:Z

.field mIsGpuSiopTableExist:Z

.field mIsPIDUsed:Z

.field mIsTempSatisfied:Z

.field mIsTimeout:Z

.field mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

.field mNativeMonitoringOn:Z

.field private mResumePackageChangedReceiver:Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

.field mShiftStartTime:J

.field mShiftTotalTime:J

.field mSiopShiftRunnable:Ljava/lang/Runnable;

.field mTemperatureCheckRunnable:Ljava/lang/Runnable;

.field mTimeInit:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    const-class v0, Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    .line 24
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->APP_START_DELAY:I

    .line 44
    const v0, 0x249f0

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->SIOP_SHIFT_TIMEOUT:I

    .line 46
    const v0, 0x41eb0

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->SIOP_SHIFT_TIMEOUT_FOR_GPU:I

    .line 48
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->RESTART_MONITORING_DELAY:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->fakeCount:I

    .line 52
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTimeInit:Z

    .line 54
    const-wide/32 v1, 0x124f80

    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->MAX_SHIFT_TIME:J

    .line 56
    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->MAX_SHIFT_TIME_FOR_GPU:J

    .line 58
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    .line 60
    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 62
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsGpuSiopTableExist:Z

    .line 101
    new-instance v1, Lcom/android/server/ssrm/DynamicLoadDetector$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/DynamicLoadDetector$2;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V

    iput-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    .line 154
    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->TYPE_NONE:I

    .line 156
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->TYPE_CPU:I

    .line 158
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->TYPE_GPU:I

    .line 164
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    .line 166
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsPIDUsed:Z

    .line 295
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    .line 323
    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTempSatisfied:Z

    .line 327
    new-instance v0, Lcom/android/server/ssrm/DynamicLoadDetector$3;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/DynamicLoadDetector$3;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTemperatureCheckRunnable:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-direct {v0, p1}, Lcom/android/server/ssrm/LoadDetectMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    .line 72
    new-instance v0, Lcom/android/server/ssrm/DynamicLoadDetector$1;

    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/DynamicLoadDetector$1;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    .line 94
    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTemperatureCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    new-instance v0, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;-><init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mResumePackageChangedReceiver:Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

    .line 97
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    .line 98
    .local v0, "eventManager":Lcom/android/server/ssrm/common/EventManager;
    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mResumePackageChangedReceiver:Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 99
    return-void
.end method

.method private pauseLoadDetect()V
    .registers 3

    .line 418
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 419
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "pauseLoadDetect: !@# Detecting OFF"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_b
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->pauseLoadDetect()V

    .line 422
    return-void
.end method

.method public static reportLoadState(I)V
    .registers 4
    .param p0, "state"    # I

    .line 425
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 426
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLoadState: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_1c
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2e

    .line 429
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 430
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 431
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 432
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2e
    return-void
.end method

.method public static reportSingleBoostState(I)V
    .registers 5
    .param p0, "state"    # I

    .line 440
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    if-nez v0, :cond_5

    .line 441
    return-void

    .line 444
    :cond_5
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3a

    .line 445
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 446
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 447
    if-nez p0, :cond_14

    const/4 v1, 0x5

    goto :goto_15

    :cond_14
    const/4 v1, 0x6

    :goto_15
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 448
    sget-boolean v1, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v1, :cond_35

    .line 449
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSingleBoostState:: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_35
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 453
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3a
    return-void
.end method

.method private startMonitoringDelayed()V
    .registers 5

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->fakeCount:I

    .line 384
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 385
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 386
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 387
    return-void
.end method

.method private stopMonitoring()V
    .registers 2

    .line 373
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->removeMessagesAndCallbackForLoadDetect()V

    .line 374
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-eqz v0, :cond_a

    .line 375
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopNativeMonitoring()V

    .line 377
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isSiopShifted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(Z)V

    .line 380
    :cond_14
    return-void
.end method

.method private stopNativeMonitoring()V
    .registers 3

    .line 399
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "!@# Monitoring OFF"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    .line 401
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->stopLoadMonitor()V

    .line 402
    return-void
.end method

.method public static x([I)Ljava/lang/String;
    .registers 4
    .param p0, "e"    # [I

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 478
    aget v2, p0, v1

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 480
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method enableHeavyuser(ZI)V
    .registers 8
    .param p1, "on"    # Z
    .param p2, "type"    # I

    .line 252
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 253
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_31

    .line 254
    nop

    .line 255
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 256
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_31

    .line 258
    :try_start_f
    const-string v2, "Heavyuser"

    if-eqz p1, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    :cond_27
    const-string v3, "0"

    :goto_29
    invoke-interface {v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2c} :catch_2d

    .line 261
    goto :goto_31

    .line 259
    :catch_2d
    move-exception v2

    .line 260
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 264
    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    return-void
.end method

.method isHeavyuserTargetApp()Z
    .registers 6

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "isNotHeavyuserTargetApp":Z
    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 270
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_74

    .line 271
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isMlPidModel()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 272
    iget-object v4, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 273
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isSetupWizardFinished()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 274
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isBoostingDisabled()Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isHeavyDetectDisabled()Z

    move-result v4

    if-nez v4, :cond_3a

    iget-object v4, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    .line 275
    invoke-virtual {v1, v4}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    iget-boolean v4, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTempSatisfied:Z

    if-eqz v4, :cond_38

    goto :goto_3a

    :cond_38
    move v4, v3

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v4, v2

    :goto_3b
    move v0, v4

    goto :goto_74

    .line 277
    :cond_3d
    iget-object v4, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    .line 278
    invoke-virtual {v1, v4}, Lcom/android/server/ssrm/SortingMachine;->isGame(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_72

    iget-object v4, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    .line 279
    invoke-virtual {v1, v4}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_72

    iget-object v4, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    .line 280
    invoke-virtual {v1, v4}, Lcom/android/server/ssrm/SortingMachine;->isTorrentApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 281
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isSetupWizardFinished()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 282
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isBoostingDisabled()Z

    move-result v4

    if-nez v4, :cond_72

    .line 283
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isHeavyDetectDisabled()Z

    move-result v4

    if-eqz v4, :cond_70

    goto :goto_72

    :cond_70
    move v4, v3

    goto :goto_73

    :cond_72
    :goto_72
    move v4, v2

    :goto_73
    move v0, v4

    .line 287
    :cond_74
    :goto_74
    if-nez v0, :cond_77

    goto :goto_78

    :cond_77
    move v2, v3

    :goto_78
    return v2
.end method

.method isMlPidModel()Z
    .registers 3

    .line 291
    const-string v0, "dev.ssrm.gamelevel"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isSiopShifted()Z
    .registers 2

    .line 151
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    return v0
.end method

.method onFgAppChanged()V
    .registers 5

    .line 309
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 310
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFgAppChanged: mForegroundPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_1e
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 314
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 315
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 316
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    return-void

    .line 320
    .end local v0    # "msg":Landroid/os/Message;
    :cond_39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->scheduleMonitoring(Z)V

    .line 321
    return-void
.end method

.method protected onLoadDetected(I)V
    .registers 15
    .param p1, "state"    # I

    .line 115
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 116
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadDetected:: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1c
    const/4 v0, 0x0

    .line 120
    .local v0, "STATE_CPU_HIGH_LOAD_END":I
    const/4 v1, 0x1

    .line 121
    .local v1, "STATE_CPU_HIGH_LOAD_START":I
    const/4 v2, 0x2

    .line 122
    .local v2, "STATE_GPU_HIGH_LOAD_END":I
    const/4 v3, 0x3

    .line 123
    .local v3, "STATE_GPU_HIGH_LOAD_START":I
    const/4 v4, 0x4

    .line 124
    .local v4, "STATE_MODERATELY_HEAVY_LOAD_START":I
    const/4 v5, 0x5

    .line 125
    .local v5, "STATE_CPU_SINGLE_BOOST_END":I
    const/4 v6, 0x6

    .line 127
    .local v6, "STATE_CPU_SINGLE_BOOST_START":I
    sget-object v7, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 128
    .local v7, "msg":Landroid/os/Message;
    sparse-switch p1, :sswitch_data_6a

    goto :goto_68

    .line 132
    :sswitch_2d
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->removeMessagesAndCallbackForLoadDetect()V

    .line 133
    const/4 v8, 0x1

    const/4 v9, 0x3

    if-ne p1, v9, :cond_36

    const/4 v10, 0x2

    goto :goto_37

    :cond_36
    move v10, v8

    :goto_37
    invoke-virtual {p0, v8, v10}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(ZI)V

    .line 134
    sget-object v8, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    .line 135
    sget-boolean v11, Lcom/android/server/ssrm/Feature;->PRODUCT_B2Q:Z

    if-nez v11, :cond_4e

    sget-boolean v11, Lcom/android/server/ssrm/Feature;->PRODUCT_Q2Q:Z

    if-nez v11, :cond_4e

    sget-boolean v11, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2200:Z

    if-nez v11, :cond_4e

    sget-boolean v11, Lcom/android/server/ssrm/Feature;->CHIP_SDM8450:Z

    if-eqz v11, :cond_54

    :cond_4e
    if-ne p1, v9, :cond_54

    .line 137
    const-wide/32 v11, 0x41eb0

    goto :goto_57

    .line 138
    :cond_54
    const-wide/32 v11, 0x249f0

    .line 134
    :goto_57
    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    iput v9, v7, Landroid/os/Message;->what:I

    .line 140
    sget-object v8, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const-wide/32 v9, 0xea60

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 141
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->pauseLoadDetect()V

    .line 142
    nop

    .line 146
    :goto_68
    return-void

    nop

    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_2d
        0x3 -> :sswitch_2d
        0x6 -> :sswitch_2d
    .end sparse-switch
.end method

.method public onScreenOff()V
    .registers 3

    .line 469
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 470
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "onScreenOff: stopMonitoring"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_b
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopMonitoring()V

    .line 473
    return-void
.end method

.method public onScreenOn()V
    .registers 6

    .line 456
    nop

    .line 457
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    .line 458
    .local v0, "thermistor":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v1

    goto :goto_10

    :cond_e
    const/16 v1, -0x3e7

    .line 459
    .local v1, "lrp":I
    :goto_10
    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    if-eqz v2, :cond_1f

    sget-boolean v2, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    if-nez v2, :cond_1f

    const/16 v2, 0x154

    if-ge v1, v2, :cond_1f

    .line 460
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 462
    :cond_1f
    sget-boolean v2, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v2, :cond_47

    .line 463
    sget-object v2, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenOn: mIsTimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lrp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->onFgAppChanged()V

    .line 466
    return-void
.end method

.method removeMessagesAndCallbackForLoadDetect()V
    .registers 3

    .line 221
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 222
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "removeMessagesAndCallbackForLoadDetect"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_b
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    return-void
.end method

.method resumeLoadDetect()V
    .registers 4

    .line 405
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    if-eqz v0, :cond_23

    .line 406
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 407
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeLoadDetect: mIsTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_22
    return-void

    .line 411
    :cond_23
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 412
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "resumeLoadDetect: !@# Detecting ON"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_2e
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->resumeLoadDetect()V

    .line 415
    return-void
.end method

.method scheduleMonitoring(Z)V
    .registers 6
    .param p1, "startNow"    # Z

    .line 349
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isHeavyuserTargetApp()Z

    move-result v0

    .line 351
    .local v0, "needToMonitorLoad":Z
    sget-boolean v1, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 352
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleMonitoring:: needToMonitorLoad = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_20
    if-eqz v0, :cond_30

    .line 356
    iget-boolean v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-nez v1, :cond_44

    .line 357
    if-eqz p1, :cond_2c

    .line 358
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->startNativeMonitoring()V

    goto :goto_44

    .line 360
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->startMonitoringDelayed()V

    goto :goto_44

    .line 364
    :cond_30
    iget-boolean v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isSiopShifted()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 365
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopMonitoring()V

    .line 367
    :cond_3d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 368
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 370
    :cond_44
    :goto_44
    return-void
.end method

.method setCondition(ZI)V
    .registers 7
    .param p1, "isShift"    # Z
    .param p2, "type"    # I

    .line 231
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->isHeavyuserTargetApp()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_22

    .line 232
    invoke-virtual {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->removeMessagesAndCallbackForLoadDetect()V

    .line 233
    invoke-direct {p0}, Lcom/android/server/ssrm/DynamicLoadDetector;->stopNativeMonitoring()V

    .line 234
    invoke-virtual {p0, v3, v3}, Lcom/android/server/ssrm/DynamicLoadDetector;->enableHeavyuser(ZI)V

    .line 235
    iput-boolean v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 236
    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 237
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 238
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "setCondition: NOT isHeavyuserTargetApp, return "

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_21
    return-void

    .line 243
    :cond_22
    if-nez p1, :cond_2a

    .line 244
    invoke-virtual {p0, v3, v3}, Lcom/android/server/ssrm/DynamicLoadDetector;->enableHeavyuser(ZI)V

    .line 245
    iput-wide v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    goto :goto_2e

    .line 247
    :cond_2a
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/ssrm/DynamicLoadDetector;->enableHeavyuser(ZI)V

    .line 249
    :goto_2e
    return-void
.end method

.method shiftSiopTable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(ZI)V

    .line 162
    return-void
.end method

.method shiftSiopTable(ZI)V
    .registers 12
    .param p1, "enable"    # Z
    .param p2, "type"    # I

    .line 169
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 170
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shiftSiopTable:: enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_26
    sput-boolean p1, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    .line 175
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_8d

    .line 176
    iget-boolean v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    if-nez v3, :cond_55

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    .line 178
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    .line 179
    if-eqz v0, :cond_8f

    .line 180
    sget-object v3, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shiftSiopTable:: mShiftStartTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 183
    :cond_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 184
    .local v3, "time":J
    iget-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    iget-wide v7, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    sub-long v7, v3, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    .line 185
    if-eqz v0, :cond_8a

    .line 186
    sget-object v5, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shiftSiopTable:: mShiftTotalTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIsTimeout = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_8a
    iput-wide v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftStartTime:J

    .line 190
    .end local v3    # "time":J
    goto :goto_8f

    .line 192
    :cond_8d
    iput-boolean v1, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsFirstShift:Z

    .line 195
    :cond_8f
    :goto_8f
    iget-boolean v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTimeInit:Z

    if-nez v3, :cond_ad

    .line 196
    const-string v3, "dev.sdhms.hp"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "hp":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ad

    .line 198
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 199
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsPIDUsed:Z

    .line 201
    :cond_ab
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mTimeInit:Z

    .line 205
    .end local v3    # "hp":Ljava/lang/String;
    :cond_ad
    iget-boolean v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsPIDUsed:Z

    if-nez v3, :cond_ea

    .line 206
    iget-boolean v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsGpuSiopTableExist:Z

    if-eqz v3, :cond_c0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_c0

    iget-wide v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    iget-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->MAX_SHIFT_TIME_FOR_GPU:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_c8

    :cond_c0
    iget-wide v3, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mShiftTotalTime:J

    iget-wide v5, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->MAX_SHIFT_TIME:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_ea

    .line 208
    :cond_c8
    iput-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    .line 209
    invoke-virtual {p0, v1, v1}, Lcom/android/server/ssrm/DynamicLoadDetector;->setCondition(ZI)V

    .line 210
    if-eqz v0, :cond_e9

    .line 211
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shiftSiopTable:: mIsTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_e9
    return-void

    .line 217
    :cond_ea
    sget-boolean v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mSiopShift:Z

    invoke-virtual {p0, v0, p2}, Lcom/android/server/ssrm/DynamicLoadDetector;->setCondition(ZI)V

    .line 218
    return-void
.end method

.method startNativeMonitoring()V
    .registers 3

    .line 390
    iget-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTimeout:Z

    if-eqz v0, :cond_5

    .line 391
    return-void

    .line 393
    :cond_5
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "!@# Monitoring ON"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mNativeMonitoringOn:Z

    .line 395
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->startLoadMonitor()V

    .line 396
    return-void
.end method
