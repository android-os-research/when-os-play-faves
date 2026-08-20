.class public Lcom/samsung/ucm/ucmservice/scp/TADriver;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Protocol;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$ErrorCode;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "UCM.SCP.TADriver"


# instance fields
.field public _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

.field public certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 20
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;-><init>(Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration-IA;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    .line 19
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    .line 74
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mContext:Landroid/content/Context;

    .line 75
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    .line 76
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    .line 77
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    return-void
.end method

.method private static native constructSecureChannel(II[B)[B
.end method

.method private static native deleteCACert(ILjava/lang/String;)I
.end method

.method private static native destorySecureChannel(I)I
.end method

.method private static native encodeAPDU(I[BZ)[B
.end method

.method private static native forwardApduResponse(I[B)[B
.end method

.method public static native getStringFromJNI()Ljava/lang/String;
.end method

.method private static native installCACert(ILjava/lang/String;[B)I
.end method


# virtual methods
.method public createSecureChannel(IILcom/samsung/ucm/ucmservice/scp/CreationParam;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 7

    .line 169
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-virtual {v0, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->isSupported(I)Z

    move-result v0

    const-string v1, "UCM.SCP.TADriver"

    const/4 v2, 0x1

    if-nez v0, :cond_19

    const-string p1, "Not supported protocol"

    .line 170
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 171
    invoke-virtual {p0, v2, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0

    .line 178
    :cond_19
    :try_start_19
    invoke-virtual {p3}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toTLV()[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->constructSecureChannel(II[B)[B

    move-result-object p1

    if-eqz p1, :cond_58

    .line 179
    array-length p2, p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_64

    if-gtz p2, :cond_27

    goto :goto_58

    :cond_27
    const/4 p2, 0x0

    .line 188
    aget-byte p3, p1, p2

    const/4 v0, 0x5

    if-eq p3, v0, :cond_47

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown TZ response : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0, v2, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0

    .line 191
    :cond_47
    new-instance p3, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result p0

    const/16 v0, 0x190

    array-length v1, p1

    .line 193
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p3, p2, p0, v0, p1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object p3

    :cond_58
    :goto_58
    :try_start_58
    const-string p1, "Invalid msg returned from SCPConstructSecureChannel(in)"

    .line 180
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xb

    .line 181
    invoke-virtual {p0, v2, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_63} :catch_64

    return-object p0

    :catch_64
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    .line 185
    invoke-virtual {p0, v2, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0
.end method

.method public deleteCACerttificate(ILjava/lang/String;)Z
    .registers 3

    .line 161
    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->deleteCACert(ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public destroySecureChannel(I)I
    .registers 2

    .line 203
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destorySecureChannel(I)I

    move-result p0

    return p0
.end method

.method public final forwardApdu(I[B)[B
    .registers 3

    .line 304
    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApduResponse(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 5

    .line 65
    new-instance v0, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result p0

    const/16 p2, 0x191

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v0
.end method

.method public final getSDKErrorCode(I)I
    .registers 4

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSDKErrorCode internalCode-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UCM.SCP.TADriver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-eq p1, p0, :cond_59

    const/4 p0, 0x2

    if-eq p1, p0, :cond_59

    const/4 p0, 0x3

    if-eq p1, p0, :cond_56

    const/4 p0, 0x4

    if-eq p1, p0, :cond_53

    const/16 p0, 0xf

    if-eq p1, p0, :cond_59

    const/16 p0, 0xf0

    if-eq p1, p0, :cond_50

    packed-switch p1, :pswitch_data_70

    packed-switch p1, :pswitch_data_7e

    packed-switch p1, :pswitch_data_90

    const/4 p0, 0x0

    goto :goto_5b

    :pswitch_35
    const/16 p0, 0x3d

    goto :goto_5b

    :pswitch_38
    const/16 p0, 0x3c

    goto :goto_5b

    :pswitch_3b
    const/16 p0, 0x3b

    goto :goto_5b

    :pswitch_3e
    const/16 p0, 0x3a

    goto :goto_5b

    :pswitch_41
    const/16 p0, 0x39

    goto :goto_5b

    :pswitch_44
    const/16 p0, 0x38

    goto :goto_5b

    :pswitch_47
    const/16 p0, 0x37

    goto :goto_5b

    :pswitch_4a
    const/16 p0, 0x36

    goto :goto_5b

    :pswitch_4d
    const/16 p0, 0x35

    goto :goto_5b

    :cond_50
    const/16 p0, 0x42

    goto :goto_5b

    :cond_53
    :pswitch_53
    const/16 p0, 0x34

    goto :goto_5b

    :cond_56
    const/16 p0, 0x33

    goto :goto_5b

    :cond_59
    :pswitch_59
    const/16 p0, 0x32

    .line 137
    :goto_5b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSDKErrorCode errorCode-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_data_70
    .packed-switch 0x7
        :pswitch_4d
        :pswitch_59
        :pswitch_4a
        :pswitch_4d
        :pswitch_59
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x11
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_41
        :pswitch_41
        :pswitch_41
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x21
        :pswitch_3b
        :pswitch_38
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_35
        :pswitch_53
        :pswitch_41
    .end packed-switch
.end method

.method public final getSW([B)S
    .registers 3

    .line 308
    array-length p0, p1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_7

    const/16 p0, 0x6700

    return p0

    :cond_7
    add-int/lit8 v0, p0, -0x2

    .line 311
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public installCACerttificate(Ljava/lang/String;[BI)Z
    .registers 5

    const/4 v0, 0x0

    .line 149
    :try_start_1
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->updateTlvCaCert([B)[B

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_f

    .line 153
    invoke-static {p3, p1, p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACert(ILjava/lang/String;[B)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :catch_f
    :cond_f
    return v0
.end method

.method public final isEncryptableResp(S)Z
    .registers 3

    const p0, 0xff00

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/16 v0, -0x7000

    if-eq p1, v0, :cond_16

    const/16 p1, 0x62

    if-eq p0, p1, :cond_16

    const/16 p1, 0x63

    if-ne p0, p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method public processMsg(II[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 12

    const/16 v0, 0x191

    const/16 v1, 0xb

    const/16 v2, 0x12d

    const-string v3, "UCM.SCP.TADriver"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_128

    const/4 p1, 0x2

    .line 300
    invoke-virtual {p0, v4, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0

    .line 271
    :pswitch_13
    invoke-virtual {p0, p1, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApdu(I[B)[B

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 273
    array-length p2, p1

    if-gtz p2, :cond_1d

    goto :goto_5d

    .line 279
    :cond_1d
    aget-byte p2, p1, v5

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4c

    const/4 p1, 0x6

    if-eq p2, p1, :cond_3f

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown TZ response : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0, v4, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0

    .line 282
    :cond_3f
    new-instance p1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    const/16 p2, 0x12c

    .line 283
    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result p0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, v0, p3}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object p1

    .line 288
    :cond_4c
    new-instance p2, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result p0

    const/16 p3, 0x190

    array-length v0, p1

    .line 290
    invoke-static {p1, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p2, v5, p0, p3, p1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object p2

    :cond_5d
    :goto_5d
    const-string p1, "Invalid msg returned from SCPForwardApduMessage()"

    .line 274
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0, v4, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0

    .line 243
    :pswitch_67
    invoke-virtual {p0, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSW([B)S

    move-result p2

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SW of response : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->isEncryptableResp(S)Z

    move-result v6

    if-nez v6, :cond_a7

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failure response : 0x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 248
    invoke-virtual {p0, v4, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0

    .line 252
    :cond_a7
    invoke-static {p1, p3, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object p1

    if-nez p1, :cond_b7

    const-string p1, "Failed to decode APDU"

    .line 254
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0, v2, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0

    .line 258
    :cond_b7
    aget-byte p2, p1, v5

    if-eqz p2, :cond_d8

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to decode APDU 0x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0, v2, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0

    .line 264
    :cond_d8
    new-instance p2, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    .line 265
    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result p0

    array-length p3, p1

    .line 267
    invoke-static {p1, v4, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p2, v5, p0, v0, p1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object p2

    .line 223
    :pswitch_e7
    invoke-static {p1, p3, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object p1

    if-nez p1, :cond_f7

    const-string p1, "Failed to encode APDU"

    .line 225
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0, v2, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0

    .line 230
    :cond_f7
    aget-byte p2, p1, v5

    if-eqz p2, :cond_118

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to encode APDU 0x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0, v2, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0

    return-object p0

    .line 236
    :cond_118
    new-instance p2, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    .line 237
    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result p0

    array-length p3, p1

    .line 239
    invoke-static {p1, v4, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p2, v5, p0, v0, p1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object p2

    nop

    :pswitch_data_128
    .packed-switch 0xc8
        :pswitch_e7
        :pswitch_67
        :pswitch_13
    .end packed-switch
.end method
