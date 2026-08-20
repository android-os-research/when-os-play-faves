.class public Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;
.super Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
.source "UcmSignHelperPkcs1.java"


# static fields
.field public static final algorithmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public static final algorithmSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    new-array v1, v1, [B

    .line 14
    fill-array-data v1, :array_5e

    const-string v2, "md5withrsa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    new-array v1, v1, [B

    .line 19
    fill-array-data v1, :array_6c

    const-string/jumbo v2, "sha1withrsa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x13

    new-array v2, v1, [B

    .line 23
    fill-array-data v2, :array_78

    const-string/jumbo v3, "sha224withrsa"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [B

    .line 28
    fill-array-data v2, :array_86

    const-string/jumbo v3, "sha256withrsa"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [B

    .line 33
    fill-array-data v2, :array_94

    const-string/jumbo v3, "sha384withrsa"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [B

    .line 38
    fill-array-data v1, :array_a2

    const-string/jumbo v2, "sha512withrsa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmSet:Ljava/util/HashSet;

    .line 44
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void

    nop

    :array_5e
    .array-data 1
        0x30t
        0x20t
        0x30t
        0xct
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0x5t
        0x5t
        0x0t
        0x4t
        0x10t
    .end array-data

    nop

    :array_6c
    .array-data 1
        0x30t
        0x21t
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
        0x4t
        0x14t
    .end array-data

    :array_78
    .array-data 1
        0x30t
        0x2dt
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x1ct
    .end array-data

    :array_86
    .array-data 1
        0x30t
        0x31t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x1t
        0x5t
        0x0t
        0x4t
        0x20t
    .end array-data

    :array_94
    .array-data 1
        0x30t
        0x41t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x2t
        0x5t
        0x0t
        0x4t
        0x30t
    .end array-data

    :array_a2
    .array-data 1
        0x30t
        0x51t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x3t
        0x5t
        0x0t
        0x4t
        0x40t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static isSupportedAlgorithm(Ljava/lang/String;)Z
    .registers 2

    .line 48
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getProcessAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "RSA/ECB/PKCS1Padding"

    return-object p0
.end method

.method public isEncryptFunction()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public processInput([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->algorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 63
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->algorithm:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->getMdAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 64
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    if-eqz p0, :cond_32

    if-nez v0, :cond_21

    goto :goto_32

    .line 69
    :cond_21
    array-length p1, v0

    array-length v1, p0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    .line 71
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    array-length v0, v0

    add-int/2addr v0, v2

    .line 73
    array-length v1, p0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return-object p0
.end method
