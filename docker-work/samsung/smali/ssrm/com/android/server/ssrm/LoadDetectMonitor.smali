.class public Lcom/android/server/ssrm/LoadDetectMonitor;
.super Ljava/lang/Object;
.source "LoadDetectMonitor.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final LOAD_DETECT_PERIOD:J = 0xc8L

.field static final TAG:Ljava/lang/String;


# instance fields
.field public mCpuLoadState:I

.field public mGpuLoadState:I

.field mHandler:Landroid/os/Handler;

.field mNativeMonitoringRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/LoadDetectMonitor;->TAG:Ljava/lang/String;

    .line 57
    const-string v0, "devicehealth.ssrm.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mCpuLoadState:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mGpuLoadState:I

    .line 65
    new-instance v0, Lcom/android/server/ssrm/LoadDetectMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/LoadDetectMonitor$1;-><init>(Lcom/android/server/ssrm/LoadDetectMonitor;)V

    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mNativeMonitoringRunnable:Ljava/lang/Runnable;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeLoadDetectInit()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method


# virtual methods
.method native nativeLoadDetectInit()V
.end method

.method native nativePauseLoadDetect()V
.end method

.method native nativeResumeLoadDetect()V
.end method

.method native nativeStartLoadMonitor()V
.end method

.method native nativeStopLoadMonitor()V
.end method

.method public pauseLoadDetect()V
    .registers 1

    .line 89
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativePauseLoadDetect()V

    .line 90
    return-void
.end method

.method public reportCpuGpuLoads(IIIIIIIIIII)V
    .registers 14
    .param p1, "topCpu"    # I
    .param p2, "gpu"    # I
    .param p3, "bigAvgFreq"    # I
    .param p4, "bigMaxFreq"    # I
    .param p5, "bigMinFreq"    # I
    .param p6, "midAvgFreq"    # I
    .param p7, "midMaxFreq"    # I
    .param p8, "midMinFreq"    # I
    .param p9, "gpuAvgFreq"    # I
    .param p10, "gpuMaxFreq"    # I
    .param p11, "gpuMinFreq"    # I

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "loadFreqs":Ljava/lang/String;
    const-string v1, "LoadsFreqs"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->sendEventToSdhms(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public reportLoadState(I)V
    .registers 3
    .param p1, "mLoadState"    # I

    .line 103
    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_d

    .line 105
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    goto :goto_f

    .line 108
    :cond_a
    iput p1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mGpuLoadState:I

    goto :goto_f

    .line 104
    :cond_d
    :goto_d
    iput p1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mCpuLoadState:I

    .line 111
    :goto_f
    invoke-static {p1}, Lcom/android/server/ssrm/DynamicLoadDetector;->reportLoadState(I)V

    .line 112
    return-void
.end method

.method public reportSingleBoostState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 156
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTE:Z

    if-eqz v0, :cond_7

    .line 157
    invoke-static {p1}, Lcom/android/server/ssrm/DynamicLoadDetector;->reportSingleBoostState(I)V

    .line 159
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleBoostState"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->sendEventToSdhms(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public resumeLoadDetect()V
    .registers 1

    .line 85
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeResumeLoadDetect()V

    .line 86
    return-void
.end method

.method sendEventToSdhms(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 136
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 137
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_17

    .line 138
    nop

    .line 139
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 140
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_17

    .line 142
    :try_start_f
    invoke-interface {v1, p1, p2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 145
    goto :goto_17

    .line 143
    :catch_13
    move-exception v2

    .line 144
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 148
    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public startLoadMonitor()V
    .registers 5

    .line 74
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeResumeLoadDetect()V

    .line 75
    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mNativeMonitoringRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method

.method public stopLoadMonitor()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeStopLoadMonitor()V

    .line 82
    return-void
.end method
