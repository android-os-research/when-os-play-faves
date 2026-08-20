.class public Lcom/android/server/sensorprivacy/AllSensorStateController;
.super Ljava/lang/Object;
.source "AllSensorStateController.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AllSensorStateController"

.field public static final SENSOR_PRIVACY_XML_FILE:Ljava/lang/String; = "sensor_privacy.xml"

.field public static final XML_ATTRIBUTE_ENABLED:Ljava/lang/String; = "enabled"

.field public static final XML_TAG_SENSOR_PRIVACY:Ljava/lang/String; = "all-sensor-privacy"

.field public static final XML_TAG_SENSOR_PRIVACY_LEGACY:Ljava/lang/String; = "sensor-privacy"

.field public static sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public mEnabled:Z

.field public mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

.field public mListenerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$DA9hc-HUJxG--Ss50h240r8gPRg(Lcom/android/server/sensorprivacy/AllSensorStateController;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->persist(Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 54
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sensor_privacy.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    .line 68
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_1d

    return-void

    :cond_1d
    const/4 v1, 0x0

    .line 71
    :try_start_1e
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_22} :catch_89

    .line 72
    :try_start_22
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 74
    :goto_26
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_77

    .line 75
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "all-sensor-privacy"

    .line 76
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_7d

    const-string v5, "enabled"

    if-eqz v4, :cond_45

    .line 77
    :try_start_3b
    iget-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 78
    invoke-static {v2, v5, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    goto :goto_77

    :cond_45
    const-string/jumbo v4, "sensor-privacy"

    .line 81
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 82
    iget-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 83
    invoke-static {v2, v5, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    or-int/2addr v4, v6

    iput-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    :cond_57
    const-string/jumbo v4, "user"

    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    const-string/jumbo v3, "id"

    const/4 v4, -0x1

    .line 86
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_73

    .line 88
    iget-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 89
    invoke-static {v2, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 92
    :cond_73
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_76
    .catchall {:try_start_3b .. :try_end_76} :catchall_7d

    goto :goto_26

    :cond_77
    :goto_77
    if-eqz v0, :cond_93

    .line 94
    :try_start_79
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_7c} :catch_89

    goto :goto_93

    :catchall_7d
    move-exception v2

    if-eqz v0, :cond_88

    .line 71
    :try_start_80
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_88

    :catchall_84
    move-exception v0

    :try_start_85
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_88
    :goto_88
    throw v2
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_89} :catch_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_85 .. :try_end_89} :catch_89

    :catch_89
    move-exception v0

    .line 95
    sget-object v2, Lcom/android/server/sensorprivacy/AllSensorStateController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Caught an exception reading the state from storage: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    :cond_93
    :goto_93
    return-void
.end method

.method public static getInstance()Lcom/android/server/sensorprivacy/AllSensorStateController;
    .registers 1

    .line 61
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/AllSensorStateController;-><init>()V

    sput-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 64
    :cond_b
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    return-object v0
.end method


# virtual methods
.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 2

    return-void
.end method

.method public getAllSensorStateLocked()Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    return p0
.end method

.method public final persist(Z)V
    .registers 7

    const-string v0, "all-sensor-privacy"

    const/4 v1, 0x0

    .line 132
    :try_start_3
    iget-object v2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_29

    .line 133
    :try_start_9
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 134
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "enabled"

    .line 136
    invoke-interface {v3, v1, v4, p1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 139
    iget-object p1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_25} :catch_26

    goto :goto_36

    :catch_26
    move-exception p1

    move-object v1, v2

    goto :goto_2a

    :catch_29
    move-exception p1

    .line 141
    :goto_2a
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Caught an exception persisting the sensor privacy state: "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    iget-object p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_36
    return-void
.end method

.method public resetForTesting()V
    .registers 2

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    .line 148
    iput-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListenerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    return-void
.end method

.method public schedulePersistLocked()V
    .registers 3

    .line 126
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/AllSensorStateController;)V

    iget-boolean p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAllSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V
    .registers 4

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    if-nez v0, :cond_f

    .line 121
    iput-object p2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    .line 122
    iput-object p1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListenerHandler:Landroid/os/Handler;

    return-void

    .line 119
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Listener is already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAllSensorStateLocked(Z)V
    .registers 4

    .line 105
    iget-boolean v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    if-eq v0, p1, :cond_21

    .line 106
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 107
    iget-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListenerHandler:Landroid/os/Handler;

    if-eqz p0, :cond_21

    .line 109
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_21
    return-void
.end method
