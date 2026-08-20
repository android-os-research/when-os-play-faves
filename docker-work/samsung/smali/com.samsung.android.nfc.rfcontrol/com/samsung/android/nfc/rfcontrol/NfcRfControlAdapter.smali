.class public Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;
.super Ljava/lang/Object;
.source "NfcRfControlAdapter.java"


# static fields
.field public static final STATE_OFF:Z = false

.field public static final STATE_ON:Z = true

.field private static final TAG:Ljava/lang/String; = "NFC_RfControl"

.field private static mAdapter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->mAdapter:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .registers 4
    .param p0, "e"    # Ljava/lang/Exception;

    .line 86
    const-string v0, "NFC_RfControl"

    const-string v1, "Nfc Rf Control service dead - attempting to recover"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-static {}, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->getServiceInterface()Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;

    move-result-object v1

    .line 88
    .local v1, "service":Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;
    if-nez v1, :cond_13

    .line 89
    const-string v2, "Could not retrieve Nfc Rf Control service during service recovery"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 92
    :cond_13
    sput-object v1, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->mService:Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;

    .line 93
    return-void
.end method

.method public static declared-synchronized getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-class v0, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;

    monitor-enter v0

    .line 31
    if-eqz p0, :cond_43

    .line 33
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    .local v1, "appContext":Landroid/content/Context;
    if-eqz v1, :cond_39

    .line 36
    invoke-static {}, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->getServiceInterface()Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->mService:Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;

    .line 37
    if-eqz v2, :cond_2a

    .line 42
    sget-object v2, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;

    .line 43
    .local v2, "adapter":Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;
    if-nez v2, :cond_28

    .line 44
    new-instance v3, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;

    invoke-direct {v3, v1}, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 45
    sget-object v3, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_41

    .line 47
    :cond_28
    monitor-exit v0

    return-object v2

    .line 38
    .end local v2    # "adapter":Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;
    :cond_2a
    :try_start_2a
    const-string v2, "NFC_RfControl"

    const-string v3, "Could not retrieve NfcRfControl service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Could not retrieve NfcRfControl service"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application(using a mock context?)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    .end local v1    # "appContext":Landroid/content/Context;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_41
    move-exception p0

    goto :goto_4b

    .line 32
    .restart local p0    # "context":Landroid/content/Context;
    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4b
    .catchall {:try_start_2a .. :try_end_4b} :catchall_41

    .line 30
    .end local p0    # "context":Landroid/content/Context;
    :goto_4b
    monitor-exit v0

    throw p0
.end method

.method private static getServiceInterface()Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;
    .registers 2

    .line 80
    const-string v0, "nfcrfcontrol"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 82
    :cond_a
    invoke-static {v0}, Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getNfcRfState()Z
    .registers 3

    .line 72
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->mService:Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;->getRfState()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 73
    :catch_7
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 75
    const/4 v1, 0x1

    return v1
.end method

.method public setNfcRfEnable(Z)Z
    .registers 4
    .param p1, "state"    # Z

    .line 58
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->mService:Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;->setRfEnable(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 59
    :catch_7
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/rfcontrol/NfcRfControlAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 61
    const/4 v1, 0x0

    return v1
.end method
