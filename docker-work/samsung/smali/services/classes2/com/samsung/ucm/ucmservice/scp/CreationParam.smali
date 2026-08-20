.class public Lcom/samsung/ucm/ucmservice/scp/CreationParam;
.super Ljava/lang/Object;
.source "CreationParam.java"


# static fields
.field public static final KEY_ECC_PARAM_FRP_256:I = 0x40

.field public static final KEY_ECC_PARAM_NIST_P256:I = 0x0

.field public static final KEY_TYPE_DH:I = 0x89

.field public static final KEY_TYPE_ECC:I = 0x90

.field public static final KEY_USAGE_BIT_ENCRYPTION:I = 0x8

.field public static final KEY_USAGE_BIT_MAC:I = 0x4

.field public static TAG:Ljava/lang/String; = "UCM.SCP.Param"

.field public static final TAG_KEY_ID:B = -0x6dt

.field public static final TAG_KEY_LENGTH:B = -0x7ft

.field public static final TAG_KEY_PARAM_DH_G:B = -0x74t

.field public static final TAG_KEY_PARAM_DH_P:B = -0x75t

.field public static final TAG_KEY_PARAM_ECC:B = -0x76t

.field public static final TAG_KEY_TYPE:B = -0x80t

.field public static final TAG_KEY_USAGE:B = -0x6bt

.field public static final TAG_KEY_VERSION:B = -0x6ct

.field public static final TAG_SCP_CREATION_PARAM:S = -0x40e0s

.field public static final TAG_SCP_PROTOCOL:B = -0x6ft


