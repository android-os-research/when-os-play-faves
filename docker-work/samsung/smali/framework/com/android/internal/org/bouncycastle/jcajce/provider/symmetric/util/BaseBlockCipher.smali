.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "BaseBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;
    }
.end annotation


# static fields
.field private static final blacklist BUF_SIZE:I = 0x200

.field private static final blacklist gcmSpecClass:Ljava/lang/Class;


# instance fields
.field private blacklist aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

.field private blacklist availableSpecs:[Ljava/lang/Class;

.field private blacklist baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

.field private blacklist digest:I

.field private blacklist engineProvider:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

.field private blacklist fixedIv:Z

.field private blacklist ivLength:I

.field private blacklist ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

.field private blacklist keySizeInBits:I

.field private blacklist modeName:Ljava/lang/String;

.field private blacklist padded:Z

.field private blacklist pbeAlgorithm:Ljava/lang/String;

.field private blacklist pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

.field private blacklist scheme:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 99
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 7
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 137
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 126
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 131
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 140
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 141
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 4
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "ivLength"    # I

    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ZI)V

    .line 204
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;IIII)V
    .registers 11
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "scheme"    # I
    .param p3, "digest"    # I
    .param p4, "keySizeInBits"    # I
    .param p5, "ivLength"    # I

    .line 149
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 126
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 131
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 152
    iput p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 153
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    .line 154
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    .line 155
    iput p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 157
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 158
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ZI)V
    .registers 9
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "fixedIv"    # Z
    .param p3, "ivLength"    # I

    .line 210
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 126
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 131
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 211
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 213
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 214
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 215
    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 216
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;I)V
    .registers 4
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
    .param p2, "ivLength"    # I

    .line 222
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;ZI)V

    .line 223
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;ZI)V
    .registers 9
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
    .param p2, "fixedIv"    # Z
    .param p3, "ivLength"    # I

    .line 229
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 126
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 131
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 232
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 233
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 234
    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 235
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .registers 7
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 171
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 126
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 131
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 172
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 173
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 174
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 175
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;ZI)V
    .registers 9
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;
    .param p2, "fixedIv"    # Z
    .param p3, "ivLength"    # I

    .line 192
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 126
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 131
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 193
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 194
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 195
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 196
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 197
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;ZI)V
    .registers 9
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;
    .param p2, "fixedIv"    # Z
    .param p3, "ivLength"    # I

    .line 181
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 126
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 131
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 183
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 184
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 185
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 186
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V
    .registers 7
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    .line 162
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 126
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 131
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 163
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->get()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 164
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineProvider:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    .line 166
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->get()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 167
    return-void
.end method

