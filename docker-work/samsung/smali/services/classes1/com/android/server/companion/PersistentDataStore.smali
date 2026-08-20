.class public final Lcom/android/server/companion/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field public static final CURRENT_PERSISTENCE_VERSION:I = 0x1

.field public static final DEBUG:Z = false

.field public static final FILE_NAME:Ljava/lang/String; = "companion_device_manager.xml"

.field public static final FILE_NAME_LEGACY:Ljava/lang/String; = "companion_device_manager_associations.xml"

.field public static final LEGACY_XML_ATTR_DEVICE:Ljava/lang/String; = "device"

.field public static final TAG:Ljava/lang/String; = "CompanionDevice_PersistentDataStore"

.field public static final XML_ATTR_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final XML_ATTR_ID:Ljava/lang/String; = "id"

.field public static final XML_ATTR_LAST_TIME_CONNECTED:Ljava/lang/String; = "last_time_connected"

.field public static final XML_ATTR_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field public static final XML_ATTR_NOTIFY_DEVICE_NEARBY:Ljava/lang/String; = "notify_device_nearby"

.field public static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field public static final XML_ATTR_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final XML_ATTR_PERSISTENCE_VERSION:Ljava/lang/String; = "persistence-version"

.field public static final XML_ATTR_PROFILE:Ljava/lang/String; = "profile"

.field public static final XML_ATTR_SELF_MANAGED:Ljava/lang/String; = "self_managed"

.field public static final XML_ATTR_TIME_APPROVED:Ljava/lang/String; = "time_approved"

.field public static final XML_TAG_ASSOCIATION:Ljava/lang/String; = "association"

.field public static final XML_TAG_ASSOCIATIONS:Ljava/lang/String; = "associations"

.field public static final XML_TAG_ID:Ljava/lang/String; = "id"

.field public static final XML_TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final XML_TAG_PREVIOUSLY_USED_IDS:Ljava/lang/String; = "previously-used-ids"

.field public static final XML_TAG_STATE:Ljava/lang/String; = "state"


