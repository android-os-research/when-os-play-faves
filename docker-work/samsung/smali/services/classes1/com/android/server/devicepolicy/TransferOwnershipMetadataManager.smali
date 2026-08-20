.class public Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
.super Ljava/lang/Object;
.source "TransferOwnershipMetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;,
        Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    }
.end annotation


# static fields
.field public static final ADMIN_TYPE_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field public static final ADMIN_TYPE_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field public static final OWNER_TRANSFER_METADATA_XML:Ljava/lang/String; = "owner-transfer-metadata.xml"

.field public static final TAG:Ljava/lang/String; = "com.android.server.devicepolicy.TransferOwnershipMetadataManager"

.field public static final TAG_ADMIN_TYPE:Ljava/lang/String; = "admin-type"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG_SOURCE_COMPONENT:Ljava/lang/String; = "source-component"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG_TARGET_COMPONENT:Ljava/lang/String; = "target-component"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG_USER_ID:Ljava/lang/String; = "user-id"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 71
    new-instance v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;-><init>(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    return-void
.end method


# virtual methods
.method public deleteMetadataFile()V
    .registers 3

    .line 168
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "owner-transfer-metadata.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final insertSimpleTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 108
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    invoke-interface {p1, p3}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public loadMetadataFile()Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    .registers 6

    .line 115
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    .line 116
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return-object v2

    .line 120
    :cond_16
    sget-object v1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading TransferOwnershipMetadataManager from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_2c
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_31} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_31} :catch_47

    .line 123
    :try_start_31
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 124
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->parseMetadataFile(Landroid/util/TypedXmlPullParser;)Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    move-result-object p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3d

    .line 125
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_3c} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_3c} :catch_47

    return-object p0

    :catchall_3d
    move-exception p0

    .line 122
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v1

    :try_start_43
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_46
    throw p0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_47} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_47} :catch_47

    :catch_47
    move-exception p0

    .line 126
    sget-object v1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception while trying to load the owner transfer params from file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public metadataFileExists()Z
    .registers 3

    .line 172
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "owner-transfer-metadata.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public final parseMetadataFile(Landroid/util/TypedXmlPullParser;)Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    .line 140
    :cond_9
    :goto_9
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_84

    const/4 v7, 0x3

    if-ne v5, v7, :cond_19

    .line 141
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, p0, :cond_84

    :cond_19
    if-eq v5, v7, :cond_9

    const/4 v8, 0x4

    if-ne v5, v8, :cond_1f

    goto :goto_9

    .line 145
    :cond_1f
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v8, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_8a

    :goto_2e
    move v6, v8

    goto :goto_5c

    :sswitch_30
    const-string v6, "admin-type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_2e

    :cond_39
    move v6, v7

    goto :goto_5c

    :sswitch_3b
    const-string/jumbo v6, "source-component"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    goto :goto_2e

    :cond_45
    const/4 v6, 0x2

    goto :goto_5c

    :sswitch_47
    const-string/jumbo v7, "user-id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    goto :goto_2e

    :sswitch_51
    const-string/jumbo v6, "target-component"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    goto :goto_2e

    :cond_5b
    move v6, v0

    :cond_5c
    :goto_5c
    packed-switch v6, :pswitch_data_9c

    goto :goto_9

    .line 159
    :pswitch_60
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    .line 160
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 155
    :pswitch_68
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    .line 156
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 147
    :pswitch_70
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    .line 148
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_9

    .line 151
    :pswitch_7c
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    .line 152
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 164
    :cond_84
    new-instance p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :sswitch_data_8a
    .sparse-switch
        -0x1419903f -> :sswitch_51
        -0x8c5cda3 -> :sswitch_47
        0x10c541cb -> :sswitch_3b
        0x264366f8 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_70
        :pswitch_68
        :pswitch_60
    .end packed-switch
.end method

.method public saveMetadataFile(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;)Z
    .registers 8

    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 85
    :try_start_14
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_57

    .line 86
    :try_start_18
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 87
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, "user-id"

    .line 88
    iget v5, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "source-component"

    .line 89
    iget-object v5, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 90
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "target-component"

    .line 91
    iget-object v5, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 92
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "admin-type"

    .line 93
    iget-object p1, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, p1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 95
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_52} :catch_54

    const/4 p0, 0x1

    return p0

    :catch_54
    move-exception p0

    move-object v2, v3

    goto :goto_58

    :catch_57
    move-exception p0

    .line 98
    :goto_58
    sget-object p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception while trying to save Owner Transfer Params to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const/4 p0, 0x0

    return p0
.end method
