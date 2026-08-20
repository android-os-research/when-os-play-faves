.class public Lcom/samsung/android/smartface/SmartFaceManager;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;,
        Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;
    }
.end annotation


# static fields
.field public static final blacklist FALSE:Ljava/lang/String; = "false"

.field public static final blacklist FEATURE_SMART_STAY:Ljava/lang/String; = "com.sec.android.smartface.smart_stay"

.field public static final blacklist MSG_FACEINFO:I = 0x0

.field public static final blacklist MSG_REGISTERED:I = 0x1

.field public static final blacklist MSG_UNREGISTERED:I = 0x2

.field private static final blacklist NULL_VALUE:Ljava/lang/String; = ""

.field public static final blacklist SERVICETYPE_STAY:I = 0x4

.field public static final blacklist SMARTFACE_SERVICE:Ljava/lang/String; = "samsung.smartfaceservice"

.field public static final blacklist SMART_SCREEN_DUMP_PREVIEW:Ljava/lang/String; = "smart-screen-dump"

.field public static final blacklist SMART_STAY_DELAY:I = 0xabe

.field public static final blacklist SMART_STAY_FRAMECOUNT_RESET:Ljava/lang/String; = "smart-stay-framecount-reset"

.field private static final blacklist TAG:Ljava/lang/String; = "SmartFaceManager"

.field public static final blacklist TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final blacklist complete:Ljava/util/concurrent/locks/Condition;

.field private final blacklist lock:Ljava/util/concurrent/locks/Lock;

.field private blacklist mCallbackData:I

.field private final blacklist mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private final blacklist mEventHandlerLock:Ljava/lang/Object;

.field private blacklist mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private blacklist mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

.field private final blacklist mListenerLock:Ljava/lang/Object;

