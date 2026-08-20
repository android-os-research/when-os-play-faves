.class public Lcom/android/server/app/GameManagerSettings;
.super Ljava/lang/Object;
.source "GameManagerSettings.java"


# static fields
.field public static final ATTR_GAME_MODE:Ljava/lang/String; = "gameMode"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final GAME_SERVICE_FILE_NAME:Ljava/lang/String; = "game-manager-service.xml"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_PACKAGES:Ljava/lang/String; = "packages"


# instance fields
.field public final mGameModes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSettingsFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mSystemDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSystemDir:Ljava/io/File;

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {p1, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 73
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "game-manager-service.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public getGameModeLocked(Ljava/lang/String;)I
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 82
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final readPackage(Landroid/util/TypedXmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "name"

    .line 196
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_8} :catch_11

    :try_start_8
    const-string v2, "gameMode"

    .line 197
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_1d

    :catch_f
    move-exception v0

    goto :goto_15

    :catch_11
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_15
    const-string v2, "GameManagerService"

    const-string v3, "Error reading game mode"

    .line 199
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_1d
    if-eqz v1, :cond_29

    .line 202
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 204
    :cond_29
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2c
    return-void
.end method

.method public readPersistentDataLocked()Z
    .registers 9

    .line 146
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 148
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GameManagerService"

    if-nez v0, :cond_16

    const-string p0, "Settings file doesn\'t exists, skip reading"

    .line 149
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 154
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 158
    :goto_20
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2b

    if-eq v3, v5, :cond_2b

    goto :goto_20

    :cond_2b
    if-eq v3, v4, :cond_33

    const-string p0, "No start tag found in package manager settings"

    .line 163
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 168
    :cond_33
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 169
    :cond_37
    :goto_37
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    if-eq v4, v5, :cond_79

    const/4 v6, 0x3

    if-ne v4, v6, :cond_46

    .line 170
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_79

    :cond_46
    if-eq v4, v6, :cond_37

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4c

    goto :goto_37

    .line 175
    :cond_4c
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "package"

    .line 176
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerSettings;->readPackage(Landroid/util/TypedXmlPullParser;)V

    goto :goto_37

    .line 179
    :cond_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_78
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_78} :catch_7a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_78} :catch_7a

    goto :goto_37

    :cond_79
    return v5

    :catch_7a
    move-exception p0

    const-string v0, "Error reading package manager settings"

    .line 184
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public removeGame(Ljava/lang/String;)V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGameModeLocked(Ljava/lang/String;I)V
    .registers 3

    .line 92
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writePersistentDataLocked()V
    .registers 10

    const-string/jumbo v0, "package"

    const-string/jumbo v1, "packages"

    const/4 v2, 0x0

    .line 110
    :try_start_7
    iget-object v3, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_73

    .line 112
    :try_start_d
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 113
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    .line 114
    invoke-interface {v4, v5, v6}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 116
    invoke-interface {v4, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    iget-object v5, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v4, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    .line 119
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v2, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "gameMode"

    .line 120
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v2, v7, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    invoke-interface {v4, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2a

    .line 123
    :cond_58
    invoke-interface {v4, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 127
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_6f} :catch_70

    return-void

    :catch_70
    move-exception v0

    move-object v2, v3

    goto :goto_74

    :catch_73
    move-exception v0

    .line 135
    :goto_74
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string p0, "GameManagerService"

    const-string v1, "Unable to write game manager service settings, current changes will be lost at reboot"

    .line 136
    invoke-static {p0, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
