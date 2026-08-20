.class public Lcom/android/server/companion/SystemDataTransferRequestDataStore;
.super Ljava/lang/Object;
.source "SystemDataTransferRequestDataStore.java"


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "companion_device_system_data_transfer_requests.xml"

.field public static final LOG_TAG:Ljava/lang/String; = "SystemDataTransferRequestDataStore"

.field public static final XML_ATTR_ASSOCIATION_ID:Ljava/lang/String; = "association_id"

.field public static final XML_ATTR_IS_PERMISSION_SYNC_ALL_PACKAGES:Ljava/lang/String; = "is_permission_sync_all_packages"

.field public static final XML_ATTR_PERMISSION_SYNC_PACKAGES:Ljava/lang/String; = "permission_sync_packages"

.field public static final XML_TAG_LIST:Ljava/lang/String; = "list"

.field public static final XML_TAG_REQUEST:Ljava/lang/String; = "request"

.field public static final XML_TAG_REQUESTS:Ljava/lang/String; = "requests"


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
.method public static synthetic $r8$lambda$40m5kChAukzgtCks4V7mZqu-d8A(Lcom/android/server/companion/SystemDataTransferRequestDataStore;Ljava/util/List;Ljava/io/FileOutputStream;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->lambda$writeRequestsForUser$0(Ljava/util/List;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8QTAEFmEnsBDAR2qN3T_fuAWfro(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->lambda$getStorageFileForUser$1(ILjava/lang/Integer;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static synthetic lambda$getStorageFileForUser$1(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 2

    const-string p1, "companion_device_system_data_transfer_requests.xml"

    .line 224
    invoke-static {p0, p1}, Lcom/android/server/companion/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$writeRequestsForUser$0(Ljava/util/List;Ljava/io/FileOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object p2

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v1, 0x1

    .line 177
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 179
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->writeRequests(Landroid/util/TypedXmlSerializer;Ljava/util/Collection;)V

    .line 181
    invoke-interface {p2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method


# virtual methods
.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .registers 4

    .line 223
    iget-object p0, p0, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public final readRequest(Landroid/util/TypedXmlPullParser;)Landroid/companion/SystemDataTransferRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo p0, "request"

    .line 141
    invoke-static {p1, p0}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "association_id"

    .line 145
    invoke-static {p1, p0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result p0

    const-string/jumbo v0, "is_permission_sync_all_packages"

    .line 146
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 148
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "list"

    .line 150
    invoke-static {p1, v2}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 151
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 152
    invoke-static {p1, v2, v1}, Lcom/android/internal/util/XmlUtils;->readThisListXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 156
    :cond_31
    new-instance p1, Landroid/companion/SystemDataTransferRequest;

    invoke-direct {p1, p0, v0, v1}, Landroid/companion/SystemDataTransferRequest;-><init>(IZLjava/util/List;)V

    return-object p1

    .line 142
    :cond_37
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "XML doesn\'t have start tag: request"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readRequests(Landroid/util/TypedXmlPullParser;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/SystemDataTransferRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "requests"

    .line 122
    invoke-static {p1, v0}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    :cond_e
    :goto_e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 130
    invoke-static {p1, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    :cond_18
    const-string/jumbo v2, "request"

    .line 131
    invoke-static {p1, v2}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->readRequest(Landroid/util/TypedXmlPullParser;)Landroid/companion/SystemDataTransferRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 123
    :cond_29
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "The XML doesn\'t have start tag: requests"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readRequestsForUser(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/SystemDataTransferRequest;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading SystemDataTransferRequests for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from file="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-enter v0

    .line 103
    :try_start_2b
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_40

    const-string p0, "File does not exist -> Abort"

    .line 104
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_73

    return-object p0

    .line 107
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_44} :catch_65
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_65
    .catchall {:try_start_40 .. :try_end_44} :catchall_73

    .line 108
    :try_start_44
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    const-string/jumbo v2, "requests"

    .line 109
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->readRequests(Landroid/util/TypedXmlPullParser;)Ljava/util/List;

    move-result-object p0
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_59

    if-eqz p1, :cond_57

    .line 112
    :try_start_54
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_57} :catch_65
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_65
    .catchall {:try_start_54 .. :try_end_57} :catchall_73

    :cond_57
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_73

    return-object p0

    :catchall_59
    move-exception p0

    if-eqz p1, :cond_64

    .line 107
    :try_start_5c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p1

    :try_start_61
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw p0
    :try_end_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_65} :catch_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_73

    :catch_65
    move-exception p0

    .line 113
    :try_start_66
    sget-object p1, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error while reading requests file"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_73
    move-exception p0

    .line 116
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_66 .. :try_end_75} :catchall_73

    throw p0
.end method

.method public final writeRequest(Landroid/util/TypedXmlSerializer;Landroid/companion/SystemDataTransferRequest;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string/jumbo v0, "request"

    .line 199
    invoke-interface {p1, p0, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    invoke-virtual {p2}, Landroid/companion/SystemDataTransferRequest;->getAssociationId()I

    move-result v1

    const-string v2, "association_id"

    invoke-static {p1, v2, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 203
    invoke-virtual {p2}, Landroid/companion/SystemDataTransferRequest;->isPermissionSyncAllPackages()Z

    move-result v1

    const-string/jumbo v2, "is_permission_sync_all_packages"

    .line 202
    invoke-static {p1, v2, v1}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 205
    :try_start_1a
    invoke-virtual {p2}, Landroid/companion/SystemDataTransferRequest;->getPermissionSyncPackages()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "permission_sync_packages"

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_24} :catch_25

    goto :goto_43

    .line 208
    :catch_25
    sget-object v1, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing permission sync packages into XML. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p2}, Landroid/companion/SystemDataTransferRequest;->getPermissionSyncPackages()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 208
    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_43
    invoke-interface {p1, p0, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeRequests(Landroid/util/TypedXmlSerializer;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/Collection<",
            "Landroid/companion/SystemDataTransferRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "requests"

    .line 188
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/SystemDataTransferRequest;

    .line 191
    invoke-virtual {p0, p1, v2}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->writeRequest(Landroid/util/TypedXmlSerializer;Landroid/companion/SystemDataTransferRequest;)V

    goto :goto_b

    .line 194
    :cond_1b
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeRequestsForUser(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/companion/SystemDataTransferRequest;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing SystemDataTransferRequests for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to file="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-enter v0

    .line 175
    :try_start_2b
    new-instance p1, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/SystemDataTransferRequestDataStore;Ljava/util/List;)V

    invoke-static {v0, p1}, Lcom/android/server/companion/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 183
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw p0
.end method
