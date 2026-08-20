.class public Lcom/android/server/biometrics/sensors/face/FaceUserState;
.super Lcom/android/server/biometrics/sensors/BiometricUserState;
.source "FaceUserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/BiometricUserState<",
        "Landroid/hardware/face/Face;",
        ">;"
    }
.end annotation


# static fields
.field public static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final ATTR_FACE_ID:Ljava/lang/String; = "faceId"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final TAG:Ljava/lang/String; = "FaceState"

.field public static final TAG_FACE:Ljava/lang/String; = "face"

.field public static final TAG_FACES:Ljava/lang/String; = "faces"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 50
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

    .line 76
    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/FaceUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4e

    const-string p0, "faces"

    const/4 v1, 0x0

    .line 80
    invoke-interface {p1, v1, p0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p0, :cond_48

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/Face;

    const-string v4, "face"

    .line 85
    invoke-interface {p1, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "faceId"

    .line 86
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v5

    invoke-interface {p1, v1, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "name"

    .line 87
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "deviceId"

    .line 88
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v5

    invoke-interface {p1, v1, v4, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "face"

    .line 89
    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_48
    const-string p0, "faces"

    .line 92
    invoke-interface {p1, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :catchall_4e
    move-exception p1

    .line 78
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public getBiometricsTag()Ljava/lang/String;
    .registers 1

    const-string p0, "faces"

    return-object p0
.end method

.method public getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/face/Face;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    .line 67
    new-instance v1, Landroid/hardware/face/Face;

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2a
    return-object p0
.end method

.method public getNameTemplateResource()I
    .registers 1

    const p0, 0x1040509

    return p0
.end method

.method public parseBiometricsLocked(Landroid/util/TypedXmlPullParser;)V
    .registers 9
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

    .line 99
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 101
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 102
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_45

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 107
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "face"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    .line 109
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "faceId"

    .line 110
    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "deviceId"

    .line 111
    invoke-interface {p1, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 112
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    new-instance v6, Landroid/hardware/face/Face;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_45
    return-void
.end method
