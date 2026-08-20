.class public Lcom/publicnfc/Adapter;
.super Ljava/lang/Object;
.source "Adapter.java"


# static fields
.field public static final STATE_CARD_MODE_ON:I = 0x5

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Adapter"

.field private static mService:Lcom/publicnfc/IAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/publicnfc/Adapter;->getServiceInterface()Lcom/publicnfc/IAdapter;

    move-result-object v0

    sput-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    .line 21
    if-eqz v0, :cond_c

    .line 25
    return-void

    .line 22
    :cond_c
    const-string v0, "Adapter"

    const-string v1, "Could not retrieve service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .registers 4
    .param p0, "e"    # Ljava/lang/Exception;

    .line 79
    const-string v0, "Adapter"

    const-string v1, "NFC service dead - attempting to recover"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    invoke-static {}, Lcom/publicnfc/Adapter;->getServiceInterface()Lcom/publicnfc/IAdapter;

    move-result-object v1

    .line 81
    .local v1, "service":Lcom/publicnfc/IAdapter;
    if-nez v1, :cond_13

    .line 82
    const-string v2, "Could not retrieve NFC service during service recovery"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 85
    :cond_13
    sput-object v1, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    .line 86
    return-void
.end method

.method private static getServiceInterface()Lcom/publicnfc/IAdapter;
    .registers 2

    .line 73
    const-string v0, "publicnfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 74
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 75
    :cond_a
    invoke-static {v0}, Lcom/publicnfc/IAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/publicnfc/IAdapter;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public disable()Z
    .registers 3

    .line 65
    :try_start_0
    sget-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    invoke-interface {v0}, Lcom/publicnfc/IAdapter;->disable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 66
    :catch_7
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/publicnfc/Adapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 68
    const/4 v1, 0x0

    return v1
.end method

.method public enable()Z
    .registers 3

    .line 56
    :try_start_0
    sget-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    invoke-interface {v0}, Lcom/publicnfc/IAdapter;->enable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 57
    :catch_7
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/publicnfc/Adapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 59
    const/4 v1, 0x0

    return v1
.end method

.method public getNfcState()I
    .registers 3

    .line 29
    :try_start_0
    sget-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    invoke-interface {v0}, Lcom/publicnfc/IAdapter;->getNfcState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 30
    :catch_7
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/publicnfc/Adapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 32
    const/4 v1, 0x1

    return v1
.end method

.method public readerDisable()Z
    .registers 3

    .line 47
    :try_start_0
    sget-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    invoke-interface {v0}, Lcom/publicnfc/IAdapter;->readerDisable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 48
    :catch_7
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/publicnfc/Adapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 50
    const/4 v1, 0x0

    return v1
.end method

.method public readerEnable()Z
    .registers 3

    .line 38
    :try_start_0
    sget-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    invoke-interface {v0}, Lcom/publicnfc/IAdapter;->readerEnable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 39
    :catch_7
    move-exception v0

    .line 40
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/publicnfc/Adapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 41
    const/4 v1, 0x0

    return v1
.end method
