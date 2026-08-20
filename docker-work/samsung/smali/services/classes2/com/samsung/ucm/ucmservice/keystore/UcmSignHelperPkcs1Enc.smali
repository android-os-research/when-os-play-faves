.class public Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;
.super Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
.source "UcmSignHelperPkcs1Enc.java"


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
    .registers 3

    .line 8
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "rsa/ecb/nopadding"

    const-string/jumbo v2, "rsa/ecb/pkcs1padding"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;->algorithmSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static isSupportedAlgorithm(Ljava/lang/String;)Z
    .registers 2

    .line 14
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;->algorithmSet:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isEncryptFunction()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
