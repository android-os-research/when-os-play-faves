.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;
.super Ljava/lang/Object;
.source "SemInputMonitorMotionEvent.java"


# static fields
.field private static final TAAS_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/tsp"

.field private static final TAG:Ljava/lang/String; = "SemInputMonitorMotionEvent"

.field private static final TIMEOUT_MILLISECONDS:I = 0x3e8

.field private static beginTime:J

.field private static detectedUeventTaasCount:I

.field private static endTime:J

.field private static touchCount:I


# instance fields
.field private final bootingDump:Ljava/lang/StringBuilder;

.field private criteria:J

.field private currentTime:J

.field private deltaTime:J

.field private detected:Z

.field private detectedUeventTaas:Z

.field private dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

.field private final handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private hwDefectCnt:J

.field private hwDefectTime:J

.field private final mContext:Landroid/content/Context;

.field private final mHqmHelper:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

.field private final mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

.field private final mTaasObserver:Landroid/os/UEventObserver;

.field private motionEventListener:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

.field private prv_tool_type:I

.field private final task:Ljava/util/concurrent/FutureTask;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private touchInterval:J


# direct methods
.method static bridge synthetic -$$Nest$fgetdetectedUeventTaas(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detectedUeventTaas:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethwDefectCnt(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->hwDefectCnt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputdetectedUeventTaas(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detectedUeventTaas:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhwDefectCnt(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->hwDefectCnt:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhwDefectTime(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->hwDefectTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSurfaceTimerStates(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->getSurfaceTimerStates()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmonitorMotionEvent(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->monitorMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtrackCase2(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->trackCase2(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetdetectedUeventTaasCount()I
    .registers 1

    sget v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detectedUeventTaasCount:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputdetectedUeventTaasCount(I)V
    .registers 1

    sput p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detectedUeventTaasCount:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    .line 54
    sput-wide v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->endTime:J

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    .line 64
    sput v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detectedUeventTaasCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hal"    # Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 78
    const-string v0, "SemInputMonitorMotionEvent"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->bootingDump:Ljava/lang/StringBuilder;

    .line 37
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    .line 41
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$1;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->motionEventListener:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 49
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->hwDefectTime:J

    .line 50
    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->hwDefectCnt:J

    .line 55
    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    .line 56
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchInterval:J

    .line 57
    const-wide/16 v4, 0x2ee0

    iput-wide v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->criteria:J

    .line 58
    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    .line 60
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detected:Z

    .line 63
    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detectedUeventTaas:Z

    .line 67
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    .line 110
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mTaasObserver:Landroid/os/UEventObserver;

    .line 79
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-direct {v2, p2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmHelper:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->sendDataToHqm()V

    .line 85
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "TaasHandlerThread"

    const/4 v4, -0x8

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->handlerThread:Landroid/os/HandlerThread;

    .line 86
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->handler:Landroid/os/Handler;

    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 89
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$2;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->task:Ljava/util/concurrent/FutureTask;

    .line 95
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    .line 97
    :try_start_79
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->motionEventListener:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->registerMotionEventListener(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z

    .line 98
    const-string v2, "- SemInputMotionEventDispatcher registered\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_83} :catch_84

    .line 102
    goto :goto_b9

    .line 99
    :catch_84
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDispatcher: exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- SemInputMotionEventDispatcher exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b9
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mTaasObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/virtual/sec/tsp"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 105
    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method private callSurfaceTimerStates(J)Z
    .registers 8
    .param p1, "time"    # J

    .line 249
    const-string v0, "callSurfaceTimerStates:Taas"

    const-string v1, "SemInputMonitorMotionEvent"

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->threadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->task:Ljava/util/concurrent/FutureTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 250
    const/4 v2, 0x0

    .line 252
    .local v2, "result":Z
    :try_start_c
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->task:Ljava/util/concurrent/FutureTask;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_1a} :catch_28
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_1a} :catch_23
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_1a} :catch_1c

    move v2, v0

    .line 259
    :goto_1b
    goto :goto_2d

    .line 257
    :catch_1c
    move-exception v0

    .line 258
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v3, "failed to get callSurfaceTimerStates for time out"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 255
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_23
    move-exception v3

    .line 256
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_1b

    .line 253
    :catch_28
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/InterruptedException;
    goto :goto_1b

    .line 261
    :goto_2d
    return v2
.end method

.method private getSurfaceTimerStates()Z
    .registers 7

    .line 265
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    .line 266
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 267
    invoke-static {v0}, Landroid/view/SurfaceControl;->getTimerStates(Landroid/os/IBinder;)Landroid/view/SurfaceControl$TimerStates;

    move-result-object v2

    .line 269
    .local v2, "timerStates":Landroid/view/SurfaceControl$TimerStates;
    const-string v3, "SemInputMonitorMotionEvent"

    if-nez v2, :cond_15

    .line 270
    const-string v4, "No valid info found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v1

    .line 273
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sec_input] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/SurfaceControl$TimerStates;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-boolean v3, v2, Landroid/view/SurfaceControl$TimerStates;->idle:Z

    if-eqz v3, :cond_35

    .line 276
    const/4 v1, 0x1

    return v1

    .line 280
    .end local v2    # "timerStates":Landroid/view/SurfaceControl$TimerStates;
    :cond_35
    return v1
.end method

.method private monitorMotionEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "mEvent"    # Landroid/view/MotionEvent;

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 161
    .local v0, "action":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 162
    .local v1, "toolType":I
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method private sendDataToHqm()V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmHelper:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->sendHqmTspData(Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)V

    .line 312
    return-void
.end method

.method private trackCase1(I)V
    .registers 22
    .param p1, "action"    # I

    .line 169
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 170
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 171
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    .line 173
    if-nez v1, :cond_2a

    .line 174
    sget-wide v6, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->endTime:J

    sub-long v6, v4, v6

    iput-wide v6, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    .line 178
    sget v8, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    if-eqz v8, :cond_25

    iget-wide v8, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchInterval:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_29

    .line 179
    :cond_25
    sput-wide v4, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    .line 180
    sput v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    .line 186
    :cond_29
    return-void

    .line 187
    :cond_2a
    const-string v6, "activity"

    const-string v7, "SemInputMonitorMotionEvent"

    const-string v9, "s tc "

    const/4 v10, 0x0

    const-string v11, " "

    const-wide/16 v12, 0x3e8

    if-ne v1, v3, :cond_e9

    .line 188
    sget-wide v14, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    sub-long v14, v4, v14

    iput-wide v14, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    .line 189
    sput-wide v4, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->endTime:J

    .line 191
    iget-boolean v4, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detected:Z

    if-eqz v4, :cond_e8

    .line 192
    iget-object v4, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 193
    .local v4, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v4, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 194
    .local v5, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "topActivityName":Ljava/lang/String;
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 196
    .local v14, "packageName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 198
    .local v15, "logStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[sec_input] CASE1 ended "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v18, v9

    iget-wide v8, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    div-long/2addr v8, v12

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v8, v18

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v9, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x11

    invoke-static {v9, v3}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v9, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    div-long/2addr v9, v12

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v8, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detected:Z

    .line 202
    iget-wide v7, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    sput-wide v7, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    .line 203
    sput v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    .line 204
    iget-object v3, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    const/4 v9, 0x1

    invoke-virtual {v3, v9, v15}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->increaseCount(ILjava/lang/String;)V

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->sendDataToHqm()V

    .line 208
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v5    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "topActivityName":Ljava/lang/String;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "logStr":Ljava/lang/String;
    :cond_e8
    return-void

    .line 210
    :cond_e9
    move-object v8, v9

    move v9, v3

    sget v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    add-int/2addr v3, v9

    sput v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    .line 213
    iget-boolean v3, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detected:Z

    if-nez v3, :cond_252

    .line 214
    sget-wide v9, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    sub-long/2addr v4, v9

    iput-wide v4, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    .line 216
    iget-wide v9, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->criteria:J

    cmp-long v3, v4, v9

    if-lez v3, :cond_250

    .line 217
    invoke-direct {v0, v12, v13}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->callSurfaceTimerStates(J)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 218
    iget-object v3, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 219
    .local v3, "activityManager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 220
    .restart local v5    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 221
    .restart local v6    # "topActivityName":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "packageName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, "logStr":Ljava/lang/String;
    iget-wide v14, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->hwDefectCnt:J

    const-wide/16 v18, 0x0

    cmp-long v10, v14, v18

    const-string v14, "[sec_input] CASE1 "

    if-eqz v10, :cond_1de

    .line 225
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v15, v2

    .end local v2    # "time":Landroid/text/format/Time;
    .local v15, "time":Landroid/text/format/Time;
    iget-wide v1, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    div-long/2addr v1, v12

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v12, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    move-object v10, v3

    move-object/from16 v16, v4

    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "packageName":Ljava/lang/String;
    .local v10, "activityManager":Landroid/app/ActivityManager;
    .local v16, "packageName":Ljava/lang/String;
    iget-wide v3, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->hwDefectTime:J

    sub-long/2addr v12, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v12, v3

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "s "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v12, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->hwDefectCnt:J

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11

    invoke-static {v4, v1}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v12, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    const-wide/16 v17, 0x3e8

    div-long v12, v12, v17

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v12, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    move-object v2, v5

    .end local v5    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .local v2, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-wide v4, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->hwDefectTime:J

    sub-long/2addr v12, v4

    div-long v12, v12, v17

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->hwDefectCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23b

    .line 231
    .end local v10    # "activityManager":Landroid/app/ActivityManager;
    .end local v15    # "time":Landroid/text/format/Time;
    .end local v16    # "packageName":Ljava/lang/String;
    .local v2, "time":Landroid/text/format/Time;
    .restart local v3    # "activityManager":Landroid/app/ActivityManager;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1de
    move-object v15, v2

    move-object v10, v3

    move-object/from16 v16, v4

    move-object v2, v5

    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .local v2, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v10    # "activityManager":Landroid/app/ActivityManager;
    .restart local v15    # "time":Landroid/text/format/Time;
    .restart local v16    # "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v3, v12

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x11

    invoke-static {v3, v1}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v3, v12

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_23b
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detected:Z

    .line 237
    iget-object v3, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->increaseCount(ILjava/lang/String;)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->sendDataToHqm()V

    .line 239
    .end local v2    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "topActivityName":Ljava/lang/String;
    .end local v9    # "logStr":Ljava/lang/String;
    .end local v10    # "activityManager":Landroid/app/ActivityManager;
    .end local v16    # "packageName":Ljava/lang/String;
    goto :goto_253

    .line 241
    .end local v15    # "time":Landroid/text/format/Time;
    .local v2, "time":Landroid/text/format/Time;
    :cond_247
    move-object v15, v2

    const/4 v1, 0x1

    .end local v2    # "time":Landroid/text/format/Time;
    .restart local v15    # "time":Landroid/text/format/Time;
    iget-wide v2, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    sput-wide v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    .line 242
    sput v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    goto :goto_253

    .line 216
    .end local v15    # "time":Landroid/text/format/Time;
    .restart local v2    # "time":Landroid/text/format/Time;
    :cond_250
    move-object v15, v2

    .end local v2    # "time":Landroid/text/format/Time;
    .restart local v15    # "time":Landroid/text/format/Time;
    goto :goto_253

    .line 213
    .end local v15    # "time":Landroid/text/format/Time;
    .restart local v2    # "time":Landroid/text/format/Time;
    :cond_252
    move-object v15, v2

    .line 246
    .end local v2    # "time":Landroid/text/format/Time;
    .restart local v15    # "time":Landroid/text/format/Time;
    :goto_253
    return-void
.end method

.method private trackCase2(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[sec_input] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputMonitorMotionEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[sec_input]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1, v0}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->increaseCount(ILjava/lang/String;)V

    .line 287
    return-void
.end method

.method private trackCase3(I)V
    .registers 11
    .param p1, "cur_tool_type"    # I

    .line 290
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_c

    :cond_8
    if-eq p1, v2, :cond_c

    if-ne p1, v1, :cond_14

    :cond_c
    if-eq v0, v2, :cond_c3

    if-eq v0, v1, :cond_c3

    if-eq p1, v2, :cond_14

    if-ne p1, v1, :cond_c3

    .line 295
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 296
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 297
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "topActivityName":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "logStr":Ljava/lang/String;
    const/16 v6, 0x11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sec_input] CASE3 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sec_input] CASE3 : tool type change pre("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") : cur("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 303
    invoke-static {p1}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    const-string v6, "SemInputMonitorMotionEvent"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    .line 305
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->increaseCount(ILjava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->sendDataToHqm()V

    .line 308
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "topActivityName":Ljava/lang/String;
    .end local v4    # "logStr":Ljava/lang/String;
    :cond_c3
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 320
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    if-eqz v0, :cond_23

    .line 322
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->motionEventListener:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->unregisterMotionEventListener(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 325
    goto :goto_23

    .line 323
    :catch_a
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterDispatcher: exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputMonitorMotionEvent"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    :goto_23
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 315
    const-string v0, "dumping SemInputMonitorMotionEvent"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->bootingDump:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method synthetic lambda$monitorMotionEvent$0$com-samsung-android-hardware-secinputdev-taas-SemInputMonitorMotionEvent(II)V
    .registers 3
    .param p1, "action"    # I
    .param p2, "toolType"    # I

    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->trackCase1(I)V

    .line 164
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->trackCase3(I)V

    .line 165
    return-void
.end method
