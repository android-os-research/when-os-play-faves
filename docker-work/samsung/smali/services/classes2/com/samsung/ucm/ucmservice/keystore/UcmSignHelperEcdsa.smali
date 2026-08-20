.class public Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;
.super Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
.source "UcmSignHelperEcdsa.java"


# static fields
.field public static final algorithmSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 10
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "nonewithecdsa"

    const-string/jumbo v2, "sha1withecdsa"

    const-string/jumbo v3, "sha224withecdsa"

    const-string/jumbo v4, "sha256withecdsa"

    const-string/jumbo v5, "sha384withecdsa"

    const-string/jumbo v6, "sha512withecdsa"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;->algorithmSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static isSupportedAlgorithm(Ljava/lang/String;)Z
    .registers 2

    .line 24
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;->algorithmSet:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getProcessAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "NONEwithECDSA"

    return-object p0
.end method

.method public processInput([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->algorithm:Ljava/lang/String;

    const-string v1, "nonewithecdsa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 32
    :cond_b
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->algorithm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->getMdAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 33
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method
