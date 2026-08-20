.class public Lcom/samsung/accessory/manager/authentication/msg/MsgParser;
.super Ljava/lang/Object;
.source "MsgParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;
    }
.end annotation


# static fields
.field public static final PRODUCT_T9MF:I = 0x33

.field public static final PRODUCT_W6MA:I = 0x55


# instance fields
.field public final RES_ATQS:I

.field public final RES_FIRMWARE:I

.field public final RES_KEY_CHANGE:I

.field public final RES_PUB_KEY:I

.field public final RES_READ_ID:I

.field public final RES_REQ_EXTRA:I

.field public final RES_REQ_UNIFIED3RD:I

.field public final RES_REQ_URL:I

.field public final RES_SEC_PUB_KEY:I

.field public final RES_VERIFICATION:I

.field public final RES_WRITE_ID:I

.field public final ROOTPUBKEY:I

.field public final SEC_ROOTPUBKEY:I

.field public final SEC_UBIVELOX_ROOTPUBKEY:I

.field public TAG:Ljava/lang/String;

.field public extraData:[B

.field public keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

.field public mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

.field public mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field public managerUrl:[B

.field public productId:B

.field public publicKey:Ljava/lang/String;

.field public randNum:[B

.field public serialNumber:[B

.field public urlExtra:[B


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SAccessoryManager_MsgParser"

    .line 7
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->ROOTPUBKEY:I

    const/4 v1, 0x2

    .line 13
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->SEC_ROOTPUBKEY:I

    const/4 v2, 0x3

    .line 14
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->SEC_UBIVELOX_ROOTPUBKEY:I

    .line 15
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_ATQS:I

    .line 16
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_PUB_KEY:I

    .line 17
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_VERIFICATION:I

    const/4 v0, 0x4

    .line 18
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_WRITE_ID:I

    const/4 v0, 0x5

    .line 19
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_READ_ID:I

    const/4 v0, 0x6

    .line 20
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_FIRMWARE:I

    const/4 v0, 0x7

    .line 21
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_KEY_CHANGE:I

    const/16 v0, 0x8

    .line 22
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_SEC_PUB_KEY:I

    const/16 v0, 0x9

    .line 23
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_REQ_URL:I

    const/16 v0, 0xa

    .line 24
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_REQ_EXTRA:I

    const/16 v0, 0xb

    .line 25
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_REQ_UNIFIED3RD:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 31
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    .line 106
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_28

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 278
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_23

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 279
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

    .line 281
    :cond_23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const-string p0, "null"

    return-object p0
.end method

.method public checkAtqs()Z
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_41

    .line 163
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    .line 164
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "productId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-byte v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    invoke-direct {v0, p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;-><init>(Lcom/samsung/accessory/manager/authentication/msg/MsgParser;B)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    return v1

    :cond_41
    const/4 p0, 0x0

    return p0
.end method

.method public checkExtra()Z
    .registers 6

    .line 226
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    .line 227
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 228
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    int-to-byte v3, v1

    const/4 v4, 0x0

    .line 229
    aput-byte v3, v2, v4

    const/4 v3, 0x1

    .line 230
    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public checkPubKey(IZ)Z
    .registers 7

    .line 175
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->isValidCertificate(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 176
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->setCertificateOfChip([B)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_20

    const/4 v1, 0x3

    goto :goto_23

    :cond_20
    if-ne p1, v1, :cond_23

    move v1, v0

    .line 183
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 184
    invoke-virtual {p0, p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    .line 185
    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    .line 186
    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {p1, v1, p2, v2, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v0, :cond_4f

    .line 188
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    invoke-virtual {p0, p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    goto :goto_4f

    :cond_4e
    const/4 p1, 0x0

    :cond_4f
    :goto_4f
    return p1
.end method

.method public checkReadId()Z
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->serialNumber:[B

    const/4 p0, 0x1

    return p0
.end method

.method public checkUnified3rd()Z
    .registers 8

    .line 237
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    const/4 v1, 0x0

    .line 238
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 239
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    .line 240
    new-array v5, v2, [B

    iput-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    add-int/2addr v4, v3

    .line 241
    new-array v6, v4, [B

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 242
    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    invoke-static {v0, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public checkUrl()Z
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    .line 216
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 217
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    int-to-byte v3, v1

    const/4 v4, 0x0

    .line 218
    aput-byte v3, v2, v4

    const/4 v3, 0x1

    .line 219
    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public checkVerification()Z
    .registers 6

    .line 196
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->isValidSignature(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 197
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->setSignatueOfRandomValue([B)V

    .line 198
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 199
    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    .line 200
    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    .line 201
    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_rand_signature(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_44

    .line 203
    :cond_3b
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "signature is invalid"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_44
    return p0
.end method

.method public getExtraData()[B
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    return-object p0
.end method

.method public getManagerUrl()[B
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    return-object p0
.end method

.method public getProductId()B
    .registers 1

    .line 272
    iget-byte p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    return p0
.end method

.method public getPublicKey()Ljava/lang/String;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    return-object p0
.end method

.method public getSerialNumber()[B
    .registers 1

    .line 260
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->serialNumber:[B

    return-object p0
.end method

.method public parseData(I[B)Z
    .registers 4

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[BZ)Z

    move-result p0

    return p0
.end method

.method public parseData(I[BZ)Z
    .registers 8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a1

    const-string v1, ":"

    const-string v2, "command "

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7b

    const/4 v3, 0x3

    if-eq p1, v3, :cond_55

    const/4 v1, 0x5

    if-eq p1, v1, :cond_49

    packed-switch p1, :pswitch_data_ae

    goto/16 :goto_ac

    .line 154
    :pswitch_15
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 155
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkUnified3rd()Z

    move-result v0

    goto/16 :goto_ac

    .line 150
    :pswitch_22
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 151
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkExtra()Z

    move-result v0

    goto/16 :goto_ac

    .line 146
    :pswitch_2f
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 147
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkUrl()Z

    move-result v0

    goto :goto_ac

    .line 140
    :pswitch_3b
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v0, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 p1, 0x8

    .line 141
    invoke-virtual {p0, p1, p3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkPubKey(IZ)Z

    move-result v0

    goto :goto_ac

    .line 134
    :cond_49
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkReadId()Z

    move-result v0

    goto :goto_ac

    .line 127
    :cond_55
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkVerification()Z

    move-result v0

    .line 129
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 122
    :cond_7b
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v0, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 123
    invoke-virtual {p0, v3, p3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkPubKey(IZ)Z

    move-result v0

    .line 124
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 118
    :cond_a1
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 119
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkAtqs()Z

    move-result v0

    :goto_ac
    return v0

    nop

    :pswitch_data_ae
    .packed-switch 0x8
        :pswitch_3b
        :pswitch_2f
        :pswitch_22
        :pswitch_15
    .end packed-switch
.end method

.method public setRandNum([B)V
    .registers 2

    .line 250
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    return-void
.end method
