.class public Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# static fields
.field public static final ADDITIONAL_FIELD_EXTRA_ONLY:I = 0x2

.field public static final ADDITIONAL_FIELD_NONE:I = 0x0

.field public static final ADDITIONAL_FIELD_UNIFIED_EXIST:I = 0x3

.field public static final ADDITIONAL_FIELD_URI_ONLY:I = 0x1

.field public static final API_STATE_DEFAULT:I = 0x0

.field public static final API_STATE_STARTCOVERAUTH:I = 0x1

.field public static final API_STATE_STOPCOVERAUTH:I = 0x3

.field public static final API_STATE_TRANCEIVEAUTHDATA:I = 0x2

.field public static final API_STATE_USB_END_COMMAND:I = 0xb

.field public static final AUTH_FAIL_REASON_AUTHENTICATION_TRANSACTION:I = 0x2d

.field public static final AUTH_FAIL_REASON_AUTH_FAILED:I = 0x1

.field public static final AUTH_FAIL_REASON_COMMAND_DATA_LOST:I = 0x15

.field public static final AUTH_FAIL_REASON_COMMAND_DUPLICATED:I = 0x18

.field public static final AUTH_FAIL_REASON_COMMAND_LENGTH_INVALID:I = 0x19

.field public static final AUTH_FAIL_REASON_COMMAND_NULL:I = 0x1a

.field public static final AUTH_FAIL_REASON_COMMAND_OUT_OF_SEQUENCE:I = 0x17

.field public static final AUTH_FAIL_REASON_COMMAND_REJECTED:I = 0x14

.field public static final AUTH_FAIL_REASON_COMMAND_TIMEOUT:I = 0x16

.field public static final AUTH_FAIL_REASON_COMMAND_UNDEFINED:I = 0x1b

.field public static final AUTH_FAIL_REASON_CONECTIVITY_BUSY:I = 0xd

.field public static final AUTH_FAIL_REASON_CONECTIVITY_DOWN:I = 0xc

.field public static final AUTH_FAIL_REASON_CONECTIVITY_ERROR:I = 0xa

.field public static final AUTH_FAIL_REASON_CONECTIVITY_MAXIMUM_CONNECTION_REACHED:I = 0xb

.field public static final AUTH_FAIL_REASON_CONNECTIVITY_EXCEPTION:I = 0xe

.field public static final AUTH_FAIL_REASON_FIRMWARE_DOWNLOAD:I = 0x29

.field public static final AUTH_FAIL_REASON_HALL_MISMATCH:I = 0x5c

.field public static final AUTH_FAIL_REASON_INTERNAL_ERROR:I = 0x5a

.field public static final AUTH_FAIL_REASON_LED_TRANSACTION:I = 0x28

.field public static final AUTH_FAIL_REASON_NFC_TURNING_OFF:I = 0x2b

.field public static final AUTH_FAIL_REASON_NFC_TURNING_ON:I = 0x2a

.field public static final AUTH_FAIL_REASON_REQUEST_EXTRA:I = 0x5f

.field public static final AUTH_FAIL_REASON_REQUEST_URI:I = 0x5e

.field public static final AUTH_FAIL_REASON_SESSION_BUSY:I = 0x1e

.field public static final AUTH_FAIL_REASON_SESSION_INTERRUPTED:I = 0x20

.field public static final AUTH_FAIL_REASON_SESSION_STOPPED:I = 0x1c

.field public static final AUTH_FAIL_REASON_SESSION_TIMEOUT:I = 0x1f

.field public static final AUTH_FAIL_REASON_TAG_PRESENT:I = 0x2e

.field public static final AUTH_FAIL_REASON_TIMEOUT:I = 0x5b

.field public static final AUTH_FAIL_REASON_WIRELESS_CHARGING:I = 0x2c

.field public static final AUTH_FAIL_REASON_YEAR_MISMATCH:I = 0x5d

.field public static final AUTH_REASON:Ljava/lang/String; = "reason"

.field public static final AUTH_SUCCESS:I = 0x0

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_AUTHENTICATION_ADDRESS:Ljava/lang/String; = "address"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "connectivity_type"

.field public static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public apiState:I

.field public isKeyChanged:Z

.field public isUrlExist:I

.field public mAuthenticationResult:Z

.field public mBundle:Landroid/os/Bundle;

.field public mByteArrayExtraData:[B

.field public mByteArrayManagerURI:[B

.field public mConnectivityType:I

.field public mExtraID:[B

.field public mReason:I

.field public mRequestPkg:Ljava/lang/String;

.field public mStringExtraData:Ljava/lang/String;

.field public mStringManagerURI:Ljava/lang/String;

.field public needKeyChange:Z

.field public publicKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mAuthenticationResult:Z

    const/16 v1, 0x5a

    .line 86
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 87
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 91
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_28

    .line 227
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 228
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_23

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 229
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

    .line 231
    :cond_23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const-string p0, "null"

    return-object p0
.end method

.method public getApiState()I
    .registers 1

    .line 218
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    return p0
.end method

.method public getByteArrayExtraData()[B
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    return-object p0
.end method

.method public getByteArrayManagerURI()[B
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    return-object p0
.end method

.method public getConnectivityType()I
    .registers 1

    .line 184
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    return p0
.end method

.method public getExtraId()[B
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    return-object p0
.end method

.method public getPublicKey()Ljava/lang/String;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    return-object p0
.end method

.method public getReason()I
    .registers 1

    .line 202
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    return p0
.end method

.method public getRequestPackage()Ljava/lang/String;
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getResultBundle()Landroid/os/Bundle;
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    if-eqz v0, :cond_b

    .line 189
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const-string v2, "extra"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 190
    :cond_b
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getStringExtraData()Ljava/lang/String;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    return-object p0
.end method

.method public getStringManagerURI()Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    return-object p0
.end method

.method public isKeyChanged()Z
    .registers 1

    .line 194
    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    return p0
.end method

.method public needKeyChange()Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    return p0
.end method

.method public setApiState(I)V
    .registers 2

    .line 222
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    return-void
.end method

.method public setConnectivityType(I)V
    .registers 2

    .line 180
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    return-void
.end method

.method public setExtraData([B)V
    .registers 4

    .line 133
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    if-eqz p1, :cond_19

    .line 136
    :try_start_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    const/4 p1, 0x1

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    const-string p1, ""

    .line 139
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    :cond_19
    :goto_19
    return-void
.end method

.method public setExtraId([B)V
    .registers 5

    if-eqz p1, :cond_2b

    .line 151
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 152
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    array-length p1, p1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_33

    .line 154
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    const/16 v0, 0x15

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 156
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_33

    :cond_1f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 158
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_33

    :cond_25
    const/4 v0, 0x3

    if-ne p1, v0, :cond_33

    .line 160
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_33

    .line 163
    :cond_2b
    sget-object p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setExtraId : data is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    return-void
.end method

.method public setKeyChanged(Z)V
    .registers 2

    .line 198
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    return-void
.end method

.method public setManagerURI([B)V
    .registers 4

    .line 117
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    if-eqz p1, :cond_19

    .line 120
    :try_start_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    const/4 p1, 0x1

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    const-string p1, ""

    .line 123
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    :cond_19
    :goto_19
    return-void
.end method

.method public setNeedKeyChange(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public setReason(I)V
    .registers 4

    .line 206
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    const-string/jumbo v0, "reason"

    if-nez p1, :cond_12

    .line 208
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    .line 210
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    return-void

    .line 214
    :cond_12
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setRequestPackage(Ljava/lang/String;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    return-void
.end method
