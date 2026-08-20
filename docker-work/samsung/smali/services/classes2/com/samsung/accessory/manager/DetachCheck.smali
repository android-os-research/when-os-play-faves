.class public Lcom/samsung/accessory/manager/DetachCheck;
.super Ljava/lang/Object;
.source "DetachCheck.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SAccessoryManager_DetachCheck"


# instance fields
.field public mAuthStarted:Z

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getNfcAdapter()Landroid/nfc/NfcAdapter;
    .registers 4

    const-string v0, "SAccessoryManager_DetachCheck"

    const/4 v1, 0x0

    .line 90
    :try_start_3
    iget-object v2, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_23

    const-string v2, "NfcAdapter.getDefaultAdapter returns null"

    .line 92
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_23

    const-string/jumbo p0, "retry, NfcAdapter.getDefaultAdapter returns null"

    .line 95
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_23
    return-object v1
.end method

.method public isAuthChipExist()Z
    .registers 3

    .line 43
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    move-result-object v0

    if-eqz v0, :cond_10

    .line 44
    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_10

    .line 45
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    const/4 p0, 0x1

    return p0

    .line 48
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    const/4 p0, 0x0

    return p0
.end method

.method public isAuthChipExistBySensor()I
    .registers 7

    .line 21
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_74

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAuthChipExistBySensor length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SAccessoryManager_DetachCheck"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    array-length v2, v0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6b

    aget-byte v2, v0, v1

    const/16 v5, -0x20

    if-eq v2, v5, :cond_42

    const/16 v5, -0x9

    if-eq v2, v5, :cond_42

    const/16 v5, -0xf

    if-eq v2, v5, :cond_42

    const/16 v5, -0xb

    if-eq v2, v5, :cond_42

    const/16 v5, 0x1e

    if-ne v2, v5, :cond_6b

    .line 29
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NFC Transaction ongoing, response="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "0x%02x"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    const/4 p0, 0x2

    return p0

    .line 33
    :cond_6b
    array-length v0, v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_74

    .line 34
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    return v4

    .line 38
    :cond_74
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    return v1
.end method

.method public final requestStartTypeS()[B
    .registers 3

    const-string v0, "SAccessoryManager_DetachCheck"

    const-string v1, "Reqs"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 55
    :try_start_b
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    .line 56
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1f

    .line 57
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 60
    :try_start_14
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->startCoverAuth()[B

    move-result-object p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d
    const/4 p0, 0x0

    return-object p0

    :catchall_1f
    move-exception p0

    .line 56
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public requestStopTypeS()V
    .registers 3

    const-string v0, "SAccessoryManager_DetachCheck"

    const-string/jumbo v1, "stopAuth"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_b
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    if-nez v1, :cond_18

    const-string p0, "SAccessoryManager_DetachCheck"

    const-string v1, "Do not call stopAuth because startAuth is not executed"

    .line 72
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    monitor-exit v0

    return-void

    :cond_18
    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    .line 76
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_2b

    .line 77
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 80
    :try_start_22
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->stopCoverAuth()Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2a
    :goto_2a
    return-void

    :catchall_2b
    move-exception p0

    .line 76
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method
