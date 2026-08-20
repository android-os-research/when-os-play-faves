.class public Lcom/android/server/knox/dar/AuthResult;
.super Ljava/lang/Object;
.source "AuthResult.java"


# static fields
.field public static final CALLER_AUTH_RESULT:I = 0x0

.field public static final CALLING_PACKAGE:I = 0x1

.field public static final CALLING_PACKAGE_AUTH_RESULT:I = 0x3

.field public static final CALLING_PACKAGE_SIGS:I = 0x2

.field public static final STATUS_ABNORMAL:I = 0x1

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_NOT_SUPPORT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "AuthResult"


# instance fields
.field public mCallerAuthResult:I

.field public mCallingPackage:[B

.field public mCallingPackageAuthResult:I

.field public mCallingPackageSigs:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallerAuthResult:I

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    .line 28
    iput-object v2, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackage:[B

    new-array v2, v1, [B

    aput-byte v3, v2, v3

    .line 29
    iput-object v2, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageSigs:[B

    .line 30
    iput v0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageAuthResult:I

    .line 33
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_87

    .line 37
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 40
    :goto_20
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 41
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 42
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-eqz v2, :cond_75

    if-eq v2, v1, :cond_6e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_67

    const/4 v3, 0x3

    if-eq v2, v3, :cond_56

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid tag no : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AuthResult"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 53
    :cond_56
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageAuthResult:I

    goto :goto_20

    .line 50
    :cond_67
    invoke-static {v0}, Lcom/android/server/knox/dar/Asn1Utils;->getByteArrayFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageSigs:[B

    goto :goto_20

    .line 47
    :cond_6e
    invoke-static {v0}, Lcom/android/server/knox/dar/Asn1Utils;->getByteArrayFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackage:[B

    goto :goto_20

    .line 44
    :cond_75
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallerAuthResult:I

    goto :goto_20

    :cond_86
    return-void

    .line 34
    :cond_87
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected sequence for root of trust, found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCallerAuthResult()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallerAuthResult:I

    return p0
.end method

.method public getCallingPackage()[B
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackage:[B

    return-object p0
.end method

.method public getCallingPackageAuthResult()I
    .registers 1

    .line 75
    iget p0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageAuthResult:I

    return p0
.end method

.method public getCallingPackageSigs()[B
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageSigs:[B

    return-object p0
.end method

.method public statusToString(IZ)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_16

    const/4 p0, 0x1

    if-eq p1, p0, :cond_13

    const/4 p0, 0x2

    const-string v0, "Not support"

    if-eq p1, p0, :cond_12

    if-eqz p2, :cond_d

    return-object v0

    .line 90
    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    return-object v0

    :cond_13
    const-string p0, "Abnormal"

    return-object p0

    :cond_16
    const-string p0, "Normal"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "        Caller Auth Result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/knox/dar/AuthResult;->mCallerAuthResult:I

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/dar/AuthResult;->statusToString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        Calling Package : "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackage:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        Calling Package Signatures : "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageSigs:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        Calling Package Auth Result : "

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageAuthResult:I

    const/4 v2, 0x1

    .line 104
    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/dar/AuthResult;->statusToString(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