# instance fields
.field public keyId:[B

.field public keyLength:[B

.field public keyType:[B

.field public keyUsage:[B

.field public keyVersion:[B

.field public paramDHG:[B

.field public paramDHP:[B

.field public paramECC:[B

.field public protocol:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 19
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    new-array v2, v0, [B

    .line 20
    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    new-array v3, v0, [B

    .line 21
    iput-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    new-array v4, v0, [B

    .line 22
    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    new-array v5, v0, [B

    .line 23
    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    new-array v6, v0, [B

    .line 24
    iput-object v6, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    new-array v7, v0, [B

    .line 25
    iput-object v7, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    const/4 v8, 0x0

    .line 26
    iput-object v8, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    new-array v0, v0, [B

    .line 27
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    const/16 p0, 0x65

    const/4 v0, 0x0

    aput-byte p0, v1, v0

    aput-byte v0, v2, v0

    aput-byte v0, v3, v0

    const/16 p0, 0x3c

    aput-byte p0, v4, v0

    const/16 p0, 0x20

    aput-byte p0, v5, v0

    const/16 p0, -0x70

    aput-byte p0, v6, v0

    aput-byte v0, v7, v0

    return-void
.end method

.method public static generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_10

    .line 308
    sget-object p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string v0, "no bundle for SCP"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_10
    const-string/jumbo v2, "scp_protocol"

    .line 312
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 313
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setProtocol(I)V

    const-string/jumbo v2, "scp_key_id"

    .line 319
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 320
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyId(I)V

    :cond_30
    const-string/jumbo v2, "scp_key_version"

    .line 322
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 323
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyVersion(I)V

    :cond_40
    const-string/jumbo v2, "scp_key_length"

    .line 325
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 326
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyLength(I)V

    :cond_50
    const-string/jumbo v2, "scp_encryption"

    .line 328
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 329
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 330
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->enableEncryption()V

    goto :goto_66

    .line 332
    :cond_63
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->disableEncryption()V

    :cond_66
    :goto_66
    const-string/jumbo v2, "scp_mac"

    .line 335
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 336
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 337
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->enableMAC()V

    goto :goto_7c

    .line 339
    :cond_79
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->disableMAC()V

    .line 342
    :cond_7c
    :goto_7c
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getProtocol()I

    move-result v2

    const-string v3, "Can\'t find ECC curve info"

    const/16 v4, 0x90

    const-string/jumbo v5, "scp_key_agreement_param_ecc"

    packed-switch v2, :pswitch_data_f0

    goto :goto_e7

    :pswitch_8b
    const/16 v2, 0x89

    .line 362
    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyType(I)V

    const-string/jumbo v2, "scp_key_agreement_param_dh_p"

    .line 363
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b1

    const-string/jumbo v3, "scp_key_agreement_param_dh_g"

    .line 364
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 365
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamDHP([B)V

    .line 366
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamDHG([B)V

    goto :goto_e7

    .line 368
    :cond_b1
    sget-object p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t find DH parameters"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 353
    :pswitch_b9
    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyType(I)V

    .line 354
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 355
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamECC(I)V

    goto :goto_e7

    .line 357
    :cond_ca
    sget-object p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 344
    :pswitch_d0
    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyType(I)V

    .line 345
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 346
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamECC(I)V

    goto :goto_e7

    .line 348
    :cond_e1
    sget-object p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :goto_e7
    return-object v0

    .line 315
    :cond_e8
    sget-object p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string v0, "SCP param generation faield :: no protocol"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_data_f0
    .packed-switch 0x64
        :pswitch_d0
        :pswitch_b9
        :pswitch_8b
    .end packed-switch
.end method

.method public static generateParam([B)Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 385
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;-><init>()V

    .line 386
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([B)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object p0

    .line 390
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v2, -0x6f

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz v1, :cond_11f

    .line 392
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    .line 394
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v2, -0x6d

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    const-string v2, "can\'t find keyId"

    if-eqz v1, :cond_119

    .line 396
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    .line 398
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6c

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz v1, :cond_111

    .line 400
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    .line 402
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6b

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz v1, :cond_109

    .line 404
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    .line 406
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x7f

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz v1, :cond_101

    .line 408
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    .line 410
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x80

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz v1, :cond_f9

    .line 412
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    .line 414
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v3, 0x89

    if-ne v1, v3, :cond_cc

    .line 415
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v2, -0x75

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz v1, :cond_c4

    .line 417
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    .line 419
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v2, -0x74

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object p0

    check-cast p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz p0, :cond_bc

    .line 421
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    goto :goto_e9

    .line 420
    :cond_bc
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v0, "can\'t find DH-g"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 416
    :cond_c4
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v0, "can\'t find DH-p"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 422
    :cond_cc
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v3, 0x90

    if-ne v1, v3, :cond_f0

    .line 423
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x76

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object p0

    check-cast p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz p0, :cond_ea

    .line 425
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    :goto_e9
    return-object v0

    .line 424
    :cond_ea
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 427
    :cond_f0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string/jumbo v0, "unknown key type"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 411
    :cond_f9
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v0, "can\'t find keyType"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 407
    :cond_101
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v0, "can\'t find keyLength"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 403
    :cond_109
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v0, "can\'t find keyUsage"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 399
    :cond_111
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v0, "can\'t find keyVersion"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 395
    :cond_119
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 391
    :cond_11f
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v0, "can\'t find protocol"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public disableEncryption()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "disable encryption not supported"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableMAC()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "disable MAC not supported"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableEncryption()V
    .registers 3

    .line 81
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    .line 83
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    return-void
.end method

.method public enableMAC()V
    .registers 3

    .line 101
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    .line 103
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    return-void
.end method

.method public getKeyId()I
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getKeyLength()I
    .registers 2

    .line 164
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getKeyType()I
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getKeyUsage()I
    .registers 2

    .line 160
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getKeyVersion()I
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getParamDHG()[B
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    return-object p0
.end method

.method public getParamDHP()[B
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    return-object p0
.end method

.method public getParamECC()I
    .registers 2

    .line 172
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getProtocol()I
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public setKeyId(I)V
    .registers 3

    .line 65
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p0, v0

    return-void
.end method

.method public setKeyLength(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x20

    if-ne p1, v0, :cond_b

    .line 125
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    const/4 v0, 0x0

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void

    .line 123
    :cond_b
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "key length is fixed as 256 bit"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setKeyType(I)V
    .registers 3

    .line 129
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p0, v0

    return-void
.end method

.method public setKeyVersion(I)V
    .registers 3

    .line 73
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p0, v0

    return-void
.end method

.method public setParamDHG([B)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    return-void
.end method

.method public setParamDHP([B)V
    .registers 2

    .line 139
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    return-void
.end method

.method public setParamECC(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p0, v0

    return-void
.end method

.method public setProtocol(I)V
    .registers 3

    .line 57
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p0, v0

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 7

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getProtocol()I

    move-result v1

    const-string/jumbo v2, "scp_protocol"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyId()I

    move-result v1

    const-string/jumbo v2, "scp_key_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyVersion()I

    move-result v1

    const-string/jumbo v2, "scp_key_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyLength()I

    move-result v1

    const-string/jumbo v2, "scp_key_length"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v1

    const/16 v2, 0x8

    and-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "scp_encryption"

    if-ne v1, v2, :cond_3f

    .line 227
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_42

    .line 229
    :cond_3f
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    :goto_42
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const-string/jumbo v5, "scp_mac"

    if-ne v1, v2, :cond_51

    .line 232
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_54

    .line 234
    :cond_51
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    :goto_54
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getProtocol()I

    move-result v1

    packed-switch v1, :pswitch_data_76

    goto :goto_75

    .line 242
    :pswitch_5c
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    const-string/jumbo v2, "scp_key_agreement_param_dh_p"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 243
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    const-string/jumbo v1, "scp_key_agreement_param_dh_g"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_75

    .line 239
    :pswitch_6d
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_75
    return-object v0

    :pswitch_data_76
    .packed-switch 0x64
        :pswitch_6d
        :pswitch_6d
        :pswitch_5c
    .end packed-switch
.end method

.method public final toHex([B)Ljava/lang/String;
    .registers 7

    .line 251
    new-instance p0, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_26

    aget-byte v3, p1, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    and-int/lit16 v3, v3, 0xff

    .line 253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "%02X"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 254
    :cond_26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCP creation-param {"

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "protocol:"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyId:"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyVersion:"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyUsage:"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyLength:"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyType:"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "KEY PARAM {"

    .line 275
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v3

    const/16 v4, 0x89

    if-ne v3, v4, :cond_a4

    const-string v2, "DH-P:"

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    if-nez v2, :cond_8e

    const-string v2, "null"

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_95

    .line 281
    :cond_8e
    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_95
    const-string v2, ", DH-G:"

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bf

    .line 284
    :cond_a4
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v3

    const/16 v4, 0x90

    if-ne v3, v4, :cond_b9

    const-string v3, "ECC curveId:"

    .line 285
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    aget-byte p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_bf

    :cond_b9
    const-string/jumbo p0, "unknown"

    .line 288
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :goto_bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toTLV()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v2, -0x40e0

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(S)V

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    .line 198
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6f

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 199
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6d

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 200
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6c

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 201
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6b

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 202
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x7f

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 203
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x80

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v2, 0x89

    if-ne v1, v2, :cond_a9

    .line 206
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    if-eqz v1, :cond_a1

    .line 208
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x75

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 209
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x74

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    invoke-direct {v1, v2, p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    goto :goto_c2

    .line 206
    :cond_a1
    new-instance p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v0, "no DH-p"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_a9
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v2, 0x90

    if-ne v1, v2, :cond_c7

    .line 211
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x76

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    invoke-direct {v1, v2, p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 216
    :goto_c2
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object p0

    return-object p0

    .line 213
    :cond_c7
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string/jumbo v0, "unknown key type"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
