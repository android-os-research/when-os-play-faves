.class public Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;
.super Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
.source "OwnersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/OwnersData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceOwnerReadWriter"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/OwnersData;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/OwnersData;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 343
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/OwnersData;->getDeviceOwnerFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public readInner(Landroid/util/TypedXmlPullParser;ILjava/lang/String;)Z
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p2, v0, :cond_5

    return v1

    .line 399
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_140

    :goto_11
    move v0, p2

    goto :goto_5f

    :sswitch_13
    const-string/jumbo v0, "system-update-policy"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_11

    :cond_1d
    const/4 v0, 0x6

    goto :goto_5f

    :sswitch_1f
    const-string v0, "freeze-record"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_11

    :cond_28
    const/4 v0, 0x5

    goto :goto_5f

    :sswitch_2a
    const-string v0, "device-owner-type"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_11

    :cond_33
    const/4 v0, 0x4

    goto :goto_5f

    :sswitch_35
    const-string v0, "device-owner-protected-packages"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_11

    :cond_3e
    const/4 v0, 0x3

    goto :goto_5f

    :sswitch_40
    const-string v2, "device-owner-context"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    goto :goto_11

    :sswitch_49
    const-string v0, "device-owner"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_11

    :cond_52
    move v0, v1

    goto :goto_5f

    :sswitch_54
    const-string/jumbo v0, "pending-ota-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_11

    :cond_5e
    move v0, v3

    :cond_5f
    :goto_5f
    const-string p2, "DevicePolicyManagerService"

    const-string/jumbo v2, "package"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_15e

    .line 448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected tag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 410
    :pswitch_7d
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    invoke-static {p1}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    goto/16 :goto_13e

    :pswitch_87
    const-string/jumbo p3, "start"

    .line 416
    invoke-interface {p1, v4, p3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "end"

    .line 417
    invoke-interface {p1, v4, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_13e

    if-eqz p1, :cond_13e

    .line 419
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    invoke-static {p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p3

    iput-object p3, v0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 420
    iget-object p3, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p1

    iput-object p1, p3, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 421
    iget-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p3, p1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-virtual {p3, p1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result p1

    if-eqz p1, :cond_13e

    const-string p1, "Invalid system update freeze record loaded"

    .line 422
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iput-object v4, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 424
    iput-object v4, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    goto/16 :goto_13e

    .line 429
    :pswitch_c1
    invoke-interface {p1, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "value"

    .line 430
    invoke-interface {p1, v4, p3, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 432
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13e

    .line 436
    :pswitch_d8
    invoke-interface {p1, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "size"

    .line 437
    invoke-interface {p1, v4, p3, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_e8
    if-ge v3, p3, :cond_106

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e8

    .line 442
    :cond_106
    iget-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p3, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    if-nez p3, :cond_113

    .line 443
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    .line 445
    :cond_113
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13e

    .line 405
    :pswitch_11b
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    const-string/jumbo p3, "userId"

    .line 406
    invoke-interface {p1, v4, p3, p2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    goto :goto_13e

    .line 401
    :pswitch_129
    iget-object p2, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    invoke-static {p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->readFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    move-result-object p1

    iput-object p1, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 402
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iput v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    goto :goto_13e

    .line 413
    :pswitch_136
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    invoke-static {p1}, Landroid/app/admin/SystemUpdateInfo;->readFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    :cond_13e
    :goto_13e
    return v1

    nop

    :sswitch_data_140
    .sparse-switch
        -0x7d4643cb -> :sswitch_54
        -0x786d7384 -> :sswitch_49
        -0x714796a2 -> :sswitch_40
        -0x1bbd56e3 -> :sswitch_35
        0x206e91eb -> :sswitch_2a
        0x4db6d447 -> :sswitch_1f
        0x6834f798 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_136
        :pswitch_129
        :pswitch_11b
        :pswitch_d8
        :pswitch_c1
        :pswitch_87
        :pswitch_7d
    .end packed-switch
.end method

.method public shouldWrite()Z
    .registers 2

    .line 348
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public writeInner(Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const-string v2, "device-owner"

    .line 355
    invoke-virtual {v0, p1, v2}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->writeToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V

    const-string v0, "device-owner-context"

    .line 356
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    :cond_1e
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    .line 363
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "device-owner-type"

    .line 364
    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "package"

    invoke-interface {p1, v1, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v4, "value"

    invoke-interface {p1, v1, v4, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_34

    .line 371
    :cond_65
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v0, :cond_7b

    const-string/jumbo v0, "system-update-policy"

    .line 372
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v2, p1}, Landroid/app/admin/SystemUpdatePolicy;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 374
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    :cond_7b
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz v0, :cond_87

    const-string/jumbo v2, "pending-ota-info"

    .line 378
    invoke-virtual {v0, p1, v2}, Landroid/app/admin/SystemUpdateInfo;->writeToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V

    .line 381
    :cond_87
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-nez v2, :cond_91

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v0, :cond_b8

    :cond_91
    const-string v0, "freeze-record"

    .line 382
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-eqz v2, :cond_a6

    .line 385
    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "start"

    .line 384
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    :cond_a6
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz p0, :cond_b5

    .line 388
    invoke-virtual {p0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "end"

    invoke-interface {p1, v1, v2, p0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 390
    :cond_b5
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b8
    return-void
.end method
