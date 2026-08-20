.class public Lcom/samsung/android/nfc/mpos/MPOSAdapter;
.super Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks$Stub;
.source "MPOSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;
    }
.end annotation


# static fields
.field private static final ACTION_START_SERVICE:Ljava/lang/String; = "com.samsung.android.nfc.action.START_SERVICE"

.field private static final START_SERVICE_EXTRA_TYPE:Ljava/lang/String; = "com.samsung.android.nfc.extra.TYPE"

.field public static final STATE_OFF:Z = false

.field public static final STATE_ON:Z = true

.field private static final TAG:Ljava/lang/String; = "NFC"

.field private static mAdapter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/samsung/android/nfc/mpos/MPOSAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;


# instance fields
.field private mCallback:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

.field private mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mAdapter:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks$Stub;-><init>()V

    .line 38
    sput-object p1, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .registers 4
    .param p0, "e"    # Ljava/lang/Exception;

    .line 208
    const-string v0, "NFC"

    const-string v1, "mPOS service dead - attempting to recover"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-static {}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->getServiceInterface()Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    move-result-object v1

    .line 210
    .local v1, "service":Lcom/samsung/android/nfc/mpos/IMPOSAdapter;
    if-nez v1, :cond_13

    .line 211
    const-string v2, "Could not retrieve mPOS service during service recovery"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 214
    :cond_13
    sput-object v1, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    .line 215
    return-void
.end method

.method public static declared-synchronized getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/mpos/MPOSAdapter;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-class v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;

    monitor-enter v0

    .line 49
    if-eqz p0, :cond_43

    .line 51
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    .local v1, "appContext":Landroid/content/Context;
    if-eqz v1, :cond_39

    .line 55
    sget-object v2, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/nfc/mpos/MPOSAdapter;

    .line 56
    .local v2, "adapter":Lcom/samsung/android/nfc/mpos/MPOSAdapter;
    if-nez v2, :cond_20

    .line 57
    new-instance v3, Lcom/samsung/android/nfc/mpos/MPOSAdapter;

    invoke-direct {v3, v1}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 58
    sget-object v3, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_20
    invoke-static {}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->getServiceInterface()Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_41

    .line 61
    if-eqz v3, :cond_2a

    .line 66
    monitor-exit v0

    return-object v2

    .line 62
    :cond_2a
    :try_start_2a
    const-string v3, "NFC"

    const-string v4, "Could not retrieve mPOS service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Could not retrieve mPOS service"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    .end local v2    # "adapter":Lcom/samsung/android/nfc/mpos/MPOSAdapter;
    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application(using a mock context?)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    .end local v1    # "appContext":Landroid/content/Context;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_41
    move-exception p0

    goto :goto_4b

    .line 50
    .restart local p0    # "context":Landroid/content/Context;
    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4b
    .catchall {:try_start_2a .. :try_end_4b} :catchall_41

    .line 48
    .end local p0    # "context":Landroid/content/Context;
    :goto_4b
    monitor-exit v0

    throw p0
.end method

.method private static getServiceInterface()Lcom/samsung/android/nfc/mpos/IMPOSAdapter;
    .registers 6

    .line 179
    const-string v0, "mpos"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 180
    .local v1, "b":Landroid/os/IBinder;
    if-nez v1, :cond_2c

    .line 181
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/nfc/mpos/MPOSAdapter$1;

    invoke-direct {v3}, Lcom/samsung/android/nfc/mpos/MPOSAdapter$1;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 192
    const/16 v2, 0xa

    .line 193
    .local v2, "i":I
    :goto_17
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_2c

    .line 194
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_22

    .line 196
    goto :goto_2c

    .line 199
    :cond_22
    const-wide/16 v4, 0xfa

    :try_start_24
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_28

    .line 200
    :goto_27
    goto :goto_2a

    :catch_28
    move-exception v2

    goto :goto_27

    .line 193
    :goto_2a
    move v2, v3

    goto :goto_17

    .line 203
    .end local v3    # "i":I
    :cond_2c
    :goto_2c
    if-nez v1, :cond_30

    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_30
    invoke-static {v1}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableDedicatedReaderMode()Z
    .registers 4

    .line 157
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mCallback:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    .line 158
    sget-object v1, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    iget-object v2, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, v0, v0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->changeDedicatedReaderMode(Landroid/os/IBinder;Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c

    return v0

    .line 159
    :catch_c
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 161
    const/4 v1, 0x0

    return v1
.end method

.method public enableDedicatedReaderMode(Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;Ljava/lang/String;)Z
    .registers 5
    .param p1, "callback"    # Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;
    .param p2, "reader"    # Ljava/lang/String;

    .line 141
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mToken:Landroid/os/Binder;

    .line 143
    :try_start_7
    iput-object p1, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mCallback:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    .line 144
    sget-object v1, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v1, v0, p0, p2}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->changeDedicatedReaderMode(Landroid/os/IBinder;Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 145
    :catch_10
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 147
    const/4 v1, 0x0

    return v1
.end method

.method public getState()Z
    .registers 3

    .line 171
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->getState()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 172
    :catch_7
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 174
    const/4 v1, 0x0

    return v1
.end method

.method public onErrorNotified(I)V
    .registers 3
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mCallback:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    if-eqz v0, :cond_7

    .line 227
    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;->onErrorNotified(I)V

    .line 228
    :cond_7
    return-void
.end method

.method public onTransactionEventDetected(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mCallback:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    if-eqz v0, :cond_7

    .line 221
    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;->onHciEvtTrasactionDetected(Landroid/content/Intent;)V

    .line 222
    :cond_7
    return-void
.end method

.method public selectHost(Ljava/lang/String;)Z
    .registers 4
    .param p1, "reader"    # Ljava/lang/String;

    .line 96
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->selectHost(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 97
    :catch_7
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 99
    const/4 v1, 0x0

    return v1
.end method

.method public setDedicatedReaderMode(Z)Z
    .registers 4
    .param p1, "state"    # Z

    .line 111
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->setDedicatedReaderMode(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 112
    :catch_7
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 114
    const/4 v1, 0x0

    return v1
.end method

.method public setOnCallbacks(Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;)Z
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    .line 77
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mCallback:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    .line 78
    if-nez p1, :cond_c

    .line 79
    sget-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->setOnCallback(Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;)Z

    move-result v0

    return v0

    .line 81
    :cond_c
    sget-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v0, p0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->setOnCallback(Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 82
    :catch_13
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 84
    const/4 v1, 0x0

    return v1
.end method

.method public setTestMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 126
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->setTestMode(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 127
    :catch_7
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 129
    const/4 v1, 0x0

    return v1
.end method
