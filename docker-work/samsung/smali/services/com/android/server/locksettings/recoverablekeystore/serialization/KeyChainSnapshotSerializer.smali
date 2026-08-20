.class public Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;
.super Ljava/lang/Object;
.source "KeyChainSnapshotSerializer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object p1

    const/4 v0, 0x0

    .line 73
    invoke-interface {p1, v0, v0}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyChainSnapshot"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    invoke-static {p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainSnapshotProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainSnapshot;)V

    .line 79
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getKeyChainProtectionParams()Ljava/util/List;

    move-result-object v2

    .line 78
    invoke-static {p1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainProtectionParams(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V

    .line 81
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getWrappedApplicationKeys()Ljava/util/List;

    move-result-object p0

    .line 80
    invoke-static {p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeApplicationKeys(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V

    .line 82
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public static writeApplicationKeyProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/WrappedApplicationKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alias"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    move-result-object v0

    const-string/jumbo v1, "keyMaterial"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 102
    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getMetadata()[B

    move-result-object p1

    const-string/jumbo v0, "keyMetadata"

    invoke-static {p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    return-void
.end method

.method public static writeApplicationKeys(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "applicationKeysList"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 91
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v3, "applicationKey"

    invoke-interface {p0, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeApplicationKeyProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/WrappedApplicationKey;)V

    .line 93
    invoke-interface {p0, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    .line 95
    :cond_25
    sget-object p1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeKeyChainProtectionParams(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyChainProtectionParamsList"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    .line 110
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v3, "keyChainProtectionParams"

    invoke-interface {p0, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainProtectionParamsProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainProtectionParams;)V

    .line 112
    invoke-interface {p0, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c

    .line 114
    :cond_27
    sget-object p1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeKeyChainProtectionParamsProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainProtectionParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getUserSecretType()I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "userSecretType"

    .line 120
    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 123
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getLockScreenUiFormat()I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "lockScreenUiType"

    .line 122
    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 128
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getKeyDerivationParams()Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyDerivationParams(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    return-void
.end method

.method public static writeKeyChainSnapshotProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainSnapshot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getSnapshotVersion()I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "snapshotVersion"

    .line 153
    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 155
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getMaxAttempts()I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "maxAttempts"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 156
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getCounterId()J

    move-result-wide v0

    const-string v2, "counterId"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 158
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getEncryptedRecoveryKeyBlob()[B

    move-result-object v0

    const-string/jumbo v1, "recoveryKeyMaterial"

    .line 157
    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 159
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getServerParams()[B

    move-result-object v0

    const-string/jumbo v1, "serverParams"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 161
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getTrustedHardwareCertPath()Ljava/security/cert/CertPath;

    move-result-object p1

    const-string/jumbo v0, "thmCertPath"

    .line 160
    invoke-static {p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/security/cert/CertPath;)V

    return-void
.end method

.method public static writeKeyDerivationParams(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyDerivationParams"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyDerivationParamsProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    .line 137
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeKeyDerivationParamsProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getAlgorithm()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "algorithm"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 144
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getSalt()[B

    move-result-object v0

    const-string/jumbo v1, "salt"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 146
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getMemoryDifficulty()I

    move-result p1

    int-to-long v0, p1

    const-string/jumbo p1, "memoryDifficulty"

    .line 145
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    return-void
.end method

.method public static writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    invoke-interface {p0, p2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/security/cert/CertPath;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const-string v0, "PkiPath"

    .line 194
    invoke-virtual {p2, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    return-void
.end method

.method public static writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 186
    :cond_3
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .line 187
    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
