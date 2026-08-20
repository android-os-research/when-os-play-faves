.class public Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "NfcConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;,
        Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_RW_P2P_STATE_CHANGED:Ljava/lang/String; = "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_NFC_SERVICE_STARTED:Ljava/lang/String; = "com.sec.android.nfc.AUTH_READY"

.field public static final ACTION_NFC_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ADAPTER_STATE_OFF:I = 0x1

.field public static final ADAPTER_STATE_ON:I = 0x3

.field public static final ADAPTER_STATE_TURNING_OFF:I = 0x4

.field public static final ADAPTER_STATE_TURNING_ON:I = 0x2

.field public static final EXTRA_ADAPTER_RW_P2P_STATE:Ljava/lang/String; = "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final SEM_STATE_CARD_MODE_ON:I = 0x5

.field public static final STATE_RW_P2P_OFF:I = 0xb

.field public static final STATE_RW_P2P_ON:I = 0xd

.field public static final STATE_RW_P2P_TURNING_OFF:I = 0xe

.field public static final STATE_RW_P2P_TURNING_ON:I = 0xc

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

.field public mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

.field public mPrevState:I

.field public mState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAdapterStateChangedHandler(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableRequest(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrevState(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)I
    .registers 1

    iget p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmPrevState(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmState(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$menableInternal(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->enableInternal(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendStateChanged(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I

    .line 50
    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    .line 51
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 334
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    if-eqz v0, :cond_13

    .line 336
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    :cond_13
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .registers 2

    .line 279
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 p1, 0x1

    if-eqz p0, :cond_8

    .line 280
    invoke-interface {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V

    :cond_8
    return p1
.end method

.method public disable()Z
    .registers 3

    .line 219
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->disableInternal()Z

    move-result p0

    return p0
.end method

.method public final disableInternal()Z
    .registers 5

    .line 226
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcState()I

    move-result v0

    .line 228
    iget p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    const/4 v1, 0x0

    if-ne p0, v0, :cond_a

    return v1

    .line 253
    :cond_a
    sget-object p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableInternal : can\'t disable currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public disconnect()Z
    .registers 2

    .line 286
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, " Current NfcConnectivity state:"

    .line 367
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mState = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPrevState = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enable()Z
    .registers 3

    .line 156
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->enableInternal(Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 159
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    return v0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final enableInternal(Z)Z
    .registers 6

    .line 171
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1f

    .line 191
    sget-object v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableInternal : can\'t enable currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_2b

    .line 185
    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 187
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    move-result v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x1

    :goto_2b
    if-eqz v1, :cond_31

    if-eqz p1, :cond_31

    .line 212
    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    :cond_31
    return v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNfcAdapter()Landroid/nfc/NfcAdapter;
    .registers 4

    const/4 v0, 0x0

    .line 120
    :try_start_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_23

    .line 122
    sget-object v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    const-string v2, "NfcAdapter.getDefaultAdapter returns null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_23

    const-string/jumbo p0, "retry, NfcAdapter.getDefaultAdapter returns null"

    .line 125
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_23
    return-object v0
.end method

.method public final getNfcState()I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_21

    .line 345
    :try_start_5
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 348
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semGetAdapterState()I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception v1

    .line 354
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v1, 0xc8

    .line 356
    :try_start_16
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v1

    .line 358
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 292
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 295
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->startCoverAuth()[B

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 298
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public final sendStateChanged(I)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz p0, :cond_7

    .line 110
    invoke-interface {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    :cond_7
    return-void
.end method

.method public sendStopAuth()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 307
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->stopCoverAuth()Z

    move-result p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public sendStopUsbAuth()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public sendSync([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    sget-object p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSync, payload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 322
    :try_start_1
    invoke-virtual {p2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    .line 323
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 325
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->transceiveAuthData([B)[B

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 328
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method
