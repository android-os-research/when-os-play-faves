.class public Lcom/android/server/SEAMSContainer;
.super Ljava/lang/Object;
.source "SEAMSContainer.java"


# static fields
.field public static DDC_MAC_PERM:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "SEAMSContainer"

.field public static mContext:Landroid/content/Context;

.field public static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 46
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/seams/ddc/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMSContainer;->DDC_MAC_PERM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sput-object p1, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 6

    const-string v0, "SEAMSContainer"

    const/4 v1, 0x0

    if-nez p0, :cond_d

    .line 360
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "check id entry : curElem is null"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 363
    :cond_d
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    :goto_13
    if-eqz p0, :cond_43

    .line 367
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string/jumbo v2, "name"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 368
    sget-boolean p1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p1, :cond_3a

    .line 369
    sget-object p1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "check id entry : Match found..returning elem"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    move-object v1, p0

    goto :goto_43

    .line 374
    :cond_3c
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    goto :goto_13

    :cond_43
    :goto_43
    return-object v1
.end method

.method public static declared-synchronized getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-class v0, Lcom/android/server/SEAMSContainer;

    monitor-enter v0

    .line 232
    :try_start_3
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 233
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSignatureEntryFromMac packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_20
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_d2

    const/4 v2, 0x0

    .line 239
    :try_start_25
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 243
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 248
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v1, "policy"

    .line 249
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v1, 0x0

    .line 251
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string/jumbo v3, "signer"

    .line 252
    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 254
    :goto_4f
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_d0

    .line 255
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 256
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    :goto_61
    if-eqz v4, :cond_8d

    .line 259
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "seinfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_86

    const-string/jumbo v5, "name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    const-string/jumbo p0, "signature"

    .line 260
    invoke-interface {v3, p0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_84} :catch_b3
    .catchall {:try_start_25 .. :try_end_84} :catchall_d2

    .line 261
    monitor-exit v0

    return-object p0

    .line 263
    :cond_86
    :try_start_86
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    goto :goto_61

    :cond_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 245
    :cond_90
    sget-object p1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get singature from mac: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist, creating file"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b1} :catch_b3
    .catchall {:try_start_86 .. :try_end_b1} :catchall_d2

    .line 246
    monitor-exit v0

    return-object v2

    :catch_b3
    move-exception p0

    .line 267
    :try_start_b4
    sget-object p1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get singature from mac: the exception occurs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d0
    .catchall {:try_start_b4 .. :try_end_d0} :catchall_d2

    .line 270
    :cond_d0
    monitor-exit v0

    return-object v2

    :catchall_d2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "SEAMSContainer"

    const/4 v2, 0x0

    if-nez p0, :cond_11

    .line 207
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v0, "get singature from pkg: : packageName is null"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_11
    :try_start_11
    const-string/jumbo v3, "package"

    .line 212
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/32 v4, 0x8000000

    .line 213
    invoke-interface {v3, p0, v4, v5, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 214
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p0, :cond_45

    .line 215
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 218
    :goto_35
    array-length v4, p0

    if-ge v3, v4, :cond_44

    .line 219
    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_41} :catch_46

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_44
    return-object v0

    :cond_45
    return-object v2

    :catch_46
    move-exception p0

    .line 225
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get singature from pkg: the exception occurs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static declared-synchronized removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const-class v0, Lcom/android/server/SEAMSContainer;

    monitor-enter v0

    .line 286
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_17d

    const/4 v2, 0x0

    .line 288
    :try_start_8
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_134

    .line 291
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_20

    .line 292
    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    const-string/jumbo v5, "macpermfile exists"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_20
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2a

    .line 295
    invoke-virtual {p0, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 296
    :cond_2a
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v3, "policy"

    .line 304
    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 306
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    const-string/jumbo v5, "signer"

    .line 307
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v2

    .line 311
    :goto_4b
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_be

    .line 312
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string/jumbo v8, "signature"

    .line 313
    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 314
    invoke-static {v6, p2}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_a0

    .line 316
    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v8, :cond_98

    .line 317
    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remove entry from mac:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " match found for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "..deleting elem"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_98
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_bf

    .line 323
    :cond_a0
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "SEAMSContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove entry from mac: Signature matches but no entry for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b9} :catch_15c
    .catchall {:try_start_8 .. :try_end_b9} :catchall_17d

    .line 324
    monitor-exit v0

    return v2

    :cond_bb
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    :cond_be
    move v4, v2

    :goto_bf
    if-eqz v4, :cond_10a

    :try_start_c1
    const-string/jumbo p1, "service"

    .line 331
    invoke-interface {v6, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 332
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-nez p1, :cond_d1

    .line 333
    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 335
    :cond_d1
    sget-boolean p1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p1, :cond_df

    .line 336
    sget-object p1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p2, "SEAMSContainer"

    const-string/jumbo v3, "remove entry from mac: Match found..deleted elem...writing to file"

    invoke-virtual {p1, p2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_df
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->normalize()V

    .line 339
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    .line 341
    new-instance p2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p2, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 342
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, p0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 343
    invoke-virtual {p1, p2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 344
    sget-boolean p1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p1, :cond_127

    .line 345
    sget-object p1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p2, "SEAMSContainer"

    const-string/jumbo v1, "remove entry from mac:  entry removed from mac_permissions.xml"

    invoke-virtual {p1, p2, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_127

    .line 348
    :cond_10a
    sget-object p1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " remove entry from mac: No match for packageName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Please check again"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_127
    :goto_127
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_17b

    .line 351
    invoke-virtual {p0, v2}, Ljava/io/File;->setWritable(Z)Z
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_130} :catch_131
    .catchall {:try_start_c1 .. :try_end_130} :catchall_17d

    goto :goto_17b

    :catch_131
    move-exception p0

    move v2, v4

    goto :goto_15d

    .line 298
    :cond_134
    :try_start_134
    sget-boolean p1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p1, :cond_15a

    .line 299
    sget-object p1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p2, "SEAMSContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove entry from mac: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist, creating file"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_15a} :catch_15c
    .catchall {:try_start_134 .. :try_end_15a} :catchall_17d

    .line 301
    :cond_15a
    monitor-exit v0

    return v2

    :catch_15c
    move-exception p0

    .line 353
    :goto_15d
    :try_start_15d
    sget-object p1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p2, "SEAMSContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing entry from mac: the exception occurs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17a
    .catchall {:try_start_15d .. :try_end_17a} :catchall_17d

    move v4, v2

    .line 355
    :cond_17b
    :goto_17b
    monitor-exit v0

    return v4

    :catchall_17d
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    monitor-enter p0

    .line 87
    :try_start_1
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 88
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    const-string v2, "addEntryToMac_begin"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", seinfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2f
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_1a4

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 99
    :try_start_35
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_17c
    .catchall {:try_start_35 .. :try_end_39} :catchall_1a4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    :try_start_3b
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 102
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const-string/jumbo v0, "policy"

    .line 103
    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 104
    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_73

    .line 106
    :cond_50
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_54} :catch_56
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_54} :catch_17c
    .catchall {:try_start_3b .. :try_end_54} :catchall_1a4

    move v0, v3

    goto :goto_74

    :catch_56
    move-exception v0

    .line 110
    :try_start_57
    sget-object v5, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add entry: Exception ocurrs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_73
    move v0, v4

    .line 113
    :goto_74
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-nez v5, :cond_7d

    .line 114
    invoke-virtual {p1, v3}, Ljava/io/File;->setWritable(Z)Z

    .line 117
    :cond_7d
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v5, "policy"

    .line 118
    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 120
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string/jumbo v6, "signer"

    .line 121
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const-string/jumbo v7, "service"
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_9b} :catch_17c
    .catchall {:try_start_57 .. :try_end_9b} :catchall_1a4

    :try_start_9b
    const-string/jumbo v8, "package"

    .line 131
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    const-wide/16 v9, 0x0

    .line 132
    invoke-interface {v8, p3, v9, v10, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ae} :catch_155
    .catchall {:try_start_9b .. :try_end_ae} :catchall_1a4

    :try_start_ae
    const-string v9, ":"

    .line 145
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_be

    const-string v9, ":"

    .line 146
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 147
    aget-object v8, v8, v4

    .line 150
    :cond_be
    invoke-interface {v1, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    const-string/jumbo v9, "name"

    .line 151
    invoke-interface {v7, v9, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "seinfo"

    .line 152
    invoke-interface {v7, p3, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "signer"

    .line 153
    invoke-interface {v1, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    const-string/jumbo p4, "seinfo"

    .line 154
    invoke-interface {v1, p4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p4

    const-string/jumbo v9, "signature"

    .line 155
    invoke-interface {p3, v9, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "value"

    .line 156
    invoke-interface {p4, v9, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v4

    .line 158
    :goto_e9
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_11a

    .line 159
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    const-string/jumbo v10, "signature"

    .line 160
    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_117

    .line 161
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p2, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 162
    sget-boolean p2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p2, :cond_11b

    .line 163
    sget-object p2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    const-string v8, "add entry: signature match found. Appending elem. "

    invoke-virtual {p2, v6, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11b

    :cond_117
    add-int/lit8 v8, v8, 0x1

    goto :goto_e9

    :cond_11a
    move v3, v4

    :cond_11b
    :goto_11b
    if-nez v3, :cond_126

    .line 170
    invoke-interface {p3, p4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 171
    invoke-interface {p3, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 172
    invoke-interface {v5, p3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 174
    :cond_126
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/Element;->normalize()V

    .line 175
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p2

    .line 176
    invoke-virtual {p2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p2

    if-eqz v0, :cond_13d

    .line 179
    new-instance p3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p3, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_142

    .line 181
    :cond_13d
    new-instance p3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p3, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 183
    :goto_142
    new-instance p4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p4, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 184
    invoke-virtual {p2, p3, p4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p2

    if-eqz p2, :cond_153

    .line 186
    invoke-virtual {p1, v4}, Ljava/io/File;->setWritable(Z)Z
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_153} :catch_17c
    .catchall {:try_start_ae .. :try_end_153} :catchall_1a4

    .line 187
    :cond_153
    monitor-exit p0

    return v4

    :catch_155
    move-exception p1

    .line 134
    :try_start_156
    sget-object p2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p4, "SEAMSContainer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get App\'s Info: failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " : "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_17a} :catch_17c
    .catchall {:try_start_156 .. :try_end_17a} :catchall_1a4

    .line 142
    monitor-exit p0

    return v2

    :catch_17c
    move-exception p1

    .line 189
    :try_start_17d
    sget-object p2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p3, "SEAMSContainer"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adding entry : the exception occurs "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object p1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p2, "SEAMSContainer"

    const-string p3, "adding entry : POLICY_FAILED is returned"

    invoke-virtual {p1, p2, p3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a2
    .catchall {:try_start_17d .. :try_end_1a2} :catchall_1a4

    .line 192
    monitor-exit p0

    return v2

    :catchall_1a4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public changeAppDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 13

    const-string v0, ":"

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 431
    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    const-string v3, "SEAMSContainer"

    if-eqz v2, :cond_31

    .line 432
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter changing AppDomain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getDDCFlag()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    const/4 v2, -0x1

    if-nez p1, :cond_3c

    .line 436
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, " changing AppDomain is failed, no packageName found"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3c
    const/4 v4, 0x1

    if-eq p4, v4, :cond_4c

    .line 440
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getDDCFlag()Z

    move-result v5

    if-nez v5, :cond_4c

    .line 441
    invoke-virtual {p0, v1}, Lcom/android/server/SEAMSContainer;->createChangeDomain(I)I

    move-result v1

    if-ne v1, v2, :cond_4c

    return v2

    :cond_4c
    const/4 v1, 0x0

    if-eqz p4, :cond_5d

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7c

    .line 449
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "changing AppDomain, signature is null"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 453
    :cond_5d
    invoke-static {p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_6b

    .line 455
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "changing AppDomain, sigs is null"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 458
    :cond_6b
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 459
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_7c

    .line 460
    sget-object v6, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "changing AppDomain, get signature"

    invoke-virtual {v6, v3, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_7c
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/android/server/SEAMSContainer;->DDC_MAC_PERM:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "leave changing AppDomain"

    if-eqz p4, :cond_8c

    .line 468
    :try_start_88
    invoke-static {v6, v5, p1}, Lcom/android/server/SEAMSContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9a

    .line 470
    :cond_8c
    invoke-virtual {p0, v6, v5, p1, p2}, Lcom/android/server/SEAMSContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_9a

    .line 471
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "changing AppDomain: addToMac failed"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_9a
    :goto_9a
    const-string/jumbo p4, "trustonicpartner"

    .line 476
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_100

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_100

    .line 477
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p4, v4

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 479
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_100

    .line 480
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", currentSeInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", orgSeinfo[0] = "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p4, v1

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", orgSeinfo[1] = "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p4, v4

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", seinfo = "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v3, p3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_100
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_10f

    .line 486
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo p1, "load container setting is done"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_10f} :catch_119

    .line 492
    :cond_10f
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_118

    .line 493
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    invoke-virtual {p0, v3, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_118
    return v1

    :catch_119
    move-exception p0

    .line 489
    sget-object p1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final createChangeDomain(I)I
    .registers 12

    .line 380
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    const-string v1, "SEAMSContainer"

    if-eqz v0, :cond_d

    .line 381
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "enter creating Domain"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_d
    sget-object v0, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 388
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/SEAMSContainer;->DDC_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    return v3

    :cond_22
    const/4 v2, -0x1

    :try_start_23
    const-string/jumbo v4, "package"

    .line 394
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 395
    invoke-interface {v4, p1, v5, v6, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_36} :catch_93

    .line 400
    invoke-static {p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ":"

    .line 402
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 403
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 404
    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_70

    .line 405
    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creating Domain , seinfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", orgSeinfo[0] = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v6, v3

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_70
    aget-object v4, v6, v3

    .line 410
    :cond_72
    invoke-virtual {p0, v0, v5, p1, v4}, Lcom/android/server/SEAMSContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_80

    .line 411
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "creating Domain: addToMac failed"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 415
    :cond_80
    invoke-virtual {p0, p1, v4}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_8e

    .line 418
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "create domain: load container setting is done"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    const/4 p0, 0x1

    .line 420
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->setDDCFlag(Z)Z

    return v3

    :catch_93
    move-exception p0

    .line 397
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get App Info: failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 58
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/server/SEAMSContainer;->DDC_MAC_PERM:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Lcom/android/server/SEAMSContainer;->getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public loadContainerSetting(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const-string/jumbo p0, "package"

    .line 65
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    if-eqz p0, :cond_20

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->updateAppInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 69
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_1e

    .line 70
    sget-object p0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "SEAMSContainer"

    const-string p2, "The update is done"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const/4 p0, 0x0

    goto :goto_21

    :cond_20
    const/4 p0, -0x1

    :goto_21
    return p0
.end method
