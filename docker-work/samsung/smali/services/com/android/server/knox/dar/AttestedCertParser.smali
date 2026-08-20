.class public Lcom/android/server/knox/dar/AttestedCertParser;
.super Ljava/lang/Object;
.source "AttestedCertParser.java"


# static fields
.field public static final DOUBLE_LINE:Ljava/lang/String; = "\n\n"

.field public static final KNOX_EXTENSION_OID:Ljava/lang/String; = "1.3.6.1.4.1.236.11.3.23.7"

.field public static final KNOX_TEE_PROPERTIES_INTEGRITY_STATUS:I = 0x5

.field public static final LINE_BREAK:Ljava/lang/String; = "\n"

.field public static final LINE_BREAK_4SPACE:Ljava/lang/String; = "\n    "

.field public static final RO_PRODUCT_FIRST_API:Ljava/lang/String; = "ro.product.first_api_level"

.field public static final TAG:Ljava/lang/String; = "AttestedCertParser"


# instance fields
.field public mKnoxIngetrity:Lcom/android/server/knox/dar/IntegrityStatus;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const-string v0, "AttestedCertParser"

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/AttestedCertParser;->getKnoxExtensionSequence(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    if-eqz p1, :cond_73

    const/4 v1, 0x0

    .line 30
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_73

    .line 31
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 32
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_66

    .line 33
    move-object v3, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3f

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip unknown case : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 35
    :cond_3f
    new-instance v3, Lcom/android/server/knox/dar/IntegrityStatus;

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/server/knox/dar/IntegrityStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v3, p0, Lcom/android/server/knox/dar/AttestedCertParser;->mKnoxIngetrity:Lcom/android/server/knox/dar/IntegrityStatus;

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found [Integrity Status] :\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/knox/dar/AttestedCertParser;->mKnoxIngetrity:Lcom/android/server/knox/dar/IntegrityStatus;

    invoke-virtual {v3}, Lcom/android/server/knox/dar/IntegrityStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_66} :catch_69

    :cond_66
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catch_69
    move-exception p0

    const-string/jumbo p1, "sequence index is too small to get challenge or idAttest"

    .line 45
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_73
    return-void
.end method


# virtual methods
.method public final bytesToHex([B)Ljava/lang/String;
    .registers 7

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    aget-byte v3, p1, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    and-int/lit16 v3, v3, 0xff

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "%02x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 98
    :cond_23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntegrityStatus()Lcom/android/server/knox/dar/IntegrityStatus;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/knox/dar/AttestedCertParser;->mKnoxIngetrity:Lcom/android/server/knox/dar/IntegrityStatus;

    return-object p0
.end method

.method public final getKnoxExtensionSequence(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const-string v0, "1.3.6.1.4.1.236.11.3.23.7"

    .line 53
    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "AttestedCertParser"

    if-nez p1, :cond_11

    const-string p0, "getKnoxExtensionSequence : not include knox extension"

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/AttestedCertParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 60
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0xc

    .line 61
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x10

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 63
    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v4, "ro.product.first_api_level"

    .line 64
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "firstApiLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lengthOfextenstion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lengthOfvalue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x1a

    if-ge v0, v4, :cond_a7

    sub-int/2addr v3, v2

    if-eq v3, p0, :cond_a7

    add-int/lit8 v0, p0, 0x6

    .line 72
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 73
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p0, 0x4

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x1

    .line 77
    invoke-static {p1, v0, v2, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p0, v1

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x3

    .line 80
    invoke-static {p0, v0, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    .line 84
    :cond_a7
    array-length p0, p1

    if-eqz p0, :cond_af

    .line 87
    invoke-static {p1}, Lcom/android/server/knox/dar/Asn1Utils;->getAsn1SequenceFromBytes([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    return-object p0

    .line 85
    :cond_af
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string p1, "Did not find extension with OID 1.3.6.1.4.1.236.11.3.23.7"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