.method private blacklist adjustParameters(Ljava/security/spec/AlgorithmParameterSpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 7
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 1064
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_20

    .line 1066
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 1067
    .local v0, "key":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    instance-of v1, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_34

    .line 1069
    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 1071
    .local v1, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 1072
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 1073
    .end local v1    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_34

    .line 1094
    .end local v0    # "key":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_20
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_34

    .line 1096
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 1098
    .local v0, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 1099
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 1118
    .end local v0    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    :cond_34
    :goto_34
    return-object p2
.end method

.method private blacklist isAEADModeName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "modeName"    # Ljava/lang/String;

    .line 1337
    const-string v0, "CCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "GCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private blacklist isBCPBEKeyWithoutIV(Ljava/security/Key;)Z
    .registers 3
    .param p1, "key"    # Ljava/security/Key;

    .line 591
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 15
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1306
    const/4 v0, 0x0

    .line 1308
    .local v0, "len":I
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineGetOutputSize(I)I

    move-result v1

    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_37

    .line 1315
    if-eqz p3, :cond_17

    .line 1317
    :try_start_b
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v1

    move v0, v1

    .line 1320
    :cond_17
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    add-int v2, p5, v0

    invoke-interface {v1, p4, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I

    move-result v1
    :try_end_1f
    .catch Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException; {:try_start_b .. :try_end_1f} :catch_2c
    .catch Lcom/android/internal/org/bouncycastle/crypto/DataLengthException; {:try_start_b .. :try_end_1f} :catch_21

    add-int/2addr v1, v0

    return v1

    .line 1326
    :catch_21
    move-exception v1

    .line 1328
    .local v1, "e":Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1322
    .end local v1    # "e":Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
    :catch_2c
    move-exception v1

    .line 1324
    .local v1, "e":Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1310
    .end local v1    # "e":Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;
    :cond_37
    new-instance v1, Ljavax/crypto/ShortBufferException;

    const-string/jumbo v2, "output buffer too short for input."

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1264
    const/4 v0, 0x0

    .line 1265
    .local v0, "len":I
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineGetOutputSize(I)I

    move-result v1

    new-array v1, v1, [B

    .line 1267
    .local v1, "tmp":[B
    if-eqz p3, :cond_14

    .line 1269
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v0

    .line 1274
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I

    move-result v2
    :try_end_1a
    .catch Lcom/android/internal/org/bouncycastle/crypto/DataLengthException; {:try_start_14 .. :try_end_1a} :catch_32

    add-int/2addr v0, v2

    .line 1279
    nop

    .line 1281
    array-length v2, v1

    if-ne v0, v2, :cond_20

    .line 1283
    return-object v1

    .line 1286
    :cond_20
    array-length v2, v1

    if-gt v0, v2, :cond_2a

    .line 1291
    new-array v2, v0, [B

    .line 1293
    .local v2, "out":[B
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1295
    return-object v2

    .line 1288
    .end local v2    # "out":[B
    :cond_2a
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    const-string v3, "internal buffer overflow"

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1276
    :catch_32
    move-exception v2

    .line 1278
    .local v2, "e":Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
    new-instance v3, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    if-nez v0, :cond_6

    .line 241
    const/4 v0, -0x1

    return v0

    .line 243
    :cond_6
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineGetIV()[B
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_9

    .line 250
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v0

    return-object v0

    .line 253
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;

    .line 259
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .line 265
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_c2

    .line 272
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_1c

    .line 276
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 277
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_19

    .line 282
    goto/16 :goto_c2

    .line 279
    :catch_19
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_81

    .line 287
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    if-nez v0, :cond_51

    .line 291
    :try_start_24
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_AEADChaCha20Poly1305:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 292
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_44} :catch_46

    .line 297
    goto/16 :goto_c2

    .line 294
    :catch_46
    move-exception v0

    .line 296
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_51
    :try_start_51
    const-string v0, "GCM"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 304
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;-><init>([BI)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_75} :catch_76

    .line 309
    goto :goto_c2

    .line 306
    :catch_76
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_c2

    .line 314
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_a0

    .line 318
    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_a0
    :try_start_a0
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 324
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b6} :catch_b7

    .line 329
    goto :goto_c2

    .line 326
    :catch_b7
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c2
    :goto_c2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 9
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1128
    const/4 v0, 0x0

    .line 1130
    .local v0, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_29

    .line 1132
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    invoke-static {p3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/SpecUtil;->extractSpec(Ljava/security/AlgorithmParameters;[Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 1134
    if-eqz v0, :cond_c

    goto :goto_29

    .line 1136
    :cond_c
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t handle parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1140
    :cond_29
    :goto_29
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 1142
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 1143
    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1153
    const/4 v0, 0x0

    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_7} :catch_9

    .line 1158
    nop

    .line 1159
    return-void

    .line 1155
    :catch_9
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 23
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 604
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 605
    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 606
    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 607
    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 612
    instance-of v6, v3, Ljavax/crypto/SecretKey;

    if-nez v6, :cond_3c

    .line 614
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key for algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_2a

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    :cond_2a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " not suitable for symmetric enryption."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 620
    :cond_3c
    if-nez v4, :cond_57

    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    if-eqz v0, :cond_57

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "RC5-64"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_57

    .line 622
    :cond_4f
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "RC5 requires an RC5ParametersSpec to be passed in."

    invoke-direct {v0, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_57
    :goto_57
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    const/4 v6, 0x2

    const-string v7, "Algorithm requires a PBE key"

    if-eq v0, v6, :cond_62

    instance-of v0, v3, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;

    if-eqz v0, :cond_ff

    :cond_62
    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isBCPBEKeyWithoutIV(Ljava/security/Key;)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 637
    :try_start_68
    move-object v0, v3

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_f4

    .line 642
    .local v0, "k":Ljavax/crypto/SecretKey;
    nop

    .line 644
    instance-of v6, v4, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v6, :cond_75

    .line 646
    move-object v6, v4

    check-cast v6, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 649
    :cond_75
    instance-of v6, v0, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v6, :cond_9e

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_9e

    .line 651
    move-object v6, v0

    check-cast v6, Ljavax/crypto/interfaces/PBEKey;

    .line 652
    .local v6, "pbeKey":Ljavax/crypto/interfaces/PBEKey;
    invoke-interface {v6}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v9

    if-eqz v9, :cond_96

    .line 656
    new-instance v9, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-interface {v6}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v10

    invoke-interface {v6}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v11

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v9, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_9e

    .line 654
    :cond_96
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "PBEKey requires parameters to specify salt"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 659
    .end local v6    # "pbeKey":Ljavax/crypto/interfaces/PBEKey;
    :cond_9e
    :goto_9e
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_ad

    instance-of v6, v0, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v6, :cond_a7

    goto :goto_ad

    .line 661
    :cond_a7
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 664
    :cond_ad
    :goto_ad
    instance-of v6, v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v6, :cond_d0

    .line 668
    move-object v6, v3

    check-cast v6, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    .line 669
    .local v6, "pbeKeyParam":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    instance-of v7, v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v7, :cond_be

    .line 671
    move-object v7, v6

    .line 685
    .end local v6    # "pbeKeyParam":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .local v7, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_e9

    .line 673
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local v6    # "pbeKeyParam":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_be
    if-nez v6, :cond_c8

    .line 678
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Unreachable code"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 683
    :cond_c8
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "Algorithm requires a PBE key suitable for PKCS12"

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 688
    .end local v6    # "pbeKeyParam":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_d0
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v9

    const/4 v10, 0x2

    iget v11, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    iget v12, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    iget v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    mul-int/lit8 v13, v6, 0x8

    iget-object v14, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v9 .. v15}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    .line 690
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_e9
    instance-of v6, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_f2

    .line 692
    move-object v6, v7

    check-cast v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 694
    .end local v0    # "k":Ljavax/crypto/SecretKey;
    :cond_f2
    goto/16 :goto_1fe

    .line 639
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :catch_f4
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 718
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ff
    instance-of v0, v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_1a2

    .line 720
    move-object v0, v3

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 722
    .local v0, "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    if-eqz v6, :cond_117

    .line 724
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    goto :goto_11d

    .line 728
    :cond_117
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 731
    :goto_11d
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    if-eqz v6, :cond_12d

    .line 733
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->adjustParameters(Ljava/security/spec/AlgorithmParameterSpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    move-object v7, v6

    .local v6, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_190

    .line 735
    .end local v6    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_12d
    instance-of v6, v4, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v6, :cond_19a

    .line 737
    move-object v6, v4

    check-cast v6, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 742
    invoke-virtual {v6}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_181

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    if-lez v6, :cond_181

    .line 743
    new-instance v6, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v12

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v13

    .line 744
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v14

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v15

    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    .line 746
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getPassword()[C

    move-result-object v9

    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v8

    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v5

    .line 747
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v2

    invoke-direct {v7, v9, v8, v5, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const/16 v17, 0x0

    move-object v9, v6

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v17}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    move-object v0, v6

    .line 751
    :cond_181
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    move-object v7, v2

    .line 758
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_190
    instance-of v2, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_199

    .line 760
    move-object v2, v7

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 762
    .end local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_199
    goto :goto_1fe

    .line 755
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_19a
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "PBE requires PBE parameters to be set."

    invoke-direct {v2, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 763
    .end local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_1a2
    instance-of v0, v3, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v0, :cond_1e7

    .line 765
    move-object v0, v3

    check-cast v0, Ljavax/crypto/interfaces/PBEKey;

    .line 766
    .local v0, "k":Ljavax/crypto/interfaces/PBEKey;
    move-object v2, v4

    check-cast v2, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 767
    instance-of v5, v0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;

    if-eqz v5, :cond_1c3

    if-nez v2, :cond_1c3

    .line 769
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-interface {v0}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v5

    invoke-interface {v0}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v6

    invoke-direct {v2, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 772
    :cond_1c3
    invoke-interface {v0}, Ljavax/crypto/interfaces/PBEKey;->getEncoded()[B

    move-result-object v7

    iget v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    iget v9, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    iget v10, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    iget v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    mul-int/lit8 v11, v2, 0x8

    iget-object v12, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v7 .. v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    .line 773
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    instance-of v2, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_1e6

    .line 775
    move-object v2, v7

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 777
    .end local v0    # "k":Ljavax/crypto/interfaces/PBEKey;
    :cond_1e6
    goto :goto_1fe

    .line 783
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_1e7
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    if-eqz v0, :cond_44a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_44a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_44a

    const/4 v2, 0x5

    if-eq v0, v2, :cond_44a

    .line 787
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v7, v0

    .line 796
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_1fe
    instance-of v0, v4, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v0, :cond_243

    .line 798
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_219

    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-eqz v0, :cond_211

    goto :goto_219

    .line 800
    :cond_211
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "AEADParameterSpec can only be used with AEAD modes."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_219
    :goto_219
    move-object v0, v4

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    .line 806
    .local v0, "aeadSpec":Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;
    instance-of v2, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_22a

    .line 808
    move-object v2, v7

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .local v2, "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_22d

    .line 812
    .end local v2    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_22a
    move-object v2, v7

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 814
    .restart local v2    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :goto_22d
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getAssociatedData()[B

    move-result-object v9

    invoke-direct {v5, v2, v6, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    iput-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    move-object v7, v5

    .line 815
    .end local v0    # "aeadSpec":Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;
    .end local v2    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto/16 :goto_308

    .line 816
    :cond_243
    instance-of v0, v4, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_2be

    .line 818
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    if-eqz v0, :cond_2a9

    .line 820
    move-object v0, v4

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 822
    .local v0, "p":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    array-length v2, v2

    iget v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    if-eq v2, v5, :cond_283

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-nez v2, :cond_283

    iget-boolean v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    if-nez v2, :cond_262

    goto :goto_283

    .line 824
    :cond_262
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IV must be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes long."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 827
    :cond_283
    :goto_283
    instance-of v2, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_299

    .line 829
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v5, v7

    check-cast v5, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v2

    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .local v2, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_2a3

    .line 833
    .end local v2    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_299
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v5

    invoke-direct {v2, v7, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v2

    .line 835
    :goto_2a3
    move-object v2, v7

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 836
    .end local v0    # "p":Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_308

    .line 839
    :cond_2a9
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    if-eqz v0, :cond_308

    const-string v2, "ECB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b6

    goto :goto_308

    .line 841
    :cond_2b6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "ECB mode does not use an IV"

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_2be
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v0, :cond_2f8

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f8

    .line 929
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2df

    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-eqz v0, :cond_2d7

    goto :goto_2df

    .line 931
    :cond_2d7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "GCMParameterSpec can only be used with AEAD modes."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_2df
    :goto_2df
    instance-of v0, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2ed

    .line 937
    move-object v0, v7

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .local v0, "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_2f0

    .line 941
    .end local v0    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_2ed
    move-object v0, v7

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 944
    .restart local v0    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :goto_2f0
    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractAeadParameters(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    move-object v7, v2

    .line 945
    .end local v0    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_308

    .line 946
    :cond_2f8
    if-eqz v4, :cond_308

    instance-of v0, v4, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_2ff

    goto :goto_308

    .line 948
    :cond_2ff
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "unknown parameter type."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_308
    :goto_308
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    if-eqz v0, :cond_3ce

    instance-of v0, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_3ce

    instance-of v0, v7, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-nez v0, :cond_3ce

    .line 953
    move-object/from16 v0, p4

    .line 955
    .local v0, "ivRandom":Ljava/security/SecureRandom;
    if-nez v0, :cond_31c

    .line 957
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 960
    :cond_31c
    const-string v2, "No IV set when using PBE key"

    const-string v5, " * throw an exception."

    const-string v6, " * with an all-zero IV, but in a future release this call will"

    const-string v8, " * configuration is deprecated.  The cipher will be initialized"

    const-string v9, " * have not provided an IV in the AlgorithmParameterSpec.  This"

    const-string v10, " * You have initialized a cipher with a PBE key with no IV and"

    const-string v11, " ******** DEPRECATED FUNCTIONALITY ********"

    move/from16 v12, p1

    const/4 v13, 0x1

    if-eq v12, v13, :cond_38c

    const/4 v13, 0x3

    if-ne v12, v13, :cond_333

    goto :goto_38c

    .line 988
    :cond_333
    iget-object v13, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "PGPCFB"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_3d0

    .line 997
    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isBCPBEKeyWithoutIV(Ljava/security/Key;)Z

    move-result v13

    if-eqz v13, :cond_383

    .line 1001
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v13, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1002
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1003
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1004
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1005
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1006
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1007
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v5, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1008
    invoke-virtual {v5, v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1010
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    new-array v5, v5, [B

    invoke-direct {v2, v7, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v2

    .line 1011
    move-object v2, v7

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_3d0

    .line 998
    :cond_383
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v5, "no IV set when one expected"

    invoke-direct {v2, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 962
    :cond_38c
    :goto_38c
    iget v13, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    new-array v13, v13, [B

    .line 971
    .local v13, "iv":[B
    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isBCPBEKeyWithoutIV(Ljava/security/Key;)Z

    move-result v14

    if-nez v14, :cond_39a

    .line 972
    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_3c2

    .line 975
    :cond_39a
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v14, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 976
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 977
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 978
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 979
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 980
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 981
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v5, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 982
    invoke-virtual {v5, v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 985
    :goto_3c2
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v2, v7, v13}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v2

    .line 986
    move-object v2, v7

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 987
    .end local v13    # "iv":[B
    goto :goto_3d0

    .line 951
    .end local v0    # "ivRandom":Ljava/security/SecureRandom;
    :cond_3ce
    move/from16 v12, p1

    .line 1018
    :cond_3d0
    :goto_3d0
    move-object/from16 v2, p4

    if-eqz v2, :cond_3de

    iget-boolean v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->padded:Z

    if-eqz v0, :cond_3de

    .line 1020
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v0, v7, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v7, v0

    .line 1025
    :cond_3de
    packed-switch v12, :pswitch_data_454

    .line 1036
    :try_start_3e1
    new-instance v0, Ljava/security/InvalidParameterException;

    goto :goto_422

    .line 1033
    :pswitch_3e4
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 1034
    goto :goto_3f2

    .line 1029
    :pswitch_3eb
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v5, 0x1

    invoke-interface {v0, v5, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 1030
    nop

    .line 1039
    :goto_3f2
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v5, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-eqz v5, :cond_41e

    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-nez v5, :cond_41e

    .line 1041
    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->-$$Nest$fgetcipher(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    move-result-object v0

    .line 1043
    .local v0, "aeadCipher":Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->getMac()[B

    move-result-object v8

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x8

    iget-object v9, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v9

    invoke-direct {v5, v6, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B)V

    iput-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 1057
    .end local v0    # "aeadCipher":Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;
    :cond_41e
    nop

    .line 1058
    return-void

    .line 1054
    :catch_420
    move-exception v0

    goto :goto_440

    .line 1036
    :goto_422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown opmode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " passed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
    .end local p1    # "opmode":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "random":Ljava/security/SecureRandom;
    throw v0
    :try_end_440
    .catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_440} :catch_420

    .line 1056
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
    .restart local p1    # "opmode":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p4    # "random":Ljava/security/SecureRandom;
    :goto_440
    new-instance v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 783
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_44a
    move/from16 v12, p1

    move-object/from16 v2, p4

    .line 785
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_454
    .packed-switch 0x1
        :pswitch_3eb
        :pswitch_3e4
        :pswitch_3eb
        :pswitch_3e4
    .end packed-switch
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    if-eqz v0, :cond_17c

    .line 344
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 346
    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 348
    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 349
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_162

    .line 351
    :cond_20
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CBC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 353
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 354
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_162

    .line 357
    :cond_42
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "OFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_8d

    .line 359
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 360
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_77

    .line 362
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "wordSize":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 366
    .end local v0    # "wordSize":I
    goto/16 :goto_162

    .line 369
    :cond_77
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 370
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_162

    .line 373
    :cond_8d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CFB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 375
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 376
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_c1

    .line 378
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 380
    .restart local v0    # "wordSize":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 382
    .end local v0    # "wordSize":I
    goto/16 :goto_162

    .line 385
    :cond_c1
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 386
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_162

    .line 423
    :cond_d7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 425
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 426
    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 437
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_162

    .line 459
    :cond_ff
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v1, "CTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 461
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 462
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_162

    .line 464
    :cond_125
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v1, "CCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 466
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 476
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_162

    .line 505
    :cond_142
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 507
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 517
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 526
    :goto_162
    return-void

    .line 524
    :cond_163
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_17c
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v1, "no mode supported for this algorithm"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 6
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    if-eqz v0, :cond_150

    .line 537
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "paddingName":Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 541
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->wrapOnNoPadding()Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 543
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_14f

    .line 546
    :cond_2c
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13d

    const-string v1, "CTSPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13d

    const-string v1, "CS3PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto/16 :goto_13d

    .line 552
    :cond_46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->padded:Z

    .line 554
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_135

    .line 558
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    goto/16 :goto_127

    .line 562
    :cond_63
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 564
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/paddings/ZeroBytePadding;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_14f

    .line 566
    :cond_7f
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_114

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    goto/16 :goto_114

    .line 570
    :cond_91
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_101

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    goto :goto_101

    .line 574
    :cond_a2
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ee

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    goto :goto_ee

    .line 578
    :cond_b3
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 580
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/paddings/TBCPadding;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/TBCPadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_14f

    .line 584
    :cond_cf
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :cond_ee
    :goto_ee
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_14f

    .line 572
    :cond_101
    :goto_101
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_14f

    .line 568
    :cond_114
    :goto_114
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_14f

    .line 560
    :cond_127
    :goto_127
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_14f

    .line 556
    :cond_135
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "Only NoPadding can be used with AEAD modes."

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_13d
    :goto_13d
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 587
    :cond_14f
    :goto_14f
    return-void

    .line 534
    .end local v0    # "paddingName":Ljava/lang/String;
    :cond_150
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string/jumbo v1, "no padding supported for this algorithm"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .registers 14
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_21

    .line 1249
    :try_start_a
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v0
    :try_end_15
    .catch Lcom/android/internal/org/bouncycastle/crypto/DataLengthException; {:try_start_a .. :try_end_15} :catch_16

    return v0

    .line 1251
    :catch_16
    move-exception v0

    .line 1254
    .local v0, "e":Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1244
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
    :cond_21
    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string/jumbo v1, "output buffer too short for input."

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 13
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 1205
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    .line 1207
    .local v0, "length":I
    const/4 v7, 0x0

    if-lez v0, :cond_24

    .line 1209
    new-array v8, v0, [B

    .line 1211
    .local v8, "out":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v1

    .line 1213
    .local v1, "len":I
    if-nez v1, :cond_19

    .line 1215
    return-object v7

    .line 1217
    :cond_19
    array-length v2, v8

    if-eq v1, v2, :cond_23

    .line 1219
    new-array v2, v1, [B

    .line 1221
    .local v2, "tmp":[B
    const/4 v3, 0x0

    invoke-static {v8, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1223
    return-object v2

    .line 1226
    .end local v2    # "tmp":[B
    :cond_23
    return-object v8

    .line 1229
    .end local v1    # "len":I
    .end local v8    # "out":[B
    :cond_24
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    .line 1231
    return-object v7
.end method

.method protected whitelist test-api engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1169
    .local v0, "remaining":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    goto :goto_4b

    .line 1173
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1175
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    .line 1176
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4b

    .line 1178
    :cond_26
    const/16 v1, 0x200

    const/4 v2, 0x0

    if-gt v0, v1, :cond_38

    .line 1180
    new-array v1, v0, [B

    .line 1181
    .local v1, "data":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1182
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    .line 1183
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 1184
    .end local v1    # "data":[B
    goto :goto_4b

    .line 1187
    :cond_38
    new-array v1, v1, [B

    .line 1190
    .restart local v1    # "data":[B
    :goto_3a
    array-length v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1191
    .local v3, "length":I
    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1192
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    .line 1193
    sub-int/2addr v0, v3

    .line 1195
    .end local v3    # "length":I
    if-gtz v0, :cond_4c

    .line 1196
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 1198
    .end local v1    # "data":[B
    :goto_4b
    return-void

    .line 1195
    .restart local v1    # "data":[B
    :cond_4c
    goto :goto_3a
.end method

.method protected whitelist test-api engineUpdateAAD([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1163
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->updateAAD([BII)V

    .line 1164
    return-void
.end method
