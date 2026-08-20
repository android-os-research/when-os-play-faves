.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;
.super Lcom/android/server/biometrics/sensors/BiometricUserState;
.source "FingerprintUserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/BiometricUserState<",
        "Landroid/hardware/fingerprint/Fingerprint;",
        ">;"
    }
.end annotation


# static fields
.field public static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final ATTR_EXT_DUPLICATED_CNT:Ljava/lang/String; = "duplicatedCount"

.field public static final ATTR_FINGER_ID:Ljava/lang/String; = "fingerId"

.field public static final ATTR_GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final TAG:Ljava/lang/String; = "FingerprintState"

.field public static final TAG_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field public static final TAG_FINGERPRINTS:Ljava/lang/String; = "fingerprints"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doWriteState(Landroid/util/TypedXmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    monitor-enter p0

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_61

    const-string p0, "fingerprints"

    const/4 v1, 0x0

    .line 95
    invoke-interface {p1, v1, p0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p0, :cond_5b

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    const-string v4, "fingerprint"

    .line 100
    invoke-interface {p1, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "fingerId"

    .line 101
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-interface {p1, v1, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "name"

    .line 102
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "groupId"

    .line 103
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-interface {p1, v1, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "deviceId"

    .line 104
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v5

    invoke-interface {p1, v1, v4, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duplicatedCount"

    .line 106
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->semGetDuplicatedImageCount()I

    move-result v3

    invoke-interface {p1, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "fingerprint"

    .line 108
    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_5b
    const-string p0, "fingerprints"

    .line 111
    invoke-interface {p1, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :catchall_61
    move-exception p1

    .line 93
    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p1
.end method

.method public getBiometricsTag()Ljava/lang/String;
    .registers 1

    const-string p0, "fingerprints"

    return-object p0
.end method

.method public getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 77
    new-instance v8, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v4

    .line 78
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v5

    .line 81
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->semGetDuplicatedImageCount()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJI)V

    .line 77
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_33
    return-object p0
.end method

.method public getNameTemplateResource()I
    .registers 1

    const p0, 0x1040cf0

    return p0
.end method

.method public parseBiometricsLocked(Landroid/util/TypedXmlPullParser;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 121
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_60

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 122
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_60

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 127
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fingerprint"

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    .line 129
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "groupId"

    .line 130
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v2, "fingerId"

    .line 131
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v2, "deviceId"

    .line 132
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v2, -0x1

    :try_start_42
    const-string v3, "duplicatedCount"

    .line 136
    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_48} :catch_4a

    move v9, v1

    goto :goto_54

    :catch_4a
    move-exception v1

    const-string v3, "FingerprintState"

    const-string/jumbo v9, "parseBiometricsLocked : failed"

    .line 138
    invoke-static {v3, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v9, v2

    .line 141
    :goto_54
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_60
    return-void
.end method
