.class public final Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;
.super Ljava/lang/Object;
.source "SigXml.java"


# static fields
.field public static final INTERMEDIATE_CERT_ITEM_TAG:Ljava/lang/String; = "cert"

.field public static final INTERMEDIATE_CERT_LIST_TAG:Ljava/lang/String; = "intermediates"

.field public static final SIGNATURE_NODE_TAG:Ljava/lang/String; = "value"

.field public static final SIGNER_CERT_NODE_TAG:Ljava/lang/String; = "certificate"


# instance fields
.field public final intermediateCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public final signature:[B

.field public final signerCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/security/cert/X509Certificate;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            "[B)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->intermediateCerts:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signerCert:Ljava/security/cert/X509Certificate;

    .line 50
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signature:[B

    return-void
.end method

.method public static parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlRootNode([B)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 88
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;

    .line 89
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parseIntermediateCerts(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parseSignerCert(Lorg/w3c/dom/Element;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 90
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parseFileSignature(Lorg/w3c/dom/Element;)[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;-><init>(Ljava/util/List;Ljava/security/cert/X509Certificate;[B)V

    return-object v0
.end method

.method public static parseFileSignature(Lorg/w3c/dom/Element;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    const-string/jumbo v0, "value"

    .line 116
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 117
    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 119
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static parseIntermediateCerts(Lorg/w3c/dom/Element;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    const-string/jumbo v0, "intermediates"

    const-string v1, "cert"

    .line 95
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 105
    :cond_2f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseSignerCert(Lorg/w3c/dom/Element;)Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    const-string v0, "certificate"

    .line 109
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 110
    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 112
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public verifyFileSignature(Ljava/security/cert/X509Certificate;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->verifyFileSignature(Ljava/security/cert/X509Certificate;[BLjava/util/Date;)V

    return-void
.end method

.method public verifyFileSignature(Ljava/security/cert/X509Certificate;[BLjava/util/Date;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->intermediateCerts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signerCert:Ljava/security/cert/X509Certificate;

    invoke-static {p3, p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    .line 75
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signerCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signature:[B

    invoke-static {p1, p0, p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->verifyRsaSha256Signature(Ljava/security/PublicKey;[B[B)V

    return-void
.end method