# instance fields
.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-59z3OcSJJpt3JzxMdkpc4wBV4w(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/companion/PersistentDataStore;->lambda$writePreviouslyUsedIdsForPackage$2(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ajn8ESQxjhTZuM3r7tHEXDXvC5w(Ljava/util/Collection;Ljava/util/Map;Ljava/io/FileOutputStream;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/PersistentDataStore;->lambda$persistStateToFileLocked$0(Ljava/util/Collection;Ljava/util/Map;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kN65qEzcsM2AO8ej0M9AYhpWm4s(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/companion/PersistentDataStore;->lambda$getStorageFileForUser$1(ILjava/lang/Integer;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/PersistentDataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static createAssociationInfoNoThrow(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)Landroid/companion/AssociationInfo;
    .registers 26

    .line 550
    :try_start_0
    new-instance v13, Landroid/companion/AssociationInfo;

    move-object v0, v13

    move v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    const/4 v13, 0x0

    :goto_1a
    return-object v13
.end method

.method public static getBaseLegacyStorageFileForUser(I)Ljava/io/File;
    .registers 3

    .line 378
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "companion_device_manager_associations.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$getStorageFileForUser$1(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 2

    const-string p1, "companion_device_manager.xml"

    .line 374
    invoke-static {p0, p1}, Lcom/android/server/companion/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$persistStateToFileLocked$0(Ljava/util/Collection;Ljava/util/Map;Ljava/io/FileOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object p2

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v1, 0x1

    .line 349
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 352
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "state"

    .line 353
    invoke-interface {p2, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "persistence-version"

    .line 354
    invoke-static {p2, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 357
    invoke-static {p2, p0}, Lcom/android/server/companion/PersistentDataStore;->writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Collection;)V

    .line 358
    invoke-static {p2, p1}, Lcom/android/server/companion/PersistentDataStore;->writePreviouslyUsedIds(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V

    .line 360
    invoke-interface {p2, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    invoke-interface {p2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public static synthetic lambda$writePreviouslyUsedIdsForPackage$2(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "id"

    .line 527
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 528
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 529
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static readAssociationV0(Landroid/util/TypedXmlPullParser;IILjava/util/Collection;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "II",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object v0, p0

    const-string v1, "association"

    .line 405
    invoke-static {p0, v1}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 407
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "device"

    .line 408
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_49

    if-nez v1, :cond_18

    goto :goto_49

    :cond_18
    const-string/jumbo v2, "profile"

    .line 412
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "notify_device_nearby"

    .line 413
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "time_approved"

    .line 414
    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 416
    new-instance v0, Landroid/companion/AssociationInfo;

    .line 417
    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide v13, 0x7fffffffffffffffL

    move-object v2, v0

    move/from16 v3, p2

    move/from16 v4, p1

    invoke-direct/range {v2 .. v14}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)V

    move-object/from16 v1, p3

    .line 416
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_49
    :goto_49
    return-void
.end method

.method public static readAssociationV1(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "association"

    .line 437
    invoke-static {p0, v0}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v0, "id"

    .line 439
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "profile"

    .line 440
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "package"

    .line 441
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "mac_address"

    .line 443
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v0}, Lcom/android/server/companion/PersistentDataStore;->stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v4

    const-string v0, "display_name"

    .line 444
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "self_managed"

    .line 445
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v0, "notify_device_nearby"

    .line 446
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v0, "time_approved"

    const-wide/16 v9, 0x0

    .line 447
    invoke-static {p0, v0, v9, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string/jumbo v0, "last_time_connected"

    const-wide v11, 0x7fffffffffffffffL

    .line 448
    invoke-static {p0, v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    move v2, p1

    .line 451
    invoke-static/range {v1 .. v12}, Lcom/android/server/companion/PersistentDataStore;->createAssociationInfoNoThrow(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)Landroid/companion/AssociationInfo;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 455
    invoke-interface {p2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_58
    return-void
.end method

.method public static readAssociationsV0(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "associations"

    .line 384
    invoke-static {p0, v0}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 392
    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getFirstAssociationIdForUser(I)I

    move-result v1

    .line 394
    :goto_9
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 395
    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-void

    :cond_13
    const-string v2, "association"

    .line 396
    invoke-static {p0, v2}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_9

    :cond_1c
    add-int/lit8 v2, v1, 0x1

    .line 398
    invoke-static {p0, p1, v1, p2}, Lcom/android/server/companion/PersistentDataStore;->readAssociationV0(Landroid/util/TypedXmlPullParser;IILjava/util/Collection;)V

    move v1, v2

    goto :goto_9
.end method

.method public static readAssociationsV1(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "associations"

    .line 424
    invoke-static {p0, v0}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 427
    :goto_5
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 428
    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    const-string v1, "association"

    .line 429
    invoke-static {p0, v1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_5

    .line 431
    :cond_18
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/PersistentDataStore;->readAssociationV1(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V

    goto :goto_5
.end method

.method public static readPreviouslyUsedIdsV1(Landroid/util/TypedXmlPullParser;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "previously-used-ids"

    .line 461
    invoke-static {p0, v0}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 464
    :goto_6
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 465
    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    :cond_10
    const-string/jumbo v1, "package"

    .line 466
    invoke-static {p0, v1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_6

    :cond_1a
    const-string/jumbo v2, "package_name"

    .line 468
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 472
    :goto_26
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 473
    invoke-static {p0, v1}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 481
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_33
    const-string/jumbo v4, "id"

    .line 474
    invoke-static {p0, v4}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_26

    .line 476
    :cond_3d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextToken()I

    .line 477
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 478
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_26
.end method

.method public static requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 535
    invoke-static {p0, p1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 536
    :cond_7
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Should be at the start of \"associations\" tag"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;
    .registers 1

    if-eqz p0, :cond_7

    .line 541
    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "association"

    .line 496
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 498
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    const-string/jumbo v3, "id"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 499
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "profile"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mac_address"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "display_name"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v2

    const-string/jumbo v3, "self_managed"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 505
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v2

    const-string/jumbo v3, "notify_device_nearby"

    .line 504
    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 506
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v2

    const-string/jumbo v4, "time_approved"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 508
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo p1, "last_time_connected"

    .line 507
    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 510
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "associations"

    .line 487
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 488
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 489
    invoke-static {p0, v2}, Lcom/android/server/companion/PersistentDataStore;->writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    goto :goto_b

    .line 491
    :cond_1b
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePreviouslyUsedIds(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "previously-used-ids"

    .line 515
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 516
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 517
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p0, v3, v2}, Lcom/android/server/companion/PersistentDataStore;->writePreviouslyUsedIdsForPackage(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_10

    .line 519
    :cond_2c
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePreviouslyUsedIdsForPackage(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    .line 525
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    const-string/jumbo v2, "package_name"

    .line 526
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 527
    new-instance p1, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {p2, p1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 530
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .registers 4

    .line 373
    iget-object p0, p0, Lcom/android/server/companion/PersistentDataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public persistStateForUser(ILjava/util/Collection;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "CompanionDevice_PersistentDataStore"

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/companion/PersistentDataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p1

    .line 305
    monitor-enter p1

    .line 306
    :try_start_20
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/PersistentDataStore;->persistStateToFileLocked(Landroid/util/AtomicFile;Ljava/util/Collection;Ljava/util/Map;)V

    .line 307
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final persistStateToFileLocked(Landroid/util/AtomicFile;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AtomicFile;",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 347
    new-instance p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;

    invoke-direct {p0, p2, p3}, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;-><init>(Ljava/util/Collection;Ljava/util/Map;)V

    invoke-static {p1, p0}, Lcom/android/server/companion/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public readStateForUser(ILjava/util/Collection;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "CompanionDevice_PersistentDataStore"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/companion/PersistentDataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 240
    monitor-enter v0

    const/4 v1, 0x0

    .line 244
    :try_start_21
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_40

    .line 247
    invoke-static {p1}, Lcom/android/server/companion/PersistentDataStore;->getBaseLegacyStorageFileForUser(I)Ljava/io/File;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_37

    .line 251
    monitor-exit v0

    return-void

    .line 254
    :cond_37
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const-string v3, "associations"

    move-object v4, v2

    goto :goto_44

    :cond_40
    const-string/jumbo v3, "state"

    move-object v4, v0

    :goto_44
    move-object v5, v3

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    .line 262
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/companion/PersistentDataStore;->readStateFromFileLocked(ILandroid/util/AtomicFile;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)I

    move-result p1

    if-nez v1, :cond_52

    const/4 v2, 0x1

    if-ge p1, v2, :cond_5a

    .line 277
    :cond_52
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/companion/PersistentDataStore;->persistStateToFileLocked(Landroid/util/AtomicFile;Ljava/util/Collection;Ljava/util/Map;)V

    if-eqz v1, :cond_5a

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 285
    :cond_5a
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_21 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public readStateForUsers(Ljava/util/List;Ljava/util/Set;Landroid/util/SparseArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/companion/AssociationInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 193
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 195
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 199
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 200
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/companion/PersistentDataStore;->readStateForUser(ILjava/util/Collection;Ljava/util/Map;)V

    .line 204
    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getFirstAssociationIdForUser(I)I

    move-result v3

    .line 205
    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getLastAssociationIdForUser(I)I

    move-result v4

    .line 206
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2b
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/AssociationInfo;

    .line 207
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getId()I

    move-result v6

    if-lt v6, v3, :cond_3f

    if-le v6, v4, :cond_2b

    .line 209
    :cond_3f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong association ID assignment: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Association belongs to u"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and thus its ID should be within ["

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] range."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CompanionDevice_PersistentDataStore"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 217
    :cond_73
    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-virtual {p3, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_4

    :cond_7a
    return-void
.end method

.method public final readStateFromFileLocked(ILandroid/util/AtomicFile;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/AtomicFile;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    .line 313
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_51
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_51

    .line 314
    :try_start_4
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p2

    .line 316
    invoke-static {p2, p3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v0, "persistence-version"

    const/4 v1, 0x0

    .line 317
    invoke-static {p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    goto :goto_3f

    .line 324
    :cond_19
    :goto_19
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->nextTag()I

    const-string v1, "associations"

    .line 325
    invoke-static {p2, v1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 326
    invoke-static {p2, p1, p4}, Lcom/android/server/companion/PersistentDataStore;->readAssociationsV1(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V

    goto :goto_19

    :cond_28
    const-string/jumbo v1, "previously-used-ids"

    .line 327
    invoke-static {p2, v1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 328
    invoke-static {p2, p5}, Lcom/android/server/companion/PersistentDataStore;->readPreviouslyUsedIdsV1(Landroid/util/TypedXmlPullParser;Ljava/util/Map;)V

    goto :goto_19

    .line 329
    :cond_35
    invoke-static {p2, p3}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_3f

    .line 320
    :cond_3c
    invoke-static {p2, p1, p4}, Lcom/android/server/companion/PersistentDataStore;->readAssociationsV0(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_45

    :goto_3f
    if-eqz p0, :cond_44

    .line 336
    :try_start_41
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_44} :catch_51
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_51

    :cond_44
    return v0

    :catchall_45
    move-exception p1

    if-eqz p0, :cond_50

    .line 313
    :try_start_48
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception p0

    :try_start_4d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    throw p1
    :try_end_51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_51} :catch_51
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_51} :catch_51

    :catch_51
    move-exception p0

    const-string p1, "CompanionDevice_PersistentDataStore"

    const-string p2, "Error while reading associations file"

    .line 337
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method
