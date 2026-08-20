.class public Lcom/android/server/net/watchlist/WatchlistConfig;
.super Ljava/lang/Object;
.source "WatchlistConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;,
        Lcom/android/server/net/watchlist/WatchlistConfig$XmlTags;
    }
.end annotation


# static fields
.field public static final NETWORK_WATCHLIST_DB_FOR_TEST_PATH:Ljava/lang/String; = "/data/misc/network_watchlist/network_watchlist_for_test.xml"

.field public static final NETWORK_WATCHLIST_DB_PATH:Ljava/lang/String; = "/data/misc/network_watchlist/network_watchlist.xml"

.field public static final TAG:Ljava/lang/String; = "WatchlistConfig"

.field public static final sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;


# instance fields
.field public volatile mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field public volatile mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field public mIsSecureConfig:Z

.field public mXmlFile:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-direct {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>()V

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 94
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 99
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 100
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;
    .registers 1

    .line 90
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-object v0
.end method


# virtual methods
.method public containsDomain(Ljava/lang/String;)Z
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 173
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getCrc32(Ljava/lang/String;)I

    move-result v2

    .line 174
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v3, v2}, Lcom/android/server/net/watchlist/HarmfulCrcs;->contains(I)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 178
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getSha256(Ljava/lang/String;)[B

    move-result-object p0

    .line 179
    iget-object p1, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {p1, p0}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result p0

    return p0
.end method

.method public containsIp(Ljava/lang/String;)Z
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 189
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getCrc32(Ljava/lang/String;)I

    move-result v2

    .line 190
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v3, v2}, Lcom/android/server/net/watchlist/HarmfulCrcs;->contains(I)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 194
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getSha256(Ljava/lang/String;)[B

    move-result-object p0

    .line 195
    iget-object p1, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {p1, p0}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 272
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    move-result-object v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watchlist config hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Domain CRC32 digest list:"

    .line 274
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v0, :cond_30

    .line 277
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v0, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulCrcs;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_30
    const-string v0, "Domain SHA256 digest list:"

    .line 279
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v0, :cond_40

    .line 281
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v0, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_40
    const-string v0, "Ip CRC32 digest list:"

    .line 283
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v0, :cond_50

    .line 286
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v0, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulCrcs;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_50
    const-string v0, "Ip SHA256 digest list:"

    .line 288
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v0, :cond_60

    .line 290
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method public final getCrc32(Ljava/lang/String;)I
    .registers 2

    .line 202
    new-instance p0, Ljava/util/zip/CRC32;

    invoke-direct {p0}, Ljava/util/zip/CRC32;-><init>()V

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 204
    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public final getSha256(Ljava/lang/String;)[B
    .registers 2

    :try_start_0
    const-string p0, "SHA256"

    .line 211
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_12

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 217
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catch_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWatchlistConfigHash()[B
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 234
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object p0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    const-string v0, "WatchlistConfig"

    const-string v2, "Unable to get watchlist config hash"

    .line 236
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public isConfigSecure()Z
    .registers 1

    .line 221
    iget-boolean p0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    return p0
.end method

.method public final parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 p0, 0x2

    const/4 v0, 0x0

    .line 155
    invoke-interface {p1, p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, p0, :cond_21

    const-string/jumbo v1, "hash"

    .line 158
    invoke-interface {p1, p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 160
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 163
    :cond_21
    invoke-interface {p1, v2, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reloadConfig()V
    .registers 16

    const-string/jumbo v0, "watchlist-config"

    const-string v1, "WatchlistConfig"

    .line 107
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    return-void

    .line 111
    :cond_e
    :try_start_e
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_e8
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_15} :catch_e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_15} :catch_e8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_15} :catch_e8

    .line 112
    :try_start_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 118
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 119
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 120
    invoke-interface {v7, v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_3e
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v9, :cond_b0

    .line 122
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v12, -0x1

    .line 123
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x1

    sparse-switch v13, :sswitch_data_f0

    goto :goto_7c

    :sswitch_53
    const-string v13, "crc32-ip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7c

    move v12, v14

    goto :goto_7c

    :sswitch_5d
    const-string/jumbo v13, "sha256-ip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7c

    move v12, v11

    goto :goto_7c

    :sswitch_68
    const-string/jumbo v13, "sha256-domain"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7c

    move v12, v9

    goto :goto_7c

    :sswitch_73
    const-string v13, "crc32-domain"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7c

    const/4 v12, 0x0

    :cond_7c
    :goto_7c
    if-eqz v12, :cond_ac

    if-eq v12, v14, :cond_a8

    if-eq v12, v9, :cond_a4

    if-eq v12, v11, :cond_a0

    .line 137
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3e

    .line 134
    :cond_a0
    invoke-virtual {p0, v7, v10, v6}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3e

    .line 131
    :cond_a4
    invoke-virtual {p0, v7, v10, v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3e

    .line 128
    :cond_a8
    invoke-virtual {p0, v7, v10, v5}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3e

    .line 125
    :cond_ac
    invoke-virtual {p0, v7, v10, v3}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3e

    .line 141
    :cond_b0
    invoke-interface {v7, v11, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v7, Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-direct {v7, v3}, Lcom/android/server/net/watchlist/HarmfulCrcs;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v3, v4}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v7, v3}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 144
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v3, Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-direct {v3, v5}, Lcom/android/server/net/watchlist/HarmfulCrcs;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v4, v6}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v3, v4}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    const-string p0, "Reload watchlist done"

    .line 146
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_15 .. :try_end_da} :catchall_de

    .line 147
    :try_start_da
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_dd
    .catch Ljava/lang/IllegalStateException; {:try_start_da .. :try_end_dd} :catch_e8
    .catch Ljava/lang/NullPointerException; {:try_start_da .. :try_end_dd} :catch_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_da .. :try_end_dd} :catch_e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_da .. :try_end_dd} :catch_e8
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_da .. :try_end_dd} :catch_e8

    goto :goto_ee

    :catchall_de
    move-exception p0

    .line 111
    :try_start_df
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e3

    goto :goto_e7

    :catchall_e3
    move-exception v0

    :try_start_e4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e7
    throw p0
    :try_end_e8
    .catch Ljava/lang/IllegalStateException; {:try_start_e4 .. :try_end_e8} :catch_e8
    .catch Ljava/lang/NullPointerException; {:try_start_e4 .. :try_end_e8} :catch_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_e8} :catch_e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e4 .. :try_end_e8} :catch_e8
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e8} :catch_e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e4 .. :try_end_e8} :catch_e8

    :catch_e8
    move-exception p0

    const-string v0, "Failed parsing xml"

    .line 149
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ee
    return-void

    nop

    :sswitch_data_f0
    .sparse-switch
        -0x6f059362 -> :sswitch_73
        -0xe260d6 -> :sswitch_68
        0x31cafa8d -> :sswitch_5d
        0x6670a201 -> :sswitch_53
    .end sparse-switch
.end method

.method public removeTestModeConfig()V
    .registers 2

    .line 262
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 264
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    const-string p0, "WatchlistConfig"

    const-string v0, "Unable to delete test config"

    .line 267
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_18
    return-void
.end method

.method public setTestMode(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "WatchlistConfig"

    const-string v1, "Setting watchlist testing config"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V

    const/4 p1, 0x0

    .line 254
    iput-boolean p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 256
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 257
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    return-void
.end method
