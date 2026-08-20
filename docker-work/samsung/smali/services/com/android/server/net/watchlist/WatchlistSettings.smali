.class public Lcom/android/server/net/watchlist/WatchlistSettings;
.super Ljava/lang/Object;
.source "WatchlistSettings.java"


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "watchlist_settings.xml"

.field public static final SECRET_KEY_LENGTH:I = 0x30

.field public static final TAG:Ljava/lang/String; = "WatchlistSettings"

.field public static final sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;


# instance fields
.field public mPrivacySecretKey:[B

.field public final mXmlFile:Landroid/util/AtomicFile;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistSettings;

    invoke-direct {v0}, Lcom/android/server/net/watchlist/WatchlistSettings;-><init>()V

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistSettings;->sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistSettings;->getSystemWatchlistFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/watchlist/WatchlistSettings;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 82
    new-instance v0, Landroid/util/AtomicFile;

    const-string/jumbo v1, "net-watchlist"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistSettings;->reloadSettings()V

    .line 84
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    if-nez p1, :cond_20

    .line 86
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistSettings;->generatePrivacySecretKey()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 87
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistSettings;->saveSettings()V

    :cond_20
    return-void
.end method

.method public static getInstance()Lcom/android/server/net/watchlist/WatchlistSettings;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistSettings;->sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;

    return-object v0
.end method

.method public static getSystemWatchlistFile()Ljava/io/File;
    .registers 3

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "watchlist_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final generatePrivacySecretKey()[B
    .registers 2

    const/16 p0, 0x30

    new-array p0, p0, [B

    .line 136
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public declared-synchronized getPrivacySecretKey()[B
    .registers 5

    monitor-enter p0

    const/16 v0, 0x30

    :try_start_3
    new-array v1, v0, [B

    .line 130
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 131
    monitor-exit p0

    return-object v1

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final parseSecretKey(Lorg/xmlpull/v1/XmlPullParser;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 p0, 0x2

    const/4 v0, 0x0

    const-string/jumbo v1, "secret-key"

    .line 114
    invoke-interface {p1, p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v2, 0x3

    .line 116
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1d

    .line 117
    array-length p1, p0

    const/16 v1, 0x30

    if-eq p1, v1, :cond_1c

    goto :goto_1d

    :cond_1c
    return-object p0

    :cond_1d
    :goto_1d
    const-string p0, "WatchlistSettings"

    const-string p1, "Unable to parse secret key"

    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final reloadSettings()V
    .registers 7

    const-string v0, "WatchlistSettings"

    .line 92
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 96
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_11} :catch_50
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_11} :catch_50
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_11} :catch_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_11} :catch_50
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_50
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_11} :catch_50

    .line 97
    :try_start_11
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    const-string/jumbo v3, "network-watchlist-settings"

    .line 98
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 99
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 100
    :cond_1f
    :goto_1f
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 101
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "secret-key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/server/net/watchlist/WatchlistSettings;->parseSecretKey(Lorg/xmlpull/v1/XmlPullParser;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    goto :goto_1f

    :cond_39
    const-string p0, "Reload watchlist settings done"

    .line 105
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_44

    if-eqz v1, :cond_56

    .line 106
    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_43} :catch_50
    .catch Ljava/lang/NullPointerException; {:try_start_40 .. :try_end_43} :catch_50
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_43} :catch_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_43} :catch_50
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_50
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_43} :catch_50

    goto :goto_56

    :catchall_44
    move-exception p0

    if-eqz v1, :cond_4f

    .line 96
    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v1

    :try_start_4c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw p0
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_50} :catch_50
    .catch Ljava/lang/NullPointerException; {:try_start_4c .. :try_end_50} :catch_50
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_50} :catch_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_50} :catch_50
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_50
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_50} :catch_50

    :catch_50
    move-exception p0

    const-string v1, "Failed parsing xml"

    .line 108
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_56
    :goto_56
    return-void
.end method

.method public final saveSettings()V
    .registers 8

    const-string/jumbo v0, "secret-key"

    const-string/jumbo v1, "network-watchlist-settings"

    const-string v2, "WatchlistSettings"

    .line 143
    :try_start_8
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_42

    .line 149
    :try_start_e
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 150
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 151
    invoke-interface {v4, v6, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    invoke-interface {v4, v6, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    iget-object v5, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    invoke-interface {v4, v6, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    invoke-interface {v4, v6, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 157
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_35} :catch_36

    goto :goto_41

    :catch_36
    move-exception v0

    const-string v1, "Failed to write display settings, restoring backup."

    .line 159
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_41
    return-void

    :catch_42
    move-exception p0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write display settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
