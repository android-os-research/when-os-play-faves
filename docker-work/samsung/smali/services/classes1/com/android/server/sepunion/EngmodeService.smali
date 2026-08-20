.class public final Lcom/android/server/sepunion/EngmodeService;
.super Lcom/samsung/android/sepunion/IEngmodeService$Stub;
.source "EngmodeService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/EngmodeService$MultipartUtility;,
        Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;,
        Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;
    }
.end annotation


# static fields
.field public static final EM_HTTP_CONNECTION_TIMEOUT:I = 0x2710

.field public static final EM_LEN_RTD_DATE:I = 0x8

.field public static final EM_LEN_RTD_TAK_PACKET:I = 0x5a

.field public static final EM_MAX_TIME_TRY:I = 0x2

.field public static final EM_RTD_RES_DATE_POS:I = 0x1

.field public static final EM_RTD_RES_PACKET_POS:I = 0x9

.field public static final EM_TIMER_FIVE_HOUR:I = 0x112a880

.field public static final EM_TIMER_ONE_HOUR:I = 0x36ee80

.field public static final EM_TIMER_SIX_HOUR:I = 0x1499700

.field public static final EM_TOKEN_PROP:Ljava/lang/String; = "security.em.tstate"

.field public static final MODE_REFILL_AND_CHECK:I = 0xff0f

.field public static final TAG:Ljava/lang/String; = "engmode_service"


# instance fields
.field public mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

.field public mNeedUpdate:Z

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mRunTimeTask:Ljava/util/TimerTask;

.field public mServerDate:Ljava/lang/String;

.field public mTimeThread:Ljava/lang/Thread;

.field public mTimerObserve:Ljava/util/Timer;

.field public mUpdateTimer:Ljava/util/Timer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmManager(Lcom/android/server/sepunion/EngmodeService;)Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNeedUpdate(Lcom/android/server/sepunion/EngmodeService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunTimeTask(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServerDate(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mServerDate:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeThread(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimerObserve(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateTimer(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mUpdateTimer:Ljava/util/Timer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmNeedUpdate(Lcom/android/server/sepunion/EngmodeService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRunTimeTask(Lcom/android/server/sepunion/EngmodeService;Ljava/util/TimerTask;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Ljava/util/TimerTask;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmServerDate(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mServerDate:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTimeThread(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTimerObserve(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUpdateTimer(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mUpdateTimer:Ljava/util/Timer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetEmManager(Lcom/android/server/sepunion/EngmodeService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misTokenInstalled(Lcom/android/server/sepunion/EngmodeService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->isTokenInstalled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmakeRunTimeTask(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->makeRunTimeTask()Ljava/util/TimerTask;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeTimeReq(Lcom/android/server/sepunion/EngmodeService;)[B
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->makeTimeReq()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mregisterNetworkCallback(Lcom/android/server/sepunion/EngmodeService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->registerNetworkCallback()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateTime(Lcom/android/server/sepunion/EngmodeService;[B)[B
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/EngmodeService;->updateTime([B)[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IEngmodeService$Stub;-><init>()V

    .line 112
    new-instance v0, Lcom/android/server/sepunion/EngmodeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/EngmodeService$2;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    .line 85
    new-instance p1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    const-string p0, "engmode_service"

    const-string p1, "EM Service is started"

    .line 88
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p0, "\n##### EngmodeService #####\n##### (dumpsys sepunion EngmodeService) #####\n"

    .line 231
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getEmManager()Z
    .registers 3

    .line 236
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    const/4 p0, 0x1

    return p0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isTokenInstalled()Z
    .registers 3

    const/4 v0, 0x0

    .line 248
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result v1

    if-nez v1, :cond_f

    const-string p0, "engmode_service"

    const-string v1, "Failed to get EM Manager"

    .line 249
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 253
    :cond_f
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isTokenInstalled()I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1a

    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    move v0, v1

    :cond_19
    return v0

    :catch_1a
    move-exception p0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public final makeRunTimeTask()Ljava/util/TimerTask;
    .registers 2

    .line 92
    new-instance v0, Lcom/android/server/sepunion/EngmodeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/EngmodeService$1;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    return-object v0
.end method

.method public final makeTimeReq()[B
    .registers 3

    const-string v0, "engmode_service"

    const-string/jumbo v1, "makeTimeReq() called"

    .line 261
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result v1

    if-nez v1, :cond_15

    const-string p0, "Failed to get manager"

    .line 264
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 268
    :cond_15
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->makeTimeReq()[B

    move-result-object p0

    return-object p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_22

    :try_start_4
    const-string p1, "engmode_service"

    const-string/jumbo v0, "onBootPhase() boot completed"

    .line 198
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 205
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_22
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public final registerNetworkCallback()Z
    .registers 4

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 133
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 135
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 136
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 138
    new-instance v2, Lcom/android/server/sepunion/EngmodeService$3;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/EngmodeService$3;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v2, p0, Lcom/android/server/sepunion/EngmodeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 177
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    const/4 p0, 0x1

    return p0

    :catch_2d
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final updateTime([B)[B
    .registers 4

    const-string v0, "engmode_service"

    const-string/jumbo v1, "updateTimeReq() called"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result v1

    if-nez v1, :cond_15

    const-string p0, "Failed to get manager"

    .line 275
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 279
    :cond_15
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->updateTime([B)[B

    move-result-object p0

    return-object p0
.end method
