.class public Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.super Ljava/lang/Thread;
.source "AuthenticationSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;,
        Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    }
.end annotation


# static fields
.field public static final EVENT_SESSION_COMPLETE:I = 0x3

.field public static final EVENT_SESSION_STARTED:I = 0x2

.field public static final EVENT_SESSION_STARTING:I = 0x1

.field public static final EVENT_SESSION_STOPPED:I = 0x4

.field public static final MSG_CONNECTIVITY_CONNECT:I = 0x7

.field public static final MSG_CONNECTIVITY_CONNECTED:I = 0x8

.field public static final MSG_CONNECTIVITY_DISCONNECTED:I = 0x9

.field public static final MSG_CONNECTIVITY_OFF:I = 0x4

.field public static final MSG_CONNECTIVITY_ON:I = 0x3

.field public static final MSG_CONNECTIVITY_READY:I = 0x2

.field public static final MSG_CONNECTIVITY_SET_CONNECTION:I = 0x1

.field public static final MSG_CONNECTIVITY_TURNING_OFF:I = 0x5

.field public static final MSG_SESSION_REQUEST_TEAR_DOWN:I = 0xd

.field public static final MSG_SESSION_START:I = 0xb

.field public static final MSG_SESSION_STOP:I = 0xc

.field public static final MSG_SESSION_TIMEOUT:I = 0xe

.field public static final SESSION_NONE:I = 0x7

.field public static final SESSION_STATE_ERROR:I = 0x6

.field public static final SESSION_STATE_READY:I = 0x1

.field public static final SESSION_STATE_STARTED:I = 0x3

.field public static final SESSION_STATE_STARTING:I = 0x2

.field public static final SESSION_STATE_STOPPED:I = 0x5

.field public static final SESSION_STATE_STOPPING:I = 0x4

.field public static final SESSION_TIMEOUT:I = 0xea60

.field public static final TAG:Ljava/lang/String;

.field public static final VDBG:Z = true

.field public static final WAITING_FOR_CONNECTIVITY_OFF:I = 0x3

.field public static final WAITING_FOR_CONNECTIVITY_OFF_WHILE_STOPPING:I = 0x2

.field public static final WAITING_FOR_CONNECTIVITY_ON:I = 0x4

.field public static final WAITING_FOR_CONNECTIVITY_ON_WHILE_SETUP:I = 0x5

.field public static final WAITING_RECEIVED_START_WHILE_STOPPING:I = 0x1


# instance fields
.field public current_hall:I

.field public mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

.field public mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

.field public mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

.field public mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mInternalState:I

.field public mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

.field public mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

.field public mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

.field public mSessionState:I

.field public mSessionThread:Ljava/lang/Thread;

.field public mState:I

.field public mStateLock:Ljava/lang/Object;

