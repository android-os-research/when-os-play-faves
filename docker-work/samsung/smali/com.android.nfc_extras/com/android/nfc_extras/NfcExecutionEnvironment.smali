.class public Lcom/android/nfc_extras/NfcExecutionEnvironment;
.super Ljava/lang/Object;
.source "NfcExecutionEnvironment.java"


# static fields
.field public static final ACTION_AID_SELECTED:Ljava/lang/String; = "com.android.nfc_extras.action.AID_SELECTED"

.field public static final ACTION_APDU_RECEIVED:Ljava/lang/String; = "com.android.nfc_extras.action.APDU_RECEIVED"

.field public static final ACTION_EMV_CARD_REMOVAL:Ljava/lang/String; = "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

.field public static final ACTION_MIFARE_ACCESS_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

.field private static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field private static final EE_ERROR_EXT_FIELD:I = -0x5

.field private static final EE_ERROR_INIT:I = -0x3

.field private static final EE_ERROR_IO:I = -0x1

.field private static final EE_ERROR_LISTEN_MODE:I = -0x4

.field private static final EE_ERROR_NFC_DISABLED:I = -0x6

.field public static final EXTRA_AID:Ljava/lang/String; = "com.android.nfc_extras.extra.AID"

.field public static final EXTRA_APDU_BYTES:Ljava/lang/String; = "com.android.nfc_extras.extra.APDU_BYTES"

.field public static final EXTRA_MIFARE_BLOCK:Ljava/lang/String; = "com.android.nfc_extras.extra.MIFARE_BLOCK"


# instance fields
.field private final mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method constructor <init>(Lcom/android/nfc_extras/NfcAdapterExtras;)V
    .registers 3
    .param p1, "extras"    # Lcom/android/nfc_extras/NfcAdapterExtras;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

    .line 124
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mToken:Landroid/os/Binder;

    .line 125
    return-void
.end method

.method private static throwBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p0, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc_extras/EeIOException;
        }
    .end annotation

    .line 214
    const-string v0, "e"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "m"

    packed-switch v0, :pswitch_data_48

    .line 228
    return-void

    .line 218
    :pswitch_c
    new-instance v0, Lcom/android/nfc_extras/EeIOException;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/nfc_extras/EeIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_16
    new-instance v0, Lcom/android/nfc_extras/EeAlreadyOpenException;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/nfc_extras/EeAlreadyOpenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :pswitch_20
    new-instance v0, Lcom/android/nfc_extras/EeInitializationException;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/nfc_extras/EeInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_2a
    new-instance v0, Lcom/android/nfc_extras/EeListenModeException;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/nfc_extras/EeListenModeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :pswitch_34
    new-instance v0, Lcom/android/nfc_extras/EeExternalFieldException;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/nfc_extras/EeExternalFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :pswitch_3e
    new-instance v0, Lcom/android/nfc_extras/EeNfcDisabledException;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/nfc_extras/EeNfcDisabledException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_48
    .packed-switch -0x6
        :pswitch_3e
        :pswitch_34
        :pswitch_2a
        :pswitch_20
        :pswitch_16
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

    invoke-virtual {v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->getService()Landroid/nfc/INfcAdapterExtras;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

    iget-object v1, v1, Lcom/android/nfc_extras/NfcAdapterExtras;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/nfc/INfcAdapterExtras;->close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/nfc_extras/NfcExecutionEnvironment;->throwBundle(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 190
    nop

    .line 191
    return-void

    .line 187
    :catch_15
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

    invoke-virtual {v1, v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 189
    new-instance v1, Ljava/io/IOException;

    const-string v2, "NFC Service was dead"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public open()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc_extras/EeIOException;
        }
    .end annotation

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

    invoke-virtual {v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->getService()Landroid/nfc/INfcAdapterExtras;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

    iget-object v1, v1, Lcom/android/nfc_extras/NfcAdapterExtras;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/nfc/INfcAdapterExtras;->open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    .line 169
    .local v0, "b":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/nfc_extras/NfcExecutionEnvironment;->throwBundle(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 173
    .end local v0    # "b":Landroid/os/Bundle;
    nop

    .line 174
    return-void

    .line 170
    :catch_15
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

    invoke-virtual {v1, v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 172
    new-instance v1, Lcom/android/nfc_extras/EeIOException;

    const-string v2, "NFC Service was dead, try again"

    invoke-direct {v1, v2}, Lcom/android/nfc_extras/EeIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public transceive([B)[B
    .registers 5
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

    invoke-virtual {v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->getService()Landroid/nfc/INfcAdapterExtras;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

    iget-object v1, v1, Lcom/android/nfc_extras/NfcAdapterExtras;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcAdapterExtras;->transceive(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_19

    .line 208
    .local v0, "b":Landroid/os/Bundle;
    nop

    .line 209
    invoke-static {v0}, Lcom/android/nfc_extras/NfcExecutionEnvironment;->throwBundle(Landroid/os/Bundle;)V

    .line 210
    const-string v1, "out"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 205
    .end local v0    # "b":Landroid/os/Bundle;
    :catch_19
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/nfc_extras/NfcExecutionEnvironment;->mExtras:Lcom/android/nfc_extras/NfcAdapterExtras;

    invoke-virtual {v1, v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 207
    new-instance v1, Ljava/io/IOException;

    const-string v2, "NFC Service was dead, need to re-open"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
