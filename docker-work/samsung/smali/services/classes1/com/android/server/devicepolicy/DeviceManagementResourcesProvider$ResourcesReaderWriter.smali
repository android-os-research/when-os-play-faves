.class public Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;
.super Ljava/lang/Object;
.source "DeviceManagementResourcesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourcesReaderWriter"
.end annotation


# instance fields
.field public final mFile:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$mgetResourcesFile(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public readFromFileLocked()V
    .registers 8

    .line 321
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "DevicePolicyManagerService"

    if-nez v0, :cond_26

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 326
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 330
    :try_start_44
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 331
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    const/4 v3, 0x0

    .line 335
    :cond_4d
    :goto_4d
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_99

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5e

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5b

    goto :goto_4d

    :cond_5b
    add-int/lit8 v3, v3, -0x1

    goto :goto_4d

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    .line 347
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v5, :cond_87

    const-string/jumbo v5, "root"

    .line 349
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid root tag: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_83} :catch_93
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_83} :catch_93
    .catchall {:try_start_44 .. :try_end_83} :catchall_91

    .line 363
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 356
    :cond_87
    :try_start_87
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->readInner(Landroid/util/TypedXmlPullParser;ILjava/lang/String;)Z

    move-result v4
    :try_end_8b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_8b} :catch_93
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8b} :catch_93
    .catchall {:try_start_87 .. :try_end_8b} :catchall_91

    if-nez v4, :cond_4d

    .line 363
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_91
    move-exception p0

    goto :goto_9d

    :catch_93
    move-exception p0

    :try_start_94
    const-string v0, "Error parsing resources file"

    .line 361
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_91

    .line 363
    :cond_99
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_9d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 364
    throw p0
.end method

.method public final readInner(Landroid/util/TypedXmlPullParser;ILjava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p2, v0, :cond_5

    return v1

    .line 436
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_106

    :goto_11
    move v0, p2

    goto :goto_32

    :sswitch_13
    const-string v2, "drawable-style-entry"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_11

    :sswitch_1c
    const-string v0, "drawable-source-entry"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_11

    :cond_25
    move v0, v1

    goto :goto_32

    :sswitch_27
    const-string/jumbo v0, "string-entry"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_11

    :cond_31
    move v0, v3

    :cond_32
    :goto_32
    const-string p2, "drawable-style"

    const-string v2, "drawable-id"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_114

    .line 470
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected tag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevicePolicyManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 438
    :pswitch_51
    invoke-interface {p1, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 439
    invoke-interface {p1, v4, p2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 441
    invoke-static {p1}, Landroid/app/admin/ParcelableResource;->createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 443
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_77
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_104

    .line 449
    :pswitch_88
    invoke-interface {p1, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "drawable-source"

    .line 450
    invoke-interface {p1, v4, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-interface {p1, v4, p2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 454
    invoke-static {p1}, Landroid/app/admin/ParcelableResource;->createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;

    move-result-object p1

    .line 455
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b4

    .line 456
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_b4
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    .line 459
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_da
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_104

    :pswitch_f0
    const-string/jumbo p2, "source-id"

    .line 465
    invoke-interface {p1, v4, p2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 466
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Landroid/app/admin/ParcelableResource;->createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_104
    return v1

    nop

    :sswitch_data_106
    .sparse-switch
        -0x3cdb944a -> :sswitch_27
        0x48f5d90f -> :sswitch_1c
        0x53d206a7 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_88
        :pswitch_51
    .end packed-switch
.end method

.method public final writeDrawablesForSourcesInner(Landroid/util/TypedXmlSerializer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_96

    .line 396
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 398
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 400
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/4 v5, 0x0

    const-string v6, "drawable-source-entry"

    .line 401
    invoke-interface {p1, v5, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "drawable-id"

    .line 402
    invoke-interface {p1, v5, v8, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "drawable-source"

    .line 404
    invoke-interface {p1, v5, v8, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "drawable-style"

    .line 406
    invoke-interface {p1, v5, v8, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/ParcelableResource;

    invoke-virtual {v4, p1}, Landroid/app/admin/ParcelableResource;->writeToXmlFile(Landroid/util/TypedXmlSerializer;)V

    .line 409
    invoke-interface {p1, v5, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_56

    :cond_96
    return-void
.end method

.method public final writeDrawablesForStylesInner(Landroid/util/TypedXmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    .line 376
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    const-string v4, "drawable-style-entry"

    .line 379
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "drawable-id"

    .line 380
    invoke-interface {p1, v3, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "drawable-style"

    .line 382
    invoke-interface {p1, v3, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ParcelableResource;

    invoke-virtual {v2, p1}, Landroid/app/admin/ParcelableResource;->writeToXmlFile(Landroid/util/TypedXmlSerializer;)V

    .line 387
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3c

    :cond_71
    return-void
.end method

.method public writeInner(Landroid/util/TypedXmlSerializer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeDrawablesForStylesInner(Landroid/util/TypedXmlSerializer;)V

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeDrawablesForSourcesInner(Landroid/util/TypedXmlSerializer;)V

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeStringsInner(Landroid/util/TypedXmlSerializer;)V

    return-void
.end method

.method public final writeStringsInner(Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 419
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    const-string/jumbo v2, "string-entry"

    .line 420
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "source-id"

    .line 421
    invoke-interface {p1, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/ParcelableResource;

    invoke-virtual {v0, p1}, Landroid/app/admin/ParcelableResource;->writeToXmlFile(Landroid/util/TypedXmlSerializer;)V

    .line 426
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_22

    :cond_4e
    return-void
.end method

.method public writeToFileLocked()V
    .registers 8

    const-string/jumbo v0, "root"

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevicePolicyManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 293
    :try_start_23
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_46

    .line 294
    :try_start_27
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v5

    .line 297
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v3, v6}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 298
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeInner(Landroid/util/TypedXmlSerializer;)V

    .line 304
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 306
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 309
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_42} :catch_43

    goto :goto_51

    :catch_43
    move-exception p0

    move-object v3, v4

    goto :goto_47

    :catch_46
    move-exception p0

    :goto_47
    const-string v0, "Exception when writing"

    .line 313
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_51

    .line 315
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_51
    :goto_51
    return-void
.end method
