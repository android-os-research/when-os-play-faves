.class public Lcom/android/server/desktopmode/BleAdvertiserServiceManager;
.super Ljava/lang/Object;
.source "BleAdvertiserServiceManager.java"


# static fields
.field public static final BACKOFF_MILLIS:J = 0x3e8L

.field public static final DEFERRED_CALLBACK_MILLIS:J = 0x1388L

.field public static final MAX_BACKOFF_MILLIS:J = 0x927c0L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mBindServiceRunnable:Ljava/lang/Runnable;

.field public mBound:Z

.field public mConnectionBackoffAttempts:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mDeferredConnectionCallback:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;


# direct methods
.method public static synthetic $r8$lambda$-5fIA068Wocpusj5_g1A1bPTa98(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->lambda$setCurrentUserId$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WmlS96gjxmLJ4cH14WaKaEROAlg(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$lRwhamz6yj41bJS2AhbdPkOBjTE(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->lambda$new$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBindServiceRunnable(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeferredConnectionCallback(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Lcom/samsung/android/desktopmode/IBleAdvertiserService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionBackoffAttempts(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;Lcom/samsung/android/desktopmode/IBleAdvertiserService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mretryConnectionWithBackoff(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->retryConnectionWithBackoff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V
    .registers 6

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 89
    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    const/4 v1, 0x0

    .line 98
    iput v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    const/16 v1, -0x2710

    .line 99
    iput v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mCurrentUserId:I

    .line 103
    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mContext:Landroid/content/Context;

    .line 104
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance p1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 109
    invoke-interface {p3, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 39
    sget-object v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->retryConnectionWithBackoff()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 3

    .line 106
    sget-object v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Binder died, reconnecting"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setCurrentUserId$2(I)V
    .registers 3

    .line 114
    iget v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mCurrentUserId:I

    if-eq v0, p1, :cond_6

    .line 115
    iput p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mCurrentUserId:I

    :cond_6
    return-void
.end method


# virtual methods
.method public bindService()V
    .registers 6

    .line 125
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 129
    :cond_b
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService(), mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->unbindService()V

    .line 132
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.desktopmode.uiservice"

    const-string v2, "com.sec.android.desktopmode.uiservice.ble.BleAdvertiserService"

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    :try_start_3e
    iget-object v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mCurrentUserId:I

    .line 137
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 136
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    if-eqz v0, :cond_5b

    .line 140
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_67

    .line 143
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->retryConnectionWithBackoff()V
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_5e} :catch_5f

    goto :goto_67

    :catch_5f
    move-exception p0

    .line 146
    sget-object v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to bind service"

    invoke-static {v0, v1, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_67
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final handleRemoteException(Landroid/os/RemoteException;)V
    .registers 4

    .line 184
    sget-object p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleRemoteException(), e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBound()Z
    .registers 1

    .line 121
    iget-boolean p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    return p0
.end method

.method public final retryConnectionWithBackoff()V
    .registers 6

    .line 172
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 175
    iget v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    const v1, 0x49127c00    # 600000.0f

    .line 175
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    .line 177
    iget-object v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    iget v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    .line 179
    sget-object v2, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind service on attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentUserId(I)V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;I)V

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public unbindService()V
    .registers 4

    .line 151
    iget-boolean v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    if-nez v0, :cond_9

    return-void

    .line 154
    :cond_9
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindService(), mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 157
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 158
    iput-boolean v1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    .line 161
    :cond_3e
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    if-eqz v0, :cond_57

    .line 163
    :try_start_42
    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IBleAdvertiserService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4b
    .catch Ljava/util/NoSuchElementException; {:try_start_42 .. :try_end_4b} :catch_4c

    goto :goto_54

    :catch_4c
    move-exception v0

    .line 165
    sget-object v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unlink death recipient"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_54
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    :cond_57
    return-void
.end method
