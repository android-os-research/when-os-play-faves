.class public Lcom/samsung/ucm/ucmservice/scp/CertUtil;
.super Ljava/lang/Object;
.source "CertUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UCM::CertUtil"

.field public static final TAG_CA_ID:B = 0x42t

.field public static final TAG_ECC_KEY_PARAMETER:B = -0x10t

.field public static final TAG_ECC_PUB_KEY_VALUE:B = -0x50t

.field public static final TAG_EXPIRATION_DATE:S = 0x5f24s

.field public static final TAG_PUBLIC_KEY_DATA:S = 0x7f49s


# instance fields
.field public DEBUG:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    return-void
.end method

.method public static toBin(Ljava/lang/String;)[B
    .registers 6

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1f

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 37
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    .line 38
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1f
    return-object v1
.end method

.method public static toHex(B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    and-int/lit16 p0, p0, 0xff

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%02x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 7

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_26

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 26
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public updateTlvCaCert([B)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object p1

    .line 53
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v2, 0x7f49

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(S)V

    invoke-virtual {p1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    .line 55
    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x50

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 56
    new-instance v4, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v5, -0x10

    invoke-direct {v4, v5}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz v2, :cond_162

    if-eqz v4, :cond_162

    const-string v6, "EC"

    .line 59
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 60
    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    .line 62
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 61
    invoke-virtual {v6, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 63
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    .line 65
    iget-boolean v6, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    const-string v7, "UCM::CertUtil"

    if-eqz v6, :cond_6d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pubkey value : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_6d
    new-instance v6, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v6, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v0, v6}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    .line 67
    new-instance v6, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v6, v5}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v0, v6}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    .line 69
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x4

    .line 70
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 72
    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 73
    iget-boolean v6, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v6, :cond_c0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "X:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_c0
    iget-boolean v6, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v6, :cond_e4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Y:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_e4
    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v2, :cond_105

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed pubkey value : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_105
    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v6, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v6, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    .line 78
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    .line 77
    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 79
    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 80
    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v2, :cond_139

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added new pubkey value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_139
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v0

    .line 83
    iget-boolean p0, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz p0, :cond_159

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final tlv : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_159
    array-length p0, v0

    invoke-static {v0, v1, p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .line 86
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object p0

    return-object p0

    .line 89
    :cond_162
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method
