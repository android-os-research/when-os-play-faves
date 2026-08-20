.class public Lcom/android/server/biometrics/SemBiometricSysUiManager;
.super Ljava/lang/Object;
.source "SemBiometricSysUiManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/samsung/android/biometrics/SemBiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;,
        Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    }
.end annotation


# static fields
.field public static final BINDING_TIMEOUT_INTERVAL:I = 0xbb8

.field public static final MAX_SESSION_COUNT:I = 0xa

.field public static final SYSUI_CONNECTION_ERROR_REASON_BIND_TIMEOUT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "BiometricSysUiManager"

.field public static final TIME_UNBIND:I = 0xfa0

.field public static sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsConnected:Z

.field public mIsWaitingForConnection:Z

.field public final mPendingCommand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mRunnableHandleBindTimeout:Ljava/lang/Runnable;

.field public final mRunnableHandleUnbind:Ljava/lang/Runnable;

.field public final mSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;",
            ">;"
        }
    .end annotation
.end field

.field public mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

.field public mSysUiServiceReceiver:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;


# direct methods
.method public static synthetic $r8$lambda$F4sh1TIOujhCma8g4DJNtJmp78Y(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIILandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$sendCommand$9(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QeWAgEBe1sXjXMRBNceft5jeIPY(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIIILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$onBiometricError$8(IIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UBeISBZT_94jQ1kQFGEwNMyxHXI(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$onAuthenticated$6(IIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uv0HKnpep9OS95NlXWTuL1HjVu8(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$sendConnectionError$11(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WXHzhsWewZZ8EkxKBVZokMNLXYM(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XnUZeK2rqC98akckugSkdspE48U(Lcom/android/server/biometrics/SemBiometricSysUiManager;IILandroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$sendCommandIfSessionExist$10(IILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YKtnaxS6FNqtkJKHoQF5IOSCM-I(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIIILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$onBiometricHelp$7(IIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-kxsO53B35VrNIprz07lMCMWiY(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$runPendingCommand$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$_hER3kqSeU3wKHHu-udTIqFf89A(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$hide$5(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$q637rjiE2Nm9TPzmZdjvdvHKOu8(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZILjava/lang/String;JLandroid/os/Bundle;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$show$4(IIZILjava/lang/String;JLandroid/os/Bundle;Landroid/hardware/biometrics/PromptInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhVZDeSIia5iUt0Xr46wgYHAGl8(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xHqjVTmiqGNn7LfofaC-U_kzgSo(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$binderDied$3()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifySysUiDismissedEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;II[B)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiDismissedEvent(II[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySysUiErrorEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySysUiEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiEvent(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySysUiTouchEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiTouchEvent(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Ljava/lang/Runnable;

    .line 57
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Ljava/lang/Runnable;

    .line 558
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiServiceReceiver:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 108
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mContext:Landroid/content/Context;

    .line 109
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static get()Lcom/android/server/biometrics/SemBiometricSysUiManager;
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    return-object v0
.end method

.method public static declared-synchronized injectMockForTest(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    monitor-enter v0

    .line 99
    :try_start_3
    sput-object p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 100
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic lambda$binderDied$3()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 326
    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    .line 327
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cleanup()V

    return-void
.end method

.method private synthetic lambda$hide$5(III)V
    .registers 8

    .line 362
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string/jumbo v1, "hide: "

    const-string v2, "BiometricSysUiManager"

    if-eqz v0, :cond_29

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    if-nez v0, :cond_45

    .line 367
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "hide: No exist ID, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 371
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->hideBiometricDialog(III)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_4b

    goto :goto_66

    :catch_4b
    move-exception p1

    .line 373
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    :goto_66
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 49
    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    if-eqz v0, :cond_10

    .line 51
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->unBind()V

    .line 53
    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private synthetic lambda$new$1()V
    .registers 3

    const-string v0, "BiometricSysUiManager"

    const-string/jumbo v1, "handle binding timeout"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 59
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->unBind()V

    return-void
.end method

.method private synthetic lambda$onAuthenticated$6(IIZLjava/lang/String;)V
    .registers 7

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    if-nez v0, :cond_1e

    .line 385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticated: No exist ID, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 389
    :cond_1e
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->onBiometricAuthenticated(IIZLjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_3e

    :catch_24
    move-exception p0

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticated: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method private synthetic lambda$onBiometricError$8(IIIILjava/lang/String;)V
    .registers 14

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    if-nez v0, :cond_1e

    .line 426
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onBiometricError: No exist ID, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 430
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->onBiometricError(IIIILjava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29

    goto :goto_43

    :catch_29
    move-exception p0

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onBiometricError: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    return-void
.end method

.method private synthetic lambda$onBiometricHelp$7(IIIILjava/lang/String;)V
    .registers 14

    .line 402
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v1, "BiometricSysUiManager"

    if-eqz v0, :cond_20

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBiometricHelp: session Id = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onBiometricHelp: No exist ID, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 411
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->onBiometricHelp(IIIILjava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_61

    :catch_47
    move-exception p0

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onBiometricHelp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    return-void
.end method

.method private synthetic lambda$runPendingCommand$2()V
    .registers 3

    .line 269
    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 271
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    .line 273
    :cond_17
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private synthetic lambda$sendCommand$9(IIILandroid/os/Bundle;)V
    .registers 7

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    if-nez v0, :cond_1e

    .line 444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendCommand: No exist ID, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 448
    :cond_1e
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->sendCommand(IIILandroid/os/Bundle;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_3e

    :catch_24
    move-exception p0

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendCommand: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method private synthetic lambda$sendCommandIfSessionExist$10(IILandroid/os/Bundle;)V
    .registers 6

    .line 458
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "BiometricSysUiManager"

    if-eqz v0, :cond_11

    const-string/jumbo p0, "sendCommandIfSessionExist: No exist Session"

    .line 459
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 463
    :cond_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->sendCommand(IIILandroid/os/Bundle;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_32

    :catch_18
    move-exception p0

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendCommandIfSessionExist: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method private synthetic lambda$sendConnectionError$11(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 473
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    return-void
.end method

.method private synthetic lambda$show$4(IIZILjava/lang/String;JLandroid/os/Bundle;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 25

    move-object v1, p0

    move/from16 v0, p1

    .line 339
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string/jumbo v13, "show: "

    const-string v14, "BiometricSysUiManager"

    if-eqz v2, :cond_49

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p6

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_49
    move/from16 v4, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    .line 343
    :goto_53
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v2

    if-nez v2, :cond_6f

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: No exist ID, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_6f
    :try_start_6f
    iget-object v2, v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    iget-object v6, v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiServiceReceiver:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p8

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-interface/range {v2 .. v12}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->showBiometricDialog(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_86} :catch_87

    goto :goto_a2

    :catch_87
    move-exception v0

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    :goto_a2
    return-void
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    monitor-enter v0

    .line 92
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    if-nez v1, :cond_e

    .line 93
    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 95
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized resetForTest()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 104
    :try_start_4
    sput-object v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 105
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final bind()V
    .registers 5

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.biometrics.app.setting"

    const-string v3, "com.samsung.android.biometrics.app.setting.BiometricsUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    :try_start_11
    monitor-enter p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_12} :catch_43

    :try_start_12
    const-string v1, "BiometricSysUiManager"

    const-string v2, "bind: started"

    .line 225
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    if-eqz v1, :cond_1f

    .line 227
    monitor-exit p0

    return-void

    :cond_1f
    const v1, 0x24000001

    .line 234
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_29

    const v1, 0x24000003

    .line 237
    :cond_29
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    .line 239
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    monitor-exit p0

    goto :goto_62

    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_12 .. :try_end_42} :catchall_40

    :try_start_42
    throw v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_43} :catch_43

    :catch_43
    move-exception v0

    const-string v1, "BiometricSysUiManager"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    :goto_62
    return-void
.end method

.method public binderDied()V
    .registers 3

    const-string v0, "BiometricSysUiManager"

    const-string v1, "binderDied: handle error"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelUnbind()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final cleanup()V
    .registers 3

    .line 113
    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 118
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public closeSession(I)V
    .registers 5

    .line 183
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "BiometricSysUiManager"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSession: sessionId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1f
    monitor-enter p0

    .line 187
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 189
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->destroy()V

    .line 191
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    if-eqz p1, :cond_43

    .line 192
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->printSessionClient()V

    .line 196
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_20 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    .registers 4

    .line 123
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 124
    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmId(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v1

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findSessionToken(Ljava/lang/String;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    .registers 4

    .line 132
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 133
    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmToken(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleRequest(Ljava/lang/Runnable;)V
    .registers 4

    .line 204
    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    if-eqz v0, :cond_9

    .line 206
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1e

    .line 208
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    if-eqz v0, :cond_1e

    .line 209
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_19

    const-string v0, "BiometricSysUiManager"

    const-string/jumbo v1, "handleRequest: Add pending list"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_19
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public hide(III)V
    .registers 5

    .line 361
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V

    .line 377
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final notifySysUiDismissedEvent(II[B)V
    .registers 9

    .line 505
    monitor-enter p0

    .line 506
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_48

    .line 508
    :try_start_13
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmListener(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_21

    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmId(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 509
    :cond_21
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmListener(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onDismissed(I[B)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_29
    .catchall {:try_start_13 .. :try_end_28} :catchall_48

    goto :goto_7

    :catch_29
    move-exception v1

    :try_start_2a
    const-string v2, "BiometricSysUiManager"

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifySysUiDismissedEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 515
    :cond_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final notifySysUiErrorEvent(III)V
    .registers 9

    .line 491
    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_48

    .line 494
    :try_start_13
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmListener(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_21

    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmId(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 495
    :cond_21
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmListener(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onError(II)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_29
    .catchall {:try_start_13 .. :try_end_28} :catchall_48

    goto :goto_7

    :catch_29
    move-exception v1

    :try_start_2a
    const-string v2, "BiometricSysUiManager"

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifySysUiErrorEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 501
    :cond_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final notifySysUiEvent(III)V
    .registers 9

    .line 519
    monitor-enter p0

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_54

    .line 522
    :try_start_13
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmListener(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_21

    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmId(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v2

    if-ne p1, v2, :cond_7

    :cond_21
    const/16 v2, 0x3e9

    if-eq p2, v2, :cond_2d

    .line 528
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmListener(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onEvent(II)V

    goto :goto_7

    .line 525
    :cond_2d
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmListener(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onTryAgainPressed(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_34} :catch_35
    .catchall {:try_start_13 .. :try_end_34} :catchall_54

    goto :goto_7

    :catch_35
    move-exception v1

    :try_start_36
    const-string v2, "BiometricSysUiManager"

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifySysUiEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 536
    :cond_52
    monitor-exit p0

    return-void

    :catchall_54
    move-exception p1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public final notifySysUiTouchEvent(II)V
    .registers 8

    .line 477
    monitor-enter p0

    .line 478
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_48

    .line 480
    :try_start_13
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmListener(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_21

    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmId(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 481
    :cond_21
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmListener(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onTouchEvent(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_29
    .catchall {:try_start_13 .. :try_end_28} :catchall_48

    goto :goto_7

    :catch_29
    move-exception v1

    :try_start_2a
    const-string v2, "BiometricSysUiManager"

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifySysUiTouchEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 487
    :cond_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public onAuthenticated(IIZLjava/lang/String;)V
    .registers 12

    .line 382
    new-instance v6, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZLjava/lang/String;)V

    .line 394
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBiometricError(IIIILjava/lang/String;)V
    .registers 14

    .line 423
    new-instance v7, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIIILjava/lang/String;)V

    .line 435
    invoke-virtual {p0, v7}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBiometricHelp(IIIILjava/lang/String;)V
    .registers 14

    .line 400
    new-instance v7, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIIILjava/lang/String;)V

    .line 417
    invoke-virtual {p0, v7}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 281
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p1, :cond_1b

    const-string p1, "BiometricSysUiManager"

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1b
    monitor-enter p0

    .line 285
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 286
    iput-boolean p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    .line 288
    invoke-static {p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    if-nez p2, :cond_3f

    const-string p1, "BiometricSysUiManager"

    const-string/jumbo p2, "onServiceConnected: failed "

    .line 290
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    .line 292
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_68

    return-void

    .line 295
    :cond_3f
    :try_start_3f
    invoke-interface {p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_47
    .catchall {:try_start_3f .. :try_end_46} :catchall_68

    goto :goto_63

    :catch_47
    move-exception p1

    :try_start_48
    const-string p2, "BiometricSysUiManager"

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_63
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->runPendingCommand()V

    .line 300
    monitor-exit p0

    return-void

    :catchall_68
    move-exception p1

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_48 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .line 306
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p1, :cond_1d

    const-string p1, "BiometricSysUiManager"

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1d
    monitor-enter p0

    const/4 p1, 0x0

    .line 311
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    if-eqz v0, :cond_49

    .line 312
    invoke-interface {v0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_2d
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2b

    goto :goto_49

    :catchall_2b
    move-exception p1

    goto :goto_52

    :catch_2d
    move-exception v0

    :try_start_2e
    const-string v1, "BiometricSysUiManager"

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceDisconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    const/4 v0, 0x2

    .line 317
    invoke-virtual {p0, p1, v0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    .line 318
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cleanup()V

    .line 319
    monitor-exit p0

    return-void

    :goto_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_2b

    throw p1
.end method

.method public openSession(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I
    .registers 7

    .line 149
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "BiometricSysUiManager"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v0, 0x0

    if-nez p1, :cond_2f

    const-string p0, "BiometricSysUiManager"

    const-string/jumbo p1, "openSession: token is null"

    .line 153
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 156
    :cond_2f
    monitor-enter p0

    .line 157
    :try_start_30
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionToken(Ljava/lang/String;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v1

    if-nez v1, :cond_65

    .line 160
    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;-><init>(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)V

    .line 161
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_6d

    const-string p1, "BiometricSysUiManager"

    const-string/jumbo p2, "openSession: too many session list"

    .line 163
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 165
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->destroy()V

    goto :goto_6d

    :cond_65
    const-string p1, "BiometricSysUiManager"

    const-string/jumbo p2, "openSession: exist token"

    .line 168
    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_6d
    :goto_6d
    iget-boolean p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    if-nez p1, :cond_81

    .line 171
    iget-boolean p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    if-eqz p1, :cond_7e

    const-string p1, "BiometricSysUiManager"

    const-string/jumbo p2, "openSession: waiting for service connection"

    .line 172
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 174
    :cond_7e
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->bind()V

    .line 177
    :cond_81
    :goto_81
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->printSessionClient()V

    .line 178
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->-$$Nest$fgetmId(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_8a
    move-exception p1

    .line 179
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_30 .. :try_end_8c} :catchall_8a

    throw p1
.end method

.method public final printSessionClient()V
    .registers 4

    .line 141
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 142
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session Client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_31
    return-void
.end method

.method public final runPendingCommand()V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendCommand(IIILandroid/os/Bundle;)V
    .registers 12

    .line 441
    new-instance v6, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIILandroid/os/Bundle;)V

    .line 453
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendCommandIfSessionExist(IILandroid/os/Bundle;)V
    .registers 5

    .line 457
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IILandroid/os/Bundle;)V

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final sendConnectionError(I)V
    .registers 4

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendConnectionError: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show(IILandroid/os/Bundle;)V
    .registers 14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 332
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->show(IILandroid/os/Bundle;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V

    return-void
.end method

.method public show(IILandroid/os/Bundle;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V
    .registers 22

    .line 338
    new-instance v11, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object v9, p3

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZILjava/lang/String;JLandroid/os/Bundle;Landroid/hardware/biometrics/PromptInfo;)V

    move-object v0, p0

    .line 356
    invoke-virtual {p0, v11}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unBind()V
    .registers 5

    .line 249
    monitor-enter p0

    :try_start_1
    const-string v0, "BiometricSysUiManager"

    const-string/jumbo v1, "unBind: started"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_59

    if-eqz v0, :cond_32

    .line 253
    :try_start_d
    invoke-interface {v0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16
    .catchall {:try_start_d .. :try_end_15} :catchall_59

    goto :goto_32

    :catch_16
    move-exception v0

    :try_start_17
    const-string v1, "BiometricSysUiManager"

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_59

    .line 259
    :cond_32
    :goto_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_38
    .catchall {:try_start_32 .. :try_end_37} :catchall_59

    goto :goto_54

    :catch_38
    move-exception v0

    :try_start_39
    const-string v1, "BiometricSysUiManager"

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_54
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cleanup()V

    .line 264
    monitor-exit p0

    return-void

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_59

    throw v0
.end method
