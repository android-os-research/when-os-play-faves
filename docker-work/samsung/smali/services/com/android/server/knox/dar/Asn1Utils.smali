.class public Lcom/android/server/knox/dar/Asn1Utils;
.super Ljava/lang/Object;
.source "Asn1Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsn1SequenceFromBytes([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 54
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_17

    .line 55
    :try_start_5
    invoke-static {v0}, Lcom/android/server/knox/dar/Asn1Utils;->getAsn1SequenceFromStream(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 56
    :try_start_9
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_17

    return-object p0

    :catchall_d
    move-exception p0

    .line 54
    :try_start_e
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    :try_start_13
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw p0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_17

    :catch_17
    move-exception p0

    .line 57
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "Failed to parse SEQUENCE"

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getAsn1SequenceFromStream(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 64
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_4a

    .line 68
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 70
    :try_start_13
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 71
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_21

    .line 75
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_40

    .line 76
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V

    return-object p0

    .line 72
    :cond_21
    :try_start_21
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected sequence, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p0

    .line 68
    :try_start_41
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw p0

    .line 65
    :cond_4a
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected octet stream, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByteArrayFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const-string v0, "Expected DEROctetString"

    if-eqz p0, :cond_2a

    .line 38
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_e

    .line 39
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 41
    :cond_e
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    if-eqz v1, :cond_19

    .line 42
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0

    .line 44
    :cond_19
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v1, :cond_24

    .line 45
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;->getOctets()[B

    move-result-object p0

    return-object p0

    .line 48
    :cond_24
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_2a
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