.field private blacklist mService:Lcom/samsung/android/smartface/ISmartFaceService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandlerLock(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 105
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    .line 108
    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 109
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    .line 113
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    .line 114
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    .line 190
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    .line 191
    new-instance v2, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-direct {v2, p0}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    .line 193
    monitor-enter v1

    .line 195
    :try_start_2f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    .local v3, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_3e

    .line 196
    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v0, p0, p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_4f

    .line 197
    :cond_3e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_4d

    .line 198
    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v0, p0, p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_4f

    .line 200
    :cond_4d
    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 202
    .end local v3    # "looper":Landroid/os/Looper;
    :goto_4f
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_51

    throw v0
.end method

.method private declared-synchronized blacklist ensureServiceConnected()Z
    .registers 5

    monitor-enter p0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    if-eqz v0, :cond_17

    .line 135
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    const-string v2, "empty key for ping"

    const-string v3, "empty value"

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f
    .catchall {:try_start_5 .. :try_end_e} :catchall_2a

    .line 140
    goto :goto_17

    .line 136
    .end local p0    # "this":Lcom/samsung/android/smartface/SmartFaceManager;
    :catch_f
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_10
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_17

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    if-nez v0, :cond_21

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->startSmartFaceService()V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForService()V

    .line 150
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_2a

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    monitor-exit p0

    return v0

    .line 130
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static blacklist getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/smartface/SmartFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist startSmartFaceService()V
    .registers 5

    .line 177
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.smartface"

    const-string v3, "com.samsung.android.smartface.SmartFaceServiceStarter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_18} :catch_1a

    .line 183
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_22

    .line 180
    :catch_1a
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "SmartFaceManager"

    const-string v2, "Service is being installed. Ignore smart stay request."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_22
    return-void
.end method

.method private blacklist waitForCallback(I)J
    .registers 9
    .param p1, "waitMilli"    # I

    .line 435
    const-wide/16 v0, -0x1

    .line 438
    .local v0, "ret":J
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    mul-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    move-wide v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1b

    const-string v2, "SmartFaceManager"

    const-string v3, "No Callback!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 440
    :cond_1b
    goto :goto_1d

    .line 439
    :catch_1c
    move-exception v2

    .line 442
    :goto_1d
    return-wide v0
.end method

.method private blacklist waitForService()V
    .registers 6

    .line 158
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_44

    .line 159
    const-string/jumbo v1, "samsung.smartfaceservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    .line 161
    const-string v2, "SmartFaceManager"

    if-eqz v1, :cond_1b

    .line 162
    const-string v1, "Service connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 166
    :cond_1b
    const-wide/16 v3, 0x12c

    :try_start_1d
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit16 v3, v0, 0x12c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_3e} :catch_3f

    goto :goto_40

    .line 168
    :catch_3f
    move-exception v1

    :goto_40
    nop

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    .end local v0    # "count":I
    :cond_44
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist checkForSmartStay()Z
    .registers 7

    monitor-enter p0

    .line 313
    :try_start_1
    const-string v0, "SmartFaceManager"

    const-string v1, "checkForSmartStay S"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "ret":Z
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Smart Stay Wait Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, "waitThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 319
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_a0

    .line 320
    :try_start_16
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 321
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_9d

    .line 324
    :try_start_22
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_a0

    .line 325
    :try_start_25
    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 326
    .local v3, "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_9a

    .line 328
    :try_start_28
    new-instance v2, Lcom/samsung/android/smartface/SmartFaceManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/smartface/SmartFaceManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 341
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_a0

    .line 345
    :try_start_35
    const-string/jumbo v2, "smart-stay-framecount-reset"

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/android/smartface/SmartFaceManager;->start(I)Z

    move-result v2
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_93

    if-eqz v2, :cond_60

    .line 348
    const/4 v2, -0x1

    :try_start_45
    iput v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 349
    const/16 v4, 0x49e

    invoke-direct {p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 350
    iget v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    if-lez v4, :cond_51

    const/4 v0, 0x1

    .line 353
    :cond_51
    iput v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 354
    const/16 v2, 0x3f9

    invoke-direct {p0, v2}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 355
    iget v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_5e

    if-lez v2, :cond_60

    const/4 v0, 0x1

    goto :goto_60

    .line 360
    :catchall_5e
    move-exception v2

    goto :goto_94

    :cond_60
    :goto_60
    :try_start_60
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
    nop

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->stop()V

    .line 365
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_a0

    .line 366
    :try_start_6c
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 367
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 368
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_90

    .line 369
    :try_start_73
    invoke-virtual {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 371
    const-string v2, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForSmartStay X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_73 .. :try_end_8e} :catchall_a0

    .line 372
    monitor-exit p0

    return v0

    .line 368
    .end local p0    # "this":Lcom/samsung/android/smartface/SmartFaceManager;
    :catchall_90
    move-exception v4

    :try_start_91
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw v4

    .line 360
    :catchall_93
    move-exception v2

    :goto_94
    iget-object v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
    throw v2
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_a0

    .line 326
    .end local v3    # "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    :catchall_9a
    move-exception v3

    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw v3
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_a0

    .line 321
    :catchall_9d
    move-exception v3

    :try_start_9e
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw v3
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    .line 312
    .end local v0    # "ret":Z
    .end local v1    # "waitThread":Landroid/os/HandlerThread;
    :catchall_a0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getSupportedServices()I
    .registers 3

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 385
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    invoke-interface {v0}, Lcom/samsung/android/smartface/ISmartFaceService;->getSupportedServices()I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    .line 389
    .local v0, "ret":I
    goto :goto_15

    .line 386
    .end local v0    # "ret":I
    :catch_f
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 388
    const/4 v1, 0x0

    move v0, v1

    .line 391
    .local v0, "ret":I
    :goto_15
    return v0
.end method

.method synthetic blacklist lambda$checkForSmartStay$0$com-samsung-android-smartface-SmartFaceManager(Lcom/samsung/android/smartface/FaceInfo;I)V
    .registers 5
    .param p1, "data"    # Lcom/samsung/android/smartface/FaceInfo;
    .param p2, "service_type"    # I

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkForSmartStay onInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_47

    .line 331
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 333
    :try_start_31
    iget v0, p1, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    iput v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 334
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_40

    .line 336
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 337
    goto :goto_47

    .line 336
    :catchall_40
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 337
    throw v0

    .line 339
    :cond_47
    :goto_47
    return-void
.end method

.method public blacklist setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 402
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 404
    monitor-exit v0

    .line 405
    return-void

    .line 404
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist setValue(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 287
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public blacklist setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 296
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_2f
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_37

    .line 302
    goto :goto_3b

    .line 300
    :catch_37
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3b
    return-void
.end method

.method public blacklist start(I)Z
    .registers 5
    .param p1, "serviceType"    # I

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 218
    :cond_8
    const/4 v0, 0x0

    .line 220
    .local v0, "ret":Z
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z

    move-result v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_13

    move v0, v1

    .line 223
    goto :goto_17

    .line 221
    :catch_13
    move-exception v1

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 225
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    return v0
.end method

.method public blacklist startAsync(I)V
    .registers 4
    .param p1, "serviceType"    # I

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 239
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 242
    goto :goto_13

    .line 240
    :catch_f
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public blacklist stop()V
    .registers 4

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 253
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1}, Lcom/samsung/android/smartface/ISmartFaceService;->unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 256
    goto :goto_13

    .line 254
    :catch_f
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_16
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 260
    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_25

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 261
    :cond_25
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist stopAsync()V
    .registers 4

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 272
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1}, Lcom/samsung/android/smartface/ISmartFaceService;->unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 275
    goto :goto_13

    .line 273
    :catch_f
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_16
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 279
    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_25

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    :cond_25
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_27

    throw v1
.end method
