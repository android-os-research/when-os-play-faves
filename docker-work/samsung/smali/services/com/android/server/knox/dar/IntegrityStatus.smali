.class public Lcom/android/server/knox/dar/IntegrityStatus;
.super Ljava/lang/Object;
.source "IntegrityStatus.java"


# static fields
.field public static final AUTH_RESULT:I = 0x5

.field public static final ICD:I = 0x2

.field public static final KERNEL_STATUS:I = 0x3

.field public static final STATUS_ABNORMAL:I = 0x1

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_NOT_SUPPORT:I = 0x2

.field public static final SYSTEM_STATUS:I = 0x4

.field public static final TAG:Ljava/lang/String; = "IntegrityStatus"

.field public static final TRUST_BOOT:I = 0x0

.field public static final WARRANTY:I = 0x1


# instance fields
.field public mAuthResult:Lcom/android/server/knox/dar/AuthResult;

.field public mIcd:I

.field public mKernelStatus:I

.field public mSystemStatus:I

.field public mTrustBoot:I

.field public mWarranty:I


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mTrustBoot:I

    .line 28
    iput v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mWarranty:I

    .line 29
    iput v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mIcd:I

    .line 30
    iput v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mKernelStatus:I

    .line 31
    iput v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mSystemStatus:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mAuthResult:Lcom/android/server/knox/dar/AuthResult;

    .line 35
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 36
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 38
    :goto_17
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 39
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 40
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_a5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_93

    const/4 v2, 0x2

    if-eq v1, v2, :cond_82

    const/4 v2, 0x3

    if-eq v1, v2, :cond_71

    const/4 v2, 0x4

    if-eq v1, v2, :cond_60

    const/4 v2, 0x5

    if-eq v1, v2, :cond_54

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid tag no : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntegrityStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 57
    :cond_54
    new-instance v1, Lcom/android/server/knox/dar/AuthResult;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/knox/dar/AuthResult;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mAuthResult:Lcom/android/server/knox/dar/AuthResult;

    goto :goto_17

    .line 54
    :cond_60
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mSystemStatus:I

    goto :goto_17

    .line 51
    :cond_71
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mKernelStatus:I

    goto :goto_17

    .line 48
    :cond_82
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mIcd:I

    goto :goto_17

    .line 45
    :cond_93
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mWarranty:I

    goto/16 :goto_17

    .line 42
    :cond_a5
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mTrustBoot:I

    goto/16 :goto_17

    :cond_b7
    return-void
.end method


# virtual methods
.method public getIcd()I
    .registers 1

    .line 75
    iget p0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mIcd:I

    return p0
.end method

.method public getKernelStatus()I
    .registers 1

    .line 79
    iget p0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mKernelStatus:I

    return p0
.end method

.method public getSystemStatus()I
    .registers 1

    .line 83
    iget p0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mSystemStatus:I

    return p0
.end method

.method public getTrustBoot()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mTrustBoot:I

    return p0
.end method

.method public getWarranty()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mWarranty:I

    return p0
.end method

.method public isNormal()Z
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mTrustBoot:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mWarranty:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mIcd:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mKernelStatus:I

    if-nez v0, :cond_16

    iget p0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mSystemStatus:I

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public statusToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_13

    const/4 p0, 0x1

    if-eq p1, p0, :cond_10

    const/4 p0, 0x2

    if-eq p1, p0, :cond_d

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "Not support"

    return-object p0

    :cond_10
    const-string p0, "Abnormal"

    return-object p0

    :cond_13
    const-string p0, "Normal"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    TrustBoot : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mTrustBoot:I

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    Warranty : "

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mWarranty:I

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    ICD : "

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mIcd:I

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    Kernel Status : "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mKernelStatus:I

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    System Status : "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mSystemStatus:I

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    Caller auth(with PROCA) Status : \n"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object p0, p0, Lcom/android/server/knox/dar/IntegrityStatus;->mAuthResult:Lcom/android/server/knox/dar/AuthResult;

    if-nez p0, :cond_54

    const-string p0, "Not performed"

    goto :goto_58

    :cond_54
    invoke-virtual {p0}, Lcom/android/server/knox/dar/AuthResult;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
