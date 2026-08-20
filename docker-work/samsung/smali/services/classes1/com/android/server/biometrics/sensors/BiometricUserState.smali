.class public abstract Lcom/android/server/biometrics/sensors/BiometricUserState;
.super Ljava/lang/Object;
.source "BiometricUserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ATTR_INVALIDATION:Ljava/lang/String; = "authenticatorIdInvalidation_attr"

.field public static final TAG:Ljava/lang/String; = "UserState"

.field public static final TAG_INVALIDATION:Ljava/lang/String; = "authenticatorIdInvalidation_tag"


# instance fields
.field public final mBiometrics:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mFile:Ljava/io/File;

.field public mInvalidationInProgress:Z

.field public final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$oJ_rhDM--0IGhnHj5ZfT-eTkOVE(Lcom/android/server/biometrics/sensors/BiometricUserState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->doWriteStateInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricUserState;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    .line 121
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    .line 122
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mContext:Landroid/content/Context;

    .line 123
    monitor-enter p0

    .line 124
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->readStateSyncLocked()V

    .line 125
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw p1
.end method


# virtual methods
.method public addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 142
    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    .line 145
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public abstract doWriteState(Landroid/util/TypedXmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final doWriteStateInternal()V
    .registers 8

    const-string v0, "authenticatorIdInvalidation_tag"

    .line 84
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 89
    :try_start_a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_3b

    .line 90
    :try_start_e
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    .line 91
    invoke-interface {v4, v5, v6}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 92
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    invoke-interface {v4, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "authenticatorIdInvalidation_attr"

    .line 96
    iget-boolean v6, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    invoke-interface {v4, v2, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    invoke-interface {v4, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    invoke-virtual {p0, v4}, Lcom/android/server/biometrics/sensors/BiometricUserState;->doWriteState(Landroid/util/TypedXmlSerializer;)V

    .line 102
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 103
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_38

    .line 109
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_38
    move-exception v0

    move-object v2, v3

    goto :goto_3c

    :catchall_3b
    move-exception v0

    :goto_3c
    :try_start_3c
    const-string v3, "UserState"

    const-string v4, "Failed to write settings, restoring backup"

    .line 105
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_63
    .catchall {:try_start_3c .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    .line 109
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 110
    throw p0
.end method

.method public getBiometrics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 174
    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    .line 176
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public abstract getBiometricsTag()Ljava/lang/String;
.end method

.method public abstract getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final getFileForUser(ILjava/lang/String;)Ljava/io/File;
    .registers 3

    .line 205
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract getNameTemplateResource()I
.end method

.method public getUniqueName()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x1

    move v1, v0

    .line 187
    :goto_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getNameTemplateResource()I

    move-result v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/BiometricUserState;->isUnique(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    return-object v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public isInvalidationInProgress()Z
    .registers 2

    .line 136
    monitor-enter p0

    .line 137
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 138
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final isUnique(Ljava/lang/String;)Z
    .registers 3

    .line 196
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 197
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public abstract parseBiometricsLocked(Landroid/util/TypedXmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public final parseStateLocked(Landroid/util/TypedXmlPullParser;)V
    .registers 6
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

    .line 239
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 241
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 242
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3e

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 247
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->parseBiometricsLocked(Landroid/util/TypedXmlPullParser;)V

    goto :goto_4

    :cond_2c
    const-string v2, "authenticatorIdInvalidation_tag"

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string v2, "authenticatorIdInvalidation_attr"

    .line 251
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    goto :goto_4

    :cond_3e
    return-void
.end method

.method public final readStateSyncLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 219
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_10} :catch_3b

    .line 225
    :try_start_10
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->parseStateLocked(Landroid/util/TypedXmlPullParser;)V
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_17} :catch_1d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_1d
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    .line 232
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_37

    :catch_1d
    move-exception v1

    .line 229
    :try_start_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing settings file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_1b

    .line 232
    :goto_37
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 233
    throw p0

    :catch_3b
    const-string p0, "UserState"

    const-string v0, "No fingerprint state"

    .line 221
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeBiometric(I)V
    .registers 4

    .line 149
    monitor-enter p0

    const/4 v0, 0x0

    .line 150
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 151
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 152
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    goto :goto_24

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 157
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public renameBiometric(ILjava/lang/CharSequence;)V
    .registers 5

    .line 161
    monitor-enter p0

    const/4 v0, 0x0

    .line 162
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 163
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_27

    .line 164
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 165
    invoke-virtual {p1, p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->setName(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    goto :goto_2a

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 170
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final scheduleWriteStateLocked()V
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInvalidationInProgress(Z)V
    .registers 2

    .line 129
    monitor-enter p0

    .line 130
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    .line 132
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method