.field public mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile mTurnedOffWhileRunning:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmConnectAfterEnable(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionEventListener(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionHandler(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionThread(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTeardownRequested(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmInternalState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSessionThread(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTurnedOffWhileRunning(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnect(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconvertMsg(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleSetConnection(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleSetConnection()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartSession(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStartSession()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStopSession(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleTearDown(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreplayAuthfail(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .line 244
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionState:I

    .line 64
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->current_hall:I

    const/4 v1, 0x1

    .line 65
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 81
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    .line 83
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    .line 114
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;-><init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    .line 245
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    .line 246
    new-instance p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 247
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setRequestPackage(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {p1, p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setConnectivityType(I)V

    .line 249
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 p1, 0x5a

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return-void
.end method

.method public static createNewSession(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .registers 4

    .line 253
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final connect()V
    .registers 3

    .line 493
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez p0, :cond_c

    return-void

    .line 497
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->connect()V

    return-void
.end method

.method public final convertMsg(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_2a

    :pswitch_3
    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    const-string p0, "MSG_SESSION_TIMEOUT"

    return-object p0

    :pswitch_8
    const-string p0, "MSG_SESSION_REQUEST_TEAR_DOWN"

    return-object p0

    :pswitch_b
    const-string p0, "MSG_SESSION_STOP"

    return-object p0

    :pswitch_e
    const-string p0, "MSG_SESSION_START"

    return-object p0

    :pswitch_11
    const-string p0, "MSG_CONNECTIVITY_DISCONNECTED"

    return-object p0

    :pswitch_14
    const-string p0, "MSG_CONNECTIVITY_CONNECTED"

    return-object p0

    :pswitch_17
    const-string p0, "MSG_CONNECTIVITY_CONNECT"

    return-object p0

    :pswitch_1a
    const-string p0, "MSG_CONNECTIVITY_TURNING_OFF"

    return-object p0

    :pswitch_1d
    const-string p0, "MSG_CONNECTIVITY_OFF"

    return-object p0

    :pswitch_20
    const-string p0, "MSG_CONNECTIVITY_ON"

    return-object p0

    :pswitch_23
    const-string p0, "MSG_CONNECTIVITY_READY"

    return-object p0

    :pswitch_26
    const-string p0, "MSG_CONNECTIVITY_SET_CONNECTION"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_3
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_3
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public final disconnect()V
    .registers 3

    .line 501
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez p0, :cond_c

    return-void

    .line 505
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->disconnect()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, " Current AuthenticationSession state:"

    .line 509
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  internal state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConnectAfterEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTeardownRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 517
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_7a
    return-void
.end method

.method public getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    return-object p0
.end method

.method public getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .registers 1

    .line 443
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    return-object p0
.end method

.method public getConnectivityType()I
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivityType()I

    move-result p0

    return p0
.end method

.method public getCurrentHall()I
    .registers 1

    .line 261
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->current_hall:I

    return p0
.end method

.method public getSessionState()I
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 111
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final handleSetConnection()V
    .registers 5

    .line 387
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v1, "handleSetConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v1, :cond_16

    const-string v1, "mAuthenticator is null"

    .line 389
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    .line 390
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    return-void

    .line 392
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_24

    const-string/jumbo p0, "session is stopped!"

    .line 393
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 397
    :cond_24
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection()V

    .line 398
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-virtual {v1, v3}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    .line 399
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 400
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 401
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_70

    .line 403
    :cond_48
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->enable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5e

    .line 404
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x5

    .line 405
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    goto :goto_70

    :cond_5e
    const-string v1, "enable fail"

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 409
    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    const/16 v0, 0xa

    .line 410
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    :goto_70
    return-void
.end method

.method public final handleStartSession()V
    .registers 5

    .line 358
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v1, "handleStartSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t start session, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e

    .line 362
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    return-void

    :cond_2a
    const/4 v1, 0x2

    .line 366
    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 367
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v1, :cond_35

    .line 368
    invoke-interface {v1, v2, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 370
    :cond_35
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v1, :cond_51

    .line 371
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 372
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getConnectivityType()I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;-><init>(Landroid/content/Context;I)V

    .line 374
    :try_start_46
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setAuthenticator(Landroid/content/Context;Lcom/samsung/accessory/manager/authentication/Authenticator;)V
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_4b} :catch_4c

    goto :goto_5c

    :catch_4c
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5c

    :cond_51
    const-string v1, "authenticator is not null, so initialize interrupt parameter"

    .line 379
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setInterrupt(Z)V

    .line 383
    :goto_5c
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleStopSession(Z)V
    .registers 7

    .line 297
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStopSession, force? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-eqz v1, :cond_4d

    const-string/jumbo v1, "waiting for session thread to terminate"

    .line 300
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :try_start_21
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v1, :cond_28

    .line 304
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->onInterrupted()V

    .line 305
    :cond_28
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Thread;->join(J)V

    .line 306
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "Thread is still running.. force stop session!"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :cond_3d
    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 314
    :goto_45
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "session thread is terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/16 v0, 0xb

    if-eqz p1, :cond_5e

    .line 318
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_71

    .line 320
    :cond_5e
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 321
    sget-object p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "session will be restarted.. "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    return-void

    .line 325
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    const/4 v1, 0x4

    if-eqz v0, :cond_79

    .line 326
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 327
    :cond_79
    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 329
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_dc

    .line 330
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 331
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 332
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 333
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 335
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_dc

    .line 337
    sget-object p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "waiting for connectivity off"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 338
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    return-void

    .line 341
    :cond_bd
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    if-eqz v0, :cond_c2

    goto :goto_dc

    .line 343
    :cond_c2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 344
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "waiting for connectivity on"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_dc

    .line 346
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 347
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 352
    :cond_dc
    :goto_dc
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 353
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 354
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleTearDown()V
    .registers 3

    .line 416
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v1, "handleTearDown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    const/4 v1, 0x5

    if-eqz v0, :cond_1e

    .line 420
    :try_start_c
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendEndCommand()V

    .line 421
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 426
    :goto_19
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->close()V

    .line 429
    :cond_1e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_31

    .line 430
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 431
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 434
    :cond_31
    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 436
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v0, :cond_3c

    const/4 v1, 0x4

    .line 437
    invoke-interface {v0, v1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 439
    :cond_3c
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final replayAuthfail(I)V
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 448
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz p1, :cond_d

    const/4 v0, 0x3

    .line 449
    invoke-interface {p1, v0, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_d
    return-void
.end method

.method public run()V
    .registers 4

    .line 455
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startAuthChall()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 457
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 459
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->disconnect()V

    .line 461
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 462
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 463
    :cond_13
    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 465
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    if-eqz v0, :cond_39

    .line 466
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTurnedOffWhileRunning ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 471
    :cond_39
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v0, :cond_41

    const/4 v1, 0x3

    .line 472
    invoke-interface {v0, v1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_41
    return-void
.end method

.method public setAuthenticationResultCallback(Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    return-void
.end method

.method public final setAuthenticator(Landroid/content/Context;Lcom/samsung/accessory/manager/authentication/Authenticator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 489
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    return-void

    .line 487
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authenticator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrentHall(I)V
    .registers 2

    .line 257
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->current_hall:I

    return-void
.end method

.method public setSessionCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    return-void
.end method

.method public final setState(I)V
    .registers 6

    .line 265
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    .line 268
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final startAuthChall()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 480
    :cond_6
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized startSession()V
    .registers 5

    monitor-enter p0

    .line 272
    :try_start_1
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_33

    const-string v1, "Create handler thread"

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SAAuthentication Session Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 277
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 278
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;-><init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xe

    const-wide/32 v2, 0xea60

    .line 279
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    :cond_33
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    .line 286
    monitor-exit p0

    return-void

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSession()V
    .registers 3

    monitor-enter p0

    .line 289
    :try_start_1
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 294
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
