.class public Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;
.super Ljava/lang/Object;
.source "KeyChainSnapshotDeserializer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 81
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Malformed KeyChainSnapshot XML"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 87
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p0

    .line 89
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 90
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "keyChainSnapshot"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 93
    :goto_15
    :pswitch_15
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_104

    .line 94
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_23

    goto :goto_15

    .line 98
    :cond_23
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string/jumbo v7, "serverParams"

    const-string v8, "counterId"

    const-string/jumbo v9, "snapshotVersion"

    const-string/jumbo v10, "thmCertPath"

    const-string/jumbo v11, "recoveryKeyMaterial"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string/jumbo v14, "maxAttempts"

    sparse-switch v6, :sswitch_data_118

    :goto_45
    move v4, v5

    goto/16 :goto_9e

    :sswitch_48
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_45

    :cond_4f
    const/16 v4, 0x8

    goto :goto_9e

    :sswitch_52
    const-string/jumbo v4, "keyChainProtectionParamsList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    goto :goto_45

    :cond_5c
    const/4 v4, 0x7

    goto :goto_9e

    :sswitch_5e
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    goto :goto_45

    :cond_65
    const/4 v4, 0x6

    goto :goto_9e

    :sswitch_67
    const-string v4, "applicationKeysList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    goto :goto_45

    :cond_70
    const/4 v4, 0x5

    goto :goto_9e

    :sswitch_72
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    goto :goto_45

    :cond_79
    const/4 v4, 0x4

    goto :goto_9e

    :sswitch_7b
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9e

    goto :goto_45

    :sswitch_82
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    goto :goto_45

    :cond_89
    move v4, v1

    goto :goto_9e

    :sswitch_8b
    const-string v4, "backendPublicKey"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    goto :goto_45

    :cond_94
    move v4, v12

    goto :goto_9e

    :sswitch_96
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9d

    goto :goto_45

    :cond_9d
    move v4, v13

    :cond_9e
    :goto_9e
    packed-switch v4, :pswitch_data_13e

    .line 145
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v3, v1, v13

    const-string v2, "Unexpected tag %s in keyChainSnapshot"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :pswitch_b3
    invoke-static {p0, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_15

    .line 137
    :pswitch_bc
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyChainProtectionParamsList(Landroid/util/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_15

    .line 111
    :pswitch_c5
    invoke-static {p0, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readLongTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_15

    .line 141
    :pswitch_ce
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readWrappedApplicationKeys(Landroid/util/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_15

    .line 102
    :pswitch_d7
    invoke-static {p0, v9}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_15

    .line 125
    :pswitch_e0
    :try_start_e0
    invoke-static {p0, v10}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readCertPathTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v3

    .line 124
    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_end_e7
    .catch Ljava/security/cert/CertificateException; {:try_start_e0 .. :try_end_e7} :catch_e9

    goto/16 :goto_15

    :catch_e9
    move-exception p0

    .line 127
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Could not set trustedHardwareCertPath"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 107
    :pswitch_f2
    invoke-static {p0, v11}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    .line 106
    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_15

    .line 119
    :pswitch_fb
    invoke-static {p0, v14}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_15

    .line 150
    :cond_104
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    :try_start_109
    invoke-virtual {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0
    :try_end_10d
    .catch Ljava/lang/NullPointerException; {:try_start_109 .. :try_end_10d} :catch_10e

    return-object p0

    :catch_10e
    move-exception p0

    .line 154
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Failed to build KeyChainSnapshot"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_118
    .sparse-switch
        -0x66841336 -> :sswitch_96
        -0x52c1d0fe -> :sswitch_8b
        -0x51ae5e2f -> :sswitch_82
        -0x5190b3fe -> :sswitch_7b
        0x1caf9a74 -> :sswitch_72
        0x46f25222 -> :sswitch_67
        0x5099d037 -> :sswitch_5e
        0x5f2e61bf -> :sswitch_52
        0x6bb456a9 -> :sswitch_48
    .end sparse-switch

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_fb
        :pswitch_15
        :pswitch_f2
        :pswitch_e0
        :pswitch_d7
        :pswitch_ce
        :pswitch_c5
        :pswitch_bc
        :pswitch_b3
    .end packed-switch
.end method

.method public static readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 371
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Landroid/util/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 373
    invoke-interface {p0, v3, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 376
    :try_start_f
    invoke-static {v2, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception v0

    .line 378
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, p0

    const/4 p0, 0x1

    aput-object v2, v1, p0

    const-string p0, "%s expected base64 encoded bytes but got \'%s\'"

    .line 379
    invoke-static {v4, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static readCertPathTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 388
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object p0

    :try_start_4
    const-string v0, "X.509"

    .line 390
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 391
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object p0
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 393
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse CertPath in tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Landroid/util/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 337
    invoke-interface {p0, v3, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 339
    :try_start_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    .line 341
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 p1, 0x1

    aput-object v2, v1, p1

    const-string p1, "%s expected int but got \'%s\'"

    .line 342
    invoke-static {v3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readKeyChainProtectionParams(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "keyChainProtectionParams"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    .line 232
    :goto_e
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7e

    .line 233
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_1c

    goto :goto_e

    .line 237
    :cond_1c
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const-string/jumbo v7, "userSecretType"

    const/4 v8, 0x0

    const-string/jumbo v9, "lockScreenUiType"

    sparse-switch v5, :sswitch_data_92

    goto :goto_51

    :sswitch_34
    const-string/jumbo v5, "keyDerivationParams"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    goto :goto_51

    :cond_3e
    move v4, v1

    goto :goto_51

    :sswitch_40
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    goto :goto_51

    :cond_47
    move v4, v6

    goto :goto_51

    :sswitch_49
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    goto :goto_51

    :cond_50
    move v4, v8

    :goto_51
    packed-switch v4, :pswitch_data_a0

    .line 253
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v3, v1, v8

    const-string v2, "Unexpected tag %s in keyChainProtectionParams"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 249
    :pswitch_66
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyDerivationParams(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_e

    .line 245
    :pswitch_6e
    invoke-static {p0, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_e

    .line 241
    :pswitch_76
    invoke-static {p0, v9}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_e

    .line 261
    :cond_7e
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    :try_start_83
    invoke-virtual {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object p0
    :try_end_87
    .catch Ljava/lang/NullPointerException; {:try_start_83 .. :try_end_87} :catch_88

    return-object p0

    :catch_88
    move-exception p0

    .line 266
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Failed to build KeyChainProtectionParams"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_92
    .sparse-switch
        -0x2e4cfbbb -> :sswitch_49
        -0x298abfcb -> :sswitch_40
        0x3662dd9c -> :sswitch_34
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_76
        :pswitch_6e
        :pswitch_66
    .end packed-switch
.end method

.method public static readKeyChainProtectionParamsList(Landroid/util/TypedXmlPullParser;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "keyChainProtectionParamsList"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :goto_e
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_24

    .line 217
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_1c

    goto :goto_e

    .line 220
    :cond_1c
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyChainProtectionParams(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 223
    :cond_24
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readKeyDerivationParams(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "keyDerivationParams"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v3, 0x0

    move v4, v0

    move v5, v4

    .line 279
    :goto_d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v6, v7, :cond_73

    .line 280
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v1, :cond_1c

    goto :goto_d

    .line 284
    :cond_1c
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 286
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v9, "algorithm"

    const-string/jumbo v10, "salt"

    const/4 v11, 0x0

    const-string/jumbo v12, "memoryDifficulty"

    sparse-switch v7, :sswitch_data_9a

    :goto_33
    move v7, v0

    goto :goto_4f

    :sswitch_35
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    goto :goto_33

    :cond_3c
    move v7, v1

    goto :goto_4f

    :sswitch_3e
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    goto :goto_33

    :cond_45
    move v7, v8

    goto :goto_4f

    :sswitch_47
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_33

    :cond_4e
    move v7, v11

    :goto_4f
    packed-switch v7, :pswitch_data_a8

    .line 300
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v11

    const-string v2, "Unexpected tag %s in keyDerivationParams"

    .line 301
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :pswitch_64
    invoke-static {p0, v9}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v4

    goto :goto_d

    .line 296
    :pswitch_69
    invoke-static {p0, v10}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_d

    .line 288
    :pswitch_6e
    invoke-static {p0, v12}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v5

    goto :goto_d

    :cond_73
    if-eqz v3, :cond_90

    if-eq v4, v8, :cond_86

    if-ne v4, v1, :cond_7e

    .line 320
    invoke-static {v3, v5}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    goto :goto_8a

    .line 325
    :cond_7e
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v0, "Unknown algorithm in keyDerivationParams"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_86
    invoke-static {v3}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    .line 329
    :goto_8a
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v7, v1, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 309
    :cond_90
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string/jumbo v0, "salt was not set in keyDerivationParams"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_9a
    .sparse-switch
        -0x3a02fc64 -> :sswitch_47
        0x35c056 -> :sswitch_3e
        0xd70b46f -> :sswitch_35
    .end sparse-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_69
        :pswitch_64
    .end packed-switch
.end method

.method public static readLongTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 349
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Landroid/util/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 351
    invoke-interface {p0, v3, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    :try_start_e
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_16} :catch_17

    return-wide p0

    :catch_17
    move-exception p0

    .line 355
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 p1, 0x1

    aput-object v2, v1, p1

    const-string p1, "%s expected long but got \'%s\'"

    .line 356
    invoke-static {v3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readStringTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Landroid/util/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 365
    invoke-interface {p0, v2, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static readText(Landroid/util/TypedXmlPullParser;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 401
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 402
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    goto :goto_11

    :cond_f
    const-string v0, ""

    :goto_11
    return-object v0
.end method

.method public static readWrappedApplicationKey(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/WrappedApplicationKey;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "applicationKey"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    .line 176
    :goto_d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7c

    .line 177
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_1b

    goto :goto_d

    .line 181
    :cond_1b
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "alias"

    const/4 v7, 0x1

    const-string/jumbo v8, "keyMaterial"

    const/4 v9, 0x0

    const-string/jumbo v10, "keyMetadata"

    sparse-switch v5, :sswitch_data_90

    goto :goto_4f

    :sswitch_35
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_4f

    :cond_3c
    move v4, v1

    goto :goto_4f

    :sswitch_3e
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    goto :goto_4f

    :cond_45
    move v4, v7

    goto :goto_4f

    :sswitch_47
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    goto :goto_4f

    :cond_4e
    move v4, v9

    :goto_4f
    packed-switch v4, :pswitch_data_9e

    .line 197
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v3, v1, v9

    const-string v2, "Unexpected tag %s in wrappedApplicationKey"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :pswitch_64
    invoke-static {p0, v6}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readStringTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_d

    .line 189
    :pswitch_6c
    invoke-static {p0, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_d

    .line 193
    :pswitch_74
    invoke-static {p0, v10}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_d

    .line 201
    :cond_7c
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    :try_start_81
    invoke-virtual {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object p0
    :try_end_85
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_85} :catch_86

    return-object p0

    :catch_86
    move-exception p0

    .line 206
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Failed to build WrappedApplicationKey"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_90
    .sparse-switch
        -0x660f5152 -> :sswitch_47
        -0x3969675a -> :sswitch_3e
        0x5899650 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_74
        :pswitch_6c
        :pswitch_64
    .end packed-switch
.end method

.method public static readWrappedApplicationKeys(Landroid/util/TypedXmlPullParser;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "applicationKeysList"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    :goto_d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_23

    .line 163
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_1b

    goto :goto_d

    .line 166
    :cond_1b
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readWrappedApplicationKey(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 168
    :cond_23
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
