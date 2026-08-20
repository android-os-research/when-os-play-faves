.class public Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
.super Lcom/samsung/accessory/manager/authentication/Authenticator;
.source "AuthenticatorClientImpl.java"


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String;

.field public static final VDBG:Z = true


# instance fields
.field public final COMMAND_ATQS:I

.field public final COMMAND_FIRMWARE:I

.field public final COMMAND_KEY_CHANGE:I

.field public final COMMAND_PUB_KEY:I

.field public final COMMAND_READ_ID:I

.field public final COMMAND_REQEXTRA:I

.field public final COMMAND_REQUNIFIED:I

.field public final COMMAND_REQURL:I

.field public final COMMAND_SEC_PUB_KEY:I

.field public final COMMAND_VERIFICATION:I

.field public final COMMAND_WRITE_ID:I

.field public final RETRY_TIME:I

.field public final SW_FAIL:[B

.field public final SW_SECURITY_ATTACK:[B

.field public final SW_SUCCESS:[B

.field public final SW_SUCCESS_UBIVELOX:[B

.field public volatile isInterrupted:Z

.field public mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

.field public mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

.field public randNum:[B

.field public statusWord:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    .line 17
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 716
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->RETRY_TIME:I

    .line 22
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_ATQS:I

    const/4 p1, 0x2

    .line 23
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_PUB_KEY:I

    const/4 v0, 0x3

    .line 24
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_VERIFICATION:I

    const/4 v0, 0x4

    .line 25
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_WRITE_ID:I

    const/4 v0, 0x5

    .line 26
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_READ_ID:I

    const/4 v0, 0x6

    .line 27
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_FIRMWARE:I

    const/4 v0, 0x7

    .line 28
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_KEY_CHANGE:I

    const/16 v0, 0x8

    .line 29
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_SEC_PUB_KEY:I

    const/16 v0, 0x9

    .line 30
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQURL:I

    const/16 v0, 0xa

    .line 31
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQEXTRA:I

    const/16 v0, 0xb

    .line 32
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQUNIFIED:I

    new-array v0, p1, [B

    .line 34
    fill-array-data v0, :array_6a

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    new-array v0, p1, [B

    .line 35
    fill-array-data v0, :array_70

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS_UBIVELOX:[B

    new-array v0, p1, [B

    .line 36
    fill-array-data v0, :array_76

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    new-array v0, p1, [B

    .line 37
    fill-array-data v0, :array_7c

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 40
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 41
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    new-array p1, p1, [B

    .line 42
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 717
    iput p2, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    .line 719
    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-direct {p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 720
    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-direct {p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    return-void

    nop

    :array_6a
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    nop

    :array_70
    .array-data 1
        -0x70t
        0x10t
    .end array-data

    nop

    :array_76
    .array-data 1
        0x69t
        -0x7ft
    .end array-data

    nop

    :array_7c
    .array-data 1
        0x69t
        -0x7et
    .end array-data
.end method


# virtual methods
.method public final authNFC(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 16

    .line 223
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 226
    sget-object p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xc

    .line 227
    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 232
    :cond_17
    :try_start_17
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_d2

    .line 234
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received atqS Data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v5, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 239
    array-length v5, v1

    if-ne v5, v3, :cond_b8

    .line 240
    aget-byte v0, v1, v2

    if-ne v0, v3, :cond_4b

    const/16 v0, 0x14

    .line 241
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_b4

    :cond_4b
    const/16 v1, -0x4f

    if-ne v0, v1, :cond_55

    const/16 v0, 0x15

    .line 243
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_b4

    :cond_55
    const/16 v1, -0x4e

    if-ne v0, v1, :cond_5f

    const/16 v0, 0x16

    .line 245
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_b4

    :cond_5f
    const/16 v1, -0x20

    if-ne v0, v1, :cond_69

    const/16 v0, 0xd

    .line 247
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_b4

    :cond_69
    const/16 v1, -0xf

    if-ne v0, v1, :cond_73

    const/16 v0, 0x28

    .line 249
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_b4

    :cond_73
    const/16 v1, -0xe

    if-ne v0, v1, :cond_7d

    const/16 v0, 0x29

    .line 251
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_b4

    :cond_7d
    const/16 v1, -0xd

    if-ne v0, v1, :cond_87

    const/16 v0, 0x2a

    .line 253
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_b4

    :cond_87
    const/16 v1, -0xc

    if-ne v0, v1, :cond_91

    const/16 v0, 0x2b

    .line 255
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_b4

    :cond_91
    const/16 v1, -0xb

    if-ne v0, v1, :cond_9b

    const/16 v0, 0x2c

    .line 257
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_b4

    :cond_9b
    const/16 v1, -0xa

    if-ne v0, v1, :cond_a5

    const/16 v0, 0x2d

    .line 259
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_b4

    :cond_a5
    const/16 v1, -0x9

    if-ne v0, v1, :cond_af

    const/16 v0, 0x2e

    .line 261
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_b4

    :cond_af
    const/16 v0, 0x1b

    .line 263
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 265
    :goto_b4
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 267
    :cond_b8
    array-length v5, v1

    const/16 v6, 0x10

    if-ne v5, v6, :cond_c4

    .line 268
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4, v3, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v1

    goto :goto_da

    :cond_c4
    const-string v0, "atqS is not correct"

    .line 270
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x19

    .line 271
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 276
    :cond_d2
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v4, " atqS is null"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_da
    if-nez v1, :cond_ec

    const/16 v0, 0x1a

    .line 280
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 281
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "atqS fail, call sendStopAuth()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 286
    :cond_ec
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged()Z

    move-result v1
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_f0} :catch_1f6

    const-string v4, "3rd data is not exist."

    const/16 v5, 0xb

    const-string v6, "Success auth, call sendStopAuth()"

    const/16 v7, 0xa

    const/16 v8, 0x9

    const-string v9, "Read id fail."

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-nez v1, :cond_168

    .line 287
    :try_start_101
    invoke-virtual {p0, p1, v11}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_10b

    .line 289
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 293
    :cond_10b
    invoke-virtual {p0, p1, v12}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_115

    .line 295
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 299
    :cond_115
    invoke-virtual {p0, p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_124

    .line 301
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 306
    :cond_124
    iget v1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v1, v3, :cond_13b

    .line 307
    invoke-virtual {p0, p1, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_163

    .line 309
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v13, "Url is not exist."

    invoke-static {v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_163

    .line 311
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    :cond_13b
    if-ne v1, v11, :cond_150

    .line 316
    invoke-virtual {p0, p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_163

    .line 318
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v13, "Extra is not exist."

    invoke-static {v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_163

    .line 320
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    :cond_150
    if-ne v1, v12, :cond_163

    .line 325
    invoke-virtual {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_163

    .line 327
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_163

    .line 329
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 335
    :cond_163
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_168
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange()Z

    move-result v1

    if-ne v1, v3, :cond_17f

    .line 340
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v13, "need to key change, retry authentication throught chaeged key"

    invoke-static {v1, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    .line 342
    invoke-virtual {p0, p1, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-ne v1, v3, :cond_17f

    .line 344
    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setKeyChanged(Z)V

    .line 348
    :cond_17f
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged()Z

    move-result v1

    if-ne v1, v3, :cond_1ef

    const/16 v1, 0x8

    .line 349
    invoke-virtual {p0, p1, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_191

    .line 351
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 355
    :cond_191
    invoke-virtual {p0, p1, v12}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_19b

    .line 357
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 361
    :cond_19b
    invoke-virtual {p0, p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_1aa

    .line 363
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 368
    :cond_1aa
    iget v1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v1, v3, :cond_1c2

    .line 369
    invoke-virtual {p0, p1, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_1ea

    .line 371
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "url is not exist."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1ea

    .line 373
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    :cond_1c2
    if-ne v1, v11, :cond_1d7

    .line 378
    invoke-virtual {p0, p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_1ea

    .line 380
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v4, "extra is not exist."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1ea

    .line 382
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    :cond_1d7
    if-ne v1, v12, :cond_1ea

    .line 387
    invoke-virtual {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v1

    if-nez v1, :cond_1ea

    .line 389
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1ea

    .line 391
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z

    return v2

    .line 397
    :cond_1ea
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1ef
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_1f2} :catch_1f6

    .line 410
    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v3

    :catch_1f6
    move-exception p0

    .line 404
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0xe

    .line 405
    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2
.end method

.method public final authUsb(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 8

    .line 116
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 117
    sget-object p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xc

    .line 118
    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v1

    :cond_13
    const/4 v0, 0x1

    .line 122
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v2

    .line 123
    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "response from ccic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    array-length v4, v2

    if-ne v4, v0, :cond_3c

    const-string p0, "need define error code"

    .line 126
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 130
    :cond_3c
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4, v0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v2

    if-nez v2, :cond_52

    const/16 v2, 0x1a

    .line 133
    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    const-string v2, "atqS fail, call sendStopAuth()"

    .line 134
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v1

    :cond_52
    const/4 v2, 0x2

    .line 139
    invoke-virtual {p0, p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 141
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v1

    :cond_5d
    const/4 v4, 0x3

    .line 145
    invoke-virtual {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v5

    if-nez v5, :cond_68

    .line 147
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v1

    :cond_68
    const/4 v5, 0x5

    .line 151
    invoke-virtual {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v5

    if-nez v5, :cond_78

    const-string v2, "Read id fail."

    .line 153
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v1

    .line 158
    :cond_78
    iget v5, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v5, v0, :cond_8d

    const/16 v2, 0x9

    .line 159
    invoke-virtual {p0, p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string v2, "Url is not exist."

    .line 161
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v1

    :cond_8d
    if-ne v5, v2, :cond_a0

    const/16 v2, 0xa

    .line 166
    invoke-virtual {p0, p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string v2, "Extra is not exist."

    .line 168
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v1

    :cond_a0
    if-ne v5, v4, :cond_b3

    const/16 v2, 0xb

    .line 173
    invoke-virtual {p0, p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string v2, "3rd data is not exist."

    .line 175
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v1

    :cond_b3
    const-string v2, "Success auth, call sendStopAuth()"

    .line 181
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_bb} :catch_bc

    goto :goto_cb

    :catch_bc
    move-exception p0

    .line 186
    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xe

    .line 187
    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 189
    :goto_cb
    invoke-virtual {p1, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0
.end method

.method public final authWirelessCharger(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 8

    .line 72
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 73
    sget-object p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xc

    .line 74
    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v1

    :cond_13
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 79
    fill-array-data v0, :array_7e

    .line 80
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    .line 83
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    .line 84
    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "open wirelesscharger: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4c

    const-string/jumbo v0, "open fail"

    .line 87
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v1

    :cond_4c
    const/4 v0, 0x2

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v0

    if-nez v0, :cond_57

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v1

    :cond_57
    const/4 v0, 0x3

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v0

    if-nez v0, :cond_62

    .line 98
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v1

    :cond_62
    const-string v0, "Success auth, call sendStopAuth()"

    .line 101
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_67} :catch_68

    goto :goto_77

    :catch_68
    move-exception v0

    .line 104
    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    .line 105
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 107
    :goto_77
    invoke-virtual {p1, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :array_7e
    .array-data 1
        0x0t
        0x55t
        0x6t
        0x8t
        0x5t
        0x20t
        0x1dt
        0x17t
        0x0t
        0x0t
        0x2t
        0x1t
        -0x62t
        -0x57t
        -0x7ft
        0x2t
    .end array-data
.end method

.method public byteArrayToString([B)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_28

    .line 706
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 707
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_23

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 708
    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 710
    :cond_23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const-string p0, "null"

    return-object p0
.end method

.method public final checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 10

    .line 647
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p2, :cond_120

    .line 649
    array-length v2, p2

    if-nez v2, :cond_22

    goto/16 :goto_120

    .line 654
    :cond_22
    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_af

    .line 655
    aget-byte p0, p2, v1

    if-ne p0, v3, :cond_31

    const/16 p0, 0x14

    .line 657
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_31
    const/16 p1, -0x50

    if-ne p0, p1, :cond_3c

    const/16 p0, 0x15

    .line 659
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_3c
    const/16 p1, -0x4e

    if-ne p0, p1, :cond_47

    const/16 p0, 0x16

    .line 661
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_47
    const/16 p1, -0x20

    if-ne p0, p1, :cond_52

    const/16 p0, 0xd

    .line 663
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_52
    const/16 p1, -0xf

    if-ne p0, p1, :cond_5d

    const/16 p0, 0x28

    .line 665
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_5d
    const/16 p1, -0xe

    if-ne p0, p1, :cond_68

    const/16 p0, 0x29

    .line 667
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_68
    const/16 p1, -0xd

    if-ne p0, p1, :cond_73

    const/16 p0, 0x2a

    .line 669
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_73
    const/16 p1, -0xc

    if-ne p0, p1, :cond_7e

    const/16 p0, 0x2b

    .line 671
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_7e
    const/16 p1, -0xb

    if-ne p0, p1, :cond_89

    const/16 p0, 0x2c

    .line 673
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_89
    const/16 p1, -0xa

    if-ne p0, p1, :cond_94

    const/16 p0, 0x2d

    .line 675
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_94
    const/16 p1, -0x9

    if-ne p0, p1, :cond_9f

    const/16 p0, 0x2e

    .line 677
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_9f
    const/4 p1, -0x2

    if-ne p0, p1, :cond_a9

    const/16 p0, 0x1c

    .line 679
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_11f

    :cond_a9
    const/16 p0, 0x1b

    .line 681
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_11f

    .line 682
    :cond_af
    array-length v2, p2

    const/4 v4, 0x3

    if-le v2, v4, :cond_11f

    .line 683
    array-length v2, p2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    const/4 v5, 0x2

    invoke-static {p2, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status Word: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10a

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS_UBIVELOX:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_ea

    goto :goto_10a

    .line 692
    :cond_ea
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_fa

    const/16 p0, 0x18

    .line 693
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v1

    .line 695
    :cond_fa
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_11f

    const/16 p0, 0x17

    .line 696
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v1

    .line 687
    :cond_10a
    :goto_10a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS_UBIVELOX:[B

    invoke-static {v2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[BZ)Z

    move-result p0

    if-nez p0, :cond_11e

    .line 689
    invoke-virtual {p3, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v1

    :cond_11e
    move v1, p0

    :cond_11f
    :goto_11f
    return v1

    :cond_120
    :goto_120
    const/16 p0, 0xc

    .line 650
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v1
.end method

.method public onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 5

    .line 48
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationChallenge, type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authNFC(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result p0

    return p0

    :cond_23
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authUsb(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result p0

    return p0

    :cond_2b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_33

    .line 54
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authWirelessCharger(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result p0

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public onInterrupted()V
    .registers 2

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    return-void
.end method

.method public final sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z
    .registers 13

    .line 419
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    .line 420
    sget-object p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string p2, "interrupted!"

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x20

    .line 421
    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    :cond_13
    const-string v0, "ExtraData is NULL"

    const-string v3, "URI is NULL"

    const/16 v4, 0x5f

    const/16 v5, 0x5e

    const-string v6, "Send Command "

    const/16 v7, 0xe

    packed-switch p2, :pswitch_data_252

    move v1, v2

    goto/16 :goto_23b

    .line 604
    :pswitch_25
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqUnified3rd()[B

    move-result-object v1

    .line 607
    :try_start_2b
    sget-object v8, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v1

    .line 609
    invoke-virtual {p0, p2, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 611
    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 614
    :cond_4d
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v6

    if-eqz v6, :cond_78

    .line 615
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    .line 621
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v3

    if-eqz v3, :cond_71

    .line 622
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    goto/16 :goto_23b

    .line 624
    :cond_71
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 617
    :cond_78
    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_7e} :catch_7f

    return v2

    .line 633
    :catch_7f
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 577
    :pswitch_83
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqExtra()[B

    move-result-object v1

    .line 580
    :try_start_89
    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v1

    .line 582
    invoke-virtual {p0, p2, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 584
    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 587
    :cond_ab
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v5

    if-eqz v5, :cond_be

    .line 588
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    goto/16 :goto_23b

    .line 590
    :cond_be
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_c4} :catch_c5

    return v2

    .line 599
    :catch_c5
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 550
    :pswitch_c9
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqUrl()[B

    move-result-object v0

    .line 553
    :try_start_cf
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0, v0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    .line 555
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 557
    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 560
    :cond_f1
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v4

    if-eqz v4, :cond_105

    .line 561
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    move v1, v0

    goto/16 :goto_23b

    .line 563
    :cond_105
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_10b} :catch_10c

    return v2

    .line 572
    :catch_10c
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 462
    :pswitch_110
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqPubKey()[B

    move-result-object v0

    .line 465
    :try_start_116
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0, v0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    .line 468
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v1
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_132} :catch_135

    if-nez v1, :cond_23b

    return v2

    .line 476
    :catch_135
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 531
    :pswitch_139
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getKeyChange()[B

    move-result-object v0

    .line 534
    :try_start_13f
    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0, v0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    .line 536
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result p0
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_15b} :catch_15e

    if-nez p0, :cond_23b

    return v2

    .line 544
    :catch_15e
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 426
    :pswitch_162
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqFirmwareVersion()[B

    move-result-object v0

    move v3, v2

    :goto_169
    if-ge v3, v1, :cond_23b

    .line 429
    :try_start_16b
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0, v0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_182} :catch_185

    add-int/lit8 v3, v3, 0x1

    goto :goto_169

    .line 434
    :catch_185
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 509
    :pswitch_189
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReadCoverId()[B

    move-result-object v0

    .line 512
    :try_start_18f
    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0, v0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    .line 514
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    if-nez v0, :cond_1ae

    return v2

    .line 518
    :cond_1ae
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getSerialNumber()[B

    move-result-object v0

    if-eqz v0, :cond_23b

    .line 519
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getSerialNumber()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraId([B)V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_1bf} :catch_1c1

    goto/16 :goto_23b

    .line 525
    :catch_1c1
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 484
    :pswitch_1c5
    :try_start_1c5
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->makeRandomNumber()[B

    .line 485
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getRandNum()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    .line 486
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->setRandNum([B)V

    .line 487
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getDataVerification()[B

    move-result-object v0

    .line 489
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0, v0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    .line 492
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v1
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1f9} :catch_1fc

    if-nez v1, :cond_23b

    return v2

    .line 500
    :catch_1fc
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 440
    :pswitch_200
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqPubKey()[B

    move-result-object v0

    .line 443
    :try_start_206
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, v0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    .line 446
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v1

    if-nez v1, :cond_225

    return v2

    .line 450
    :cond_225
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23b

    .line 451
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getPublicKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setPublicKey(Ljava/lang/String;)V
    :try_end_236
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_236} :catch_237

    goto :goto_23b

    .line 457
    :catch_237
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    .line 639
    :cond_23b
    :goto_23b
    :pswitch_23b
    sget-object p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive Command "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_252
    .packed-switch 0x2
        :pswitch_200
        :pswitch_1c5
        :pswitch_23b
        :pswitch_189
        :pswitch_162
        :pswitch_139
        :pswitch_110
        :pswitch_c9
        :pswitch_83
        :pswitch_25
    .end packed-switch
.end method

.method public setInterrupt(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    return-void
.end method

.method public final stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 2

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    .line 214
    :catch_4
    sget-object p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string p1, "fail stop command"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method
