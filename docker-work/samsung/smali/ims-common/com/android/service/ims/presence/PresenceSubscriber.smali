.class public Lcom/android/service/ims/presence/PresenceSubscriber;
.super Lcom/android/service/ims/presence/PresenceBase;
.source "PresenceSubscriber.java"


# instance fields
.field private blacklist logger:Lcom/android/ims/internal/Logger;

.field private blacklist mAssociatedSubscription:I

.field private blacklist mAvailabilityRetryNumber:Ljava/lang/String;

.field private final blacklist mConfigRcsProvisionErrorOnSubscribeResponse:[Ljava/lang/String;

.field private final blacklist mConfigVolteProvisionErrorOnSubscribeResponse:[Ljava/lang/String;

.field private blacklist mSubscriber:Lcom/android/service/ims/presence/SubscribePublisher;

.field private final blacklist mSubscriberLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Lcom/android/service/ims/presence/SubscribePublisher;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .param p1, "subscriber"    # Lcom/android/service/ims/presence/SubscribePublisher;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "configVolteProvisionErrorOnSubscribeResponse"    # [Ljava/lang/String;
    .param p4, "configRcsProvisionErrorOnSubscribeResponse"    # [Ljava/lang/String;

    .line 66
    invoke-direct {p0, p2}, Lcom/android/service/ims/presence/PresenceBase;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->getLogger(Ljava/lang/String;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriberLock:Ljava/lang/Object;

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAvailabilityRetryNumber:Ljava/lang/String;

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAssociatedSubscription:I

    .line 67
    monitor-enter v0

    .line 68
    :try_start_1f
    iput-object p1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriber:Lcom/android/service/ims/presence/SubscribePublisher;

    .line 69
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_27

    .line 70
    iput-object p3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mConfigVolteProvisionErrorOnSubscribeResponse:[Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mConfigRcsProvisionErrorOnSubscribeResponse:[Ljava/lang/String;

    .line 73
    return-void

    .line 69
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private blacklist buildContactWithNoCapabilities(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 5
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 467
    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, v2}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    .line 470
    .local v0, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    invoke-virtual {v0}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v1

    return-object v1
.end method

.method private blacklist handleCapabilityUpdate(Lcom/android/service/ims/Task;Ljava/util/List;Z)V
    .registers 6
    .param p1, "task"    # Lcom/android/service/ims/Task;
    .param p3, "updateLastTimestamp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/service/ims/Task;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;Z)V"
        }
    .end annotation

    .line 475
    .local p2, "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    if-eqz p1, :cond_f

    iget-object v0, p1, Lcom/android/service/ims/Task;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    if-nez v0, :cond_7

    goto :goto_f

    .line 479
    :cond_7
    iget-object v0, p1, Lcom/android/service/ims/Task;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    iget v1, p1, Lcom/android/service/ims/Task;->mTaskId:I

    invoke-interface {v0, v1, p2, p3}, Lcom/android/service/ims/presence/ContactCapabilityResponse;->onCapabilitiesUpdated(ILjava/util/List;Z)V

    .line 480
    return-void

    .line 476
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "handleCapabilityUpdate, invalid listener!"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method private blacklist numberToTelString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Ljava/lang/String;

    .line 115
    move-object v0, p1

    .line 116
    .local v0, "formatedContact":Ljava/lang/String;
    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_22
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberToTelString formatedContact="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 121
    return-object v0
.end method

.method private blacklist numberToUriString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "number"    # Ljava/lang/String;

    .line 97
    move-object v0, p1

    .line 98
    .local v0, "formattedContact":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 99
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_6f

    const-string v2, "sip:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 100
    const-string v3, "tel:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 101
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "domain":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 103
    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_42

    goto :goto_5e

    .line 106
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    .line 104
    :cond_5e
    :goto_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .end local v4    # "domain":Ljava/lang/String;
    :cond_6f
    :goto_6f
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numberToUriString formattedContact="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

.method private blacklist translateResponse403(Ljava/lang/String;)I
    .registers 3
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .line 283
    if-nez p1, :cond_5

    .line 285
    const/16 v0, -0xa

    return v0

    .line 288
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 289
    const-string v0, "user not registered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 292
    const/4 v0, -0x5

    return v0

    .line 295
    :cond_13
    const-string v0, "not authorized for presence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 297
    const/4 v0, -0x6

    return v0

    .line 301
    :cond_1d
    const/4 v0, -0x7

    return v0
.end method

.method private blacklist translateResponseCode(ILjava/lang/String;)I
    .registers 7
    .param p1, "responseCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateResponseCode getSipResponseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 307
    const/16 v0, -0xa

    .line 309
    .local v0, "ret":I
    const/16 v1, 0x64

    if-lt p1, v1, :cond_58

    const/16 v1, 0x2bb

    if-le p1, v1, :cond_23

    goto :goto_58

    .line 315
    :cond_23
    sparse-switch p1, :sswitch_data_72

    .line 375
    const/16 v0, -0xa

    goto :goto_3f

    .line 369
    :sswitch_29
    const/4 v0, -0x4

    .line 370
    goto :goto_3f

    .line 363
    :sswitch_2b
    const/4 v0, -0x4

    .line 364
    goto :goto_3f

    .line 356
    :sswitch_2d
    const/4 v0, -0x4

    .line 357
    goto :goto_3f

    .line 348
    :sswitch_2f
    const/4 v0, -0x4

    .line 349
    goto :goto_3f

    .line 340
    :sswitch_31
    const/16 v0, -0x9

    .line 341
    goto :goto_3f

    .line 334
    :sswitch_34
    const/4 v0, -0x4

    .line 335
    goto :goto_3f

    .line 328
    :sswitch_36
    const/4 v0, -0x8

    .line 329
    goto :goto_3f

    .line 321
    :sswitch_38
    invoke-direct {p0, p2}, Lcom/android/service/ims/presence/PresenceSubscriber;->translateResponse403(Ljava/lang/String;)I

    move-result v0

    .line 322
    goto :goto_3f

    .line 317
    :sswitch_3d
    const/4 v0, 0x0

    .line 318
    nop

    .line 378
    :goto_3f
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateResponseCode ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 379
    return v0

    .line 310
    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal error code sipCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 311
    const/4 v0, -0x4

    .line 312
    return v0

    :sswitch_data_72
    .sparse-switch
        0xc8 -> :sswitch_3d
        0x193 -> :sswitch_38
        0x194 -> :sswitch_36
        0x198 -> :sswitch_34
        0x19d -> :sswitch_31
        0x1a7 -> :sswitch_2f
        0x1f4 -> :sswitch_2d
        0x1f7 -> :sswitch_2b
        0x25b -> :sswitch_29
    .end sparse-switch
.end method

.method private blacklist updateAvailabilityToUnknown(Lcom/android/service/ims/Task;)V
    .registers 9
    .param p1, "inTask"    # Lcom/android/service/ims/Task;

    .line 552
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 553
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "updateAvailabilityToUnknown mContext=null"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 554
    return-void

    .line 557
    :cond_c
    if-nez p1, :cond_16

    .line 558
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "updateAvailabilityToUnknown task=null"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 559
    return-void

    .line 562
    :cond_16
    instance-of v0, p1, Lcom/android/service/ims/presence/PresenceTask;

    if-nez v0, :cond_22

    .line 563
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "updateAvailabilityToUnknown not PresencTask"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 564
    return-void

    .line 567
    :cond_22
    move-object v0, p1

    check-cast v0, Lcom/android/service/ims/presence/PresenceTask;

    .line 569
    .local v0, "task":Lcom/android/service/ims/presence/PresenceTask;
    iget-object v1, v0, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    if-eqz v1, :cond_69

    iget-object v1, v0, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_2f

    goto :goto_69

    .line 574
    :cond_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v1, "presenceInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/RcsContactUceCapability;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    iget-object v3, v0, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5e

    .line 576
    iget-object v3, v0, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 577
    goto :goto_5b

    .line 580
    :cond_45
    iget-object v3, v0, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/service/ims/presence/PresenceUtils;->convertContactNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 581
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6, v5}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    .line 584
    .local v4, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    invoke-virtual {v4}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 587
    .end local v2    # "i":I
    :cond_5e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_68

    .line 588
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/service/ims/presence/PresenceSubscriber;->handleCapabilityUpdate(Lcom/android/service/ims/Task;Ljava/util/List;Z)V

    .line 590
    :cond_68
    return-void

    .line 570
    .end local v1    # "presenceInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :cond_69
    :goto_69
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "updateAvailabilityToUnknown no contacts"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 571
    return-void
.end method


# virtual methods
.method public blacklist handleAssociatedSubscriptionChanged(I)V
    .registers 3
    .param p1, "newSubId"    # I

    .line 90
    iget v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAssociatedSubscription:I

    if-ne v0, p1, :cond_5

    .line 91
    return-void

    .line 93
    :cond_5
    iput p1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAssociatedSubscription:I

    .line 94
    return-void
.end method

.method public blacklist onCommandStatusUpdated(III)V
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "requestId"    # I
    .param p3, "resultCode"    # I

    .line 531
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/service/ims/TaskManager;->getTask(I)Lcom/android/service/ims/Task;

    move-result-object v0

    .line 532
    .local v0, "taskTmp":Lcom/android/service/ims/Task;
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCmdStatus resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 533
    const/4 v1, 0x0

    .line 534
    .local v1, "task":Lcom/android/service/ims/presence/PresenceTask;
    if-eqz v0, :cond_40

    instance-of v2, v0, Lcom/android/service/ims/presence/PresenceTask;

    if-eqz v2, :cond_40

    .line 535
    move-object v1, v0

    check-cast v1, Lcom/android/service/ims/presence/PresenceTask;

    .line 536
    iput p2, v1, Lcom/android/service/ims/presence/PresenceTask;->mSipRequestId:I

    .line 537
    iput p3, v1, Lcom/android/service/ims/presence/PresenceTask;->mCmdStatus:I

    .line 538
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v2

    iget v3, v1, Lcom/android/service/ims/presence/PresenceTask;->mTaskId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/service/ims/TaskManager;->putTask(ILcom/android/service/ims/Task;)V

    .line 542
    if-eqz p3, :cond_40

    iget-object v2, v1, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    if-eqz v2, :cond_40

    .line 543
    invoke-direct {p0, v1}, Lcom/android/service/ims/presence/PresenceSubscriber;->updateAvailabilityToUnknown(Lcom/android/service/ims/Task;)V

    .line 547
    :cond_40
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p3, v2}, Lcom/android/service/ims/presence/PresenceSubscriber;->handleCallback(Lcom/android/service/ims/Task;IZ)V

    .line 548
    return-void
.end method

.method public blacklist onSipResponse(IILjava/lang/String;)V
    .registers 14
    .param p1, "requestId"    # I
    .param p2, "responseCode"    # I
    .param p3, "reasonPhrase"    # Ljava/lang/String;

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "subscriber":Lcom/android/service/ims/presence/SubscribePublisher;
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriberLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_4
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriber:Lcom/android/service/ims/presence/SubscribePublisher;

    move-object v0, v2

    .line 386
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_171

    .line 388
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mConfigVolteProvisionErrorOnSubscribeResponse:[Ljava/lang/String;

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/service/ims/presence/PresenceSubscriber;->isInConfigList(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3c

    .line 390
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volte provision sipCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phrase="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 391
    if-eqz v0, :cond_38

    .line 392
    invoke-interface {v0, v2}, Lcom/android/service/ims/presence/SubscribePublisher;->updatePublisherState(I)V

    .line 395
    :cond_38
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresenceSubscriber;->notifyDm()V

    goto :goto_6c

    .line 396
    :cond_3c
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mConfigRcsProvisionErrorOnSubscribeResponse:[Ljava/lang/String;

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/service/ims/presence/PresenceSubscriber;->isInConfigList(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 398
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rcs proRcsPresence.vision sipCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phrase="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 400
    if-eqz v0, :cond_6c

    .line 401
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/service/ims/presence/SubscribePublisher;->updatePublisherState(I)V

    .line 405
    :cond_6c
    :goto_6c
    invoke-direct {p0, p2, p3}, Lcom/android/service/ims/presence/PresenceSubscriber;->translateResponseCode(ILjava/lang/String;)I

    move-result v1

    .line 406
    .local v1, "errorCode":I
    iget-object v3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSipResponse errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 408
    const/4 v3, -0x5

    if-ne v1, v3, :cond_98

    .line 409
    iget-object v4, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v5, "setPublishState to unknown for subscribe error 403 not registered"

    invoke-virtual {v4, v5}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 410
    if-eqz v0, :cond_98

    .line 411
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Lcom/android/service/ims/presence/SubscribePublisher;->updatePublisherState(I)V

    .line 415
    :cond_98
    const/4 v4, -0x6

    if-ne v1, v4, :cond_a2

    .line 416
    iget-object v4, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v5, "ResultCode.SUBSCRIBE_NOT_AUTHORIZED_FOR_PRESENCE"

    invoke-virtual {v4, v5}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 419
    :cond_a2
    const/4 v4, -0x7

    if-ne v1, v4, :cond_ac

    .line 420
    iget-object v4, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v5, "ResultCode.SUBSCRIBE_FORBIDDEN"

    invoke-virtual {v4, v5}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 424
    :cond_ac
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/service/ims/TaskManager;->getTaskByRequestId(I)Lcom/android/service/ims/Task;

    move-result-object v4

    .line 425
    .local v4, "task":Lcom/android/service/ims/Task;
    iget-object v5, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSipResponse task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 426
    if-eqz v4, :cond_db

    .line 427
    iput p2, v4, Lcom/android/service/ims/Task;->mSipResponseCode:I

    .line 428
    iput-object p3, v4, Lcom/android/service/ims/Task;->mSipReasonPhrase:Ljava/lang/String;

    .line 429
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v5

    iget v6, v4, Lcom/android/service/ims/Task;->mTaskId:I

    invoke-virtual {v5, v6, v4}, Lcom/android/service/ims/TaskManager;->putTask(ILcom/android/service/ims/Task;)V

    .line 432
    :cond_db
    const/4 v5, 0x0

    if-ne v1, v3, :cond_10c

    if-eqz v4, :cond_10c

    iget v3, v4, Lcom/android/service/ims/Task;->mCmdId:I

    if-ne v3, v2, :cond_10c

    .line 434
    move-object v2, v4

    check-cast v2, Lcom/android/service/ims/presence/PresenceTask;

    iget-object v2, v2, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    .line 435
    .local v2, "contacts":[Ljava/lang/String;
    if-eqz v2, :cond_f2

    array-length v3, v2

    if-lez v3, :cond_f2

    .line 436
    aget-object v3, v2, v5

    iput-object v3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAvailabilityRetryNumber:Ljava/lang/String;

    .line 438
    :cond_f2
    iget-object v3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retry to get availability for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAvailabilityRetryNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 443
    .end local v2    # "contacts":[Ljava/lang/String;
    :cond_10c
    const/4 v2, -0x8

    if-ne v1, v2, :cond_164

    if-eqz v4, :cond_164

    move-object v2, v4

    check-cast v2, Lcom/android/service/ims/presence/PresenceTask;

    iget-object v2, v2, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    if-eqz v2, :cond_164

    .line 445
    move-object v2, v4

    check-cast v2, Lcom/android/service/ims/presence/PresenceTask;

    iget-object v2, v2, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    .line 446
    .restart local v2    # "contacts":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v3, "contactCapabilities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/RcsContactUceCapability;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_123
    array-length v7, v2

    if-ge v6, v7, :cond_15f

    .line 449
    aget-object v7, v2, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12f

    .line 450
    goto :goto_15c

    .line 452
    :cond_12f
    iget-object v7, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSipResponse: contact= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", not found."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 454
    aget-object v7, v2, v6

    .line 455
    invoke-static {v7}, Lcom/android/service/ims/presence/PresenceUtils;->convertContactNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 454
    invoke-direct {p0, v7}, Lcom/android/service/ims/presence/PresenceSubscriber;->buildContactWithNoCapabilities(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :goto_15c
    add-int/lit8 v6, v6, 0x1

    goto :goto_123

    .line 457
    .end local v6    # "i":I
    :cond_15f
    const/4 v6, 0x1

    invoke-direct {p0, v4, v3, v6}, Lcom/android/service/ims/presence/PresenceSubscriber;->handleCapabilityUpdate(Lcom/android/service/ims/Task;Ljava/util/List;Z)V

    .end local v2    # "contacts":[Ljava/lang/String;
    .end local v3    # "contactCapabilities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/RcsContactUceCapability;>;"
    goto :goto_16c

    .line 459
    :cond_164
    const/16 v2, -0xa

    if-ne v1, v2, :cond_16c

    .line 460
    invoke-direct {p0, v4}, Lcom/android/service/ims/presence/PresenceSubscriber;->updateAvailabilityToUnknown(Lcom/android/service/ims/Task;)V

    goto :goto_16d

    .line 459
    :cond_16c
    :goto_16c
    nop

    .line 463
    :goto_16d
    invoke-virtual {p0, v4, v1, v5}, Lcom/android/service/ims/presence/PresenceSubscriber;->handleCallback(Lcom/android/service/ims/Task;IZ)V

    .line 464
    return-void

    .line 386
    .end local v1    # "errorCode":I
    .end local v4    # "task":Lcom/android/service/ims/Task;
    :catchall_171
    move-exception v2

    :try_start_172
    monitor-exit v1
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw v2
.end method

.method public blacklist removePresenceSubscriber()V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriberLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Remove PresenceSubscriber"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriber:Lcom/android/service/ims/presence/SubscribePublisher;

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist requestAvailability(Ljava/lang/String;Lcom/android/service/ims/presence/ContactCapabilityResponse;Z)I
    .registers 13
    .param p1, "contactNumber"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/service/ims/presence/ContactCapabilityResponse;
    .param p3, "forceToNetwork"    # Z

    .line 202
    invoke-static {}, Lcom/android/ims/internal/ContactNumberUtils;->getDefault()Lcom/android/ims/internal/ContactNumberUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ContactNumberUtils;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "formatedContact":Ljava/lang/String;
    invoke-static {}, Lcom/android/ims/internal/ContactNumberUtils;->getDefault()Lcom/android/ims/internal/ContactNumberUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ims/internal/ContactNumberUtils;->validate(Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, "ret":I
    sget v2, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_VALID:I

    if-eq v1, v2, :cond_15

    .line 205
    return v1

    .line 208
    :cond_15
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAssociatedSubscription:I

    invoke-static {v2, v3}, Lcom/android/service/ims/RcsSettingUtils;->hasUserEnabledContactDiscovery(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 209
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "requestCapability request has been denied due to contact discovery being disabled by the user"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 211
    const/4 v2, -0x1

    return v2

    .line 214
    :cond_28
    if-nez p3, :cond_8f

    .line 215
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "check if we can use the value in cache"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 216
    iget v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAssociatedSubscription:I

    .line 217
    invoke-static {v2}, Lcom/android/service/ims/RcsSettingUtils;->getAvailabilityCacheExpiration(I)I

    move-result v2

    .line 218
    .local v2, "availabilityExpire":I
    if-lez v2, :cond_3c

    mul-int/lit16 v3, v2, 0x3e8

    goto :goto_3f

    .line 219
    :cond_3c
    const v3, 0xea60

    :goto_3f
    move v2, v3

    .line 220
    iget-object v3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAvailability availabilityExpire="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/service/ims/TaskManager;->clearTimeoutAvailabilityTask(J)V

    .line 224
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/service/ims/TaskManager;->getAvailabilityTaskByContact(Ljava/lang/String;)Lcom/android/service/ims/presence/PresenceAvailabilityTask;

    move-result-object v3

    .line 225
    .local v3, "task":Lcom/android/service/ims/Task;
    if-eqz v3, :cond_8f

    instance-of v4, v3, Lcom/android/service/ims/presence/PresenceAvailabilityTask;

    if-eqz v4, :cond_8f

    .line 226
    move-object v4, v3

    check-cast v4, Lcom/android/service/ims/presence/PresenceAvailabilityTask;

    .line 227
    .local v4, "availabilityTask":Lcom/android/service/ims/presence/PresenceAvailabilityTask;
    invoke-virtual {v4}, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->getNotifyTimestamp()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_85

    .line 229
    iget-object v5, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v6, "requestAvailability: the request is pending in queue"

    invoke-virtual {v5, v6}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 230
    const/16 v5, -0x13

    return v5

    .line 233
    :cond_85
    iget-object v5, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v6, "requestAvailability: the prevous valuedoesn\'t be expired yet"

    invoke-virtual {v5, v6}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 234
    const/16 v5, -0x14

    return v5

    .line 240
    .end local v2    # "availabilityExpire":I
    .end local v3    # "task":Lcom/android/service/ims/Task;
    .end local v4    # "availabilityTask":Lcom/android/service/ims/presence/PresenceAvailabilityTask;
    :cond_8f
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 241
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_12f

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_a5

    goto/16 :goto_12f

    .line 247
    :cond_a5
    const/4 v3, 0x0

    .line 248
    .local v3, "subscriber":Lcom/android/service/ims/presence/SubscribePublisher;
    iget-object v4, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriberLock:Ljava/lang/Object;

    monitor-enter v4

    .line 249
    :try_start_a9
    iget-object v5, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriber:Lcom/android/service/ims/presence/SubscribePublisher;

    move-object v3, v5

    .line 250
    monitor-exit v4
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_12c

    .line 252
    if-nez v3, :cond_b8

    .line 253
    iget-object v4, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v5, "requestAvailability Subscribe not registered"

    invoke-virtual {v4, v5}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 254
    const/4 v4, -0x5

    return v4

    .line 257
    :cond_b8
    invoke-interface {v3}, Lcom/android/service/ims/presence/SubscribePublisher;->getStackStatusForCapabilityRequest()I

    move-result v1

    .line 258
    if-gez v1, :cond_d7

    .line 259
    iget-object v4, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestAvailability="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 260
    return v1

    .line 264
    :cond_d7
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v4

    invoke-virtual {v4, v0, p2}, Lcom/android/service/ims/TaskManager;->addAvailabilityTask(Ljava/lang/String;Lcom/android/service/ims/presence/ContactCapabilityResponse;)I

    move-result v4

    .line 267
    .local v4, "taskId":I
    invoke-direct {p0, v0}, Lcom/android/service/ims/presence/PresenceSubscriber;->numberToUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v5, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAvailabilityTask formatedContact="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 271
    invoke-interface {v3, v0, v4}, Lcom/android/service/ims/presence/SubscribePublisher;->requestAvailability(Ljava/lang/String;I)I

    move-result v1

    .line 272
    if-gez v1, :cond_12a

    .line 273
    iget-object v5, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestAvailability ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remove taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/service/ims/TaskManager;->removeTask(I)V

    .line 277
    :cond_12a
    move v1, v4

    .line 279
    return v1

    .line 250
    .end local v4    # "taskId":I
    :catchall_12c
    move-exception v5

    :try_start_12d
    monitor-exit v4
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    throw v5

    .line 242
    .end local v3    # "subscriber":Lcom/android/service/ims/presence/SubscribePublisher;
    :cond_12f
    :goto_12f
    iget-object v3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v4, "requestAvailability return ERROR_SERVICE_NOT_AVAILABLE for it is not LTE network"

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 244
    const/4 v3, -0x3

    return v3
.end method

.method public blacklist requestCapability(Ljava/util/List;Lcom/android/service/ims/presence/ContactCapabilityResponse;)I
    .registers 16
    .param p2, "listener"    # Lcom/android/service/ims/presence/ContactCapabilityResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/service/ims/presence/ContactCapabilityResponse;",
            ")I"
        }
    .end annotation

    .line 127
    .local p1, "contactsNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 128
    .local v0, "subscriber":Lcom/android/service/ims/presence/SubscribePublisher;
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriberLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_4
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriber:Lcom/android/service/ims/presence/SubscribePublisher;

    move-object v0, v2

    .line 130
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14c

    .line 132
    if-nez v0, :cond_13

    .line 133
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "requestCapability Subscribe not registered"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 134
    const/4 v1, -0x5

    return v1

    .line 137
    :cond_13
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAssociatedSubscription:I

    invoke-static {v1, v2}, Lcom/android/service/ims/RcsSettingUtils;->hasUserEnabledContactDiscovery(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 138
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "requestCapability request has been denied due to contact discovery being disabled by the user"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 140
    const/4 v1, -0x1

    return v1

    .line 143
    :cond_26
    invoke-interface {v0}, Lcom/android/service/ims/presence/SubscribePublisher;->getStackStatusForCapabilityRequest()I

    move-result v1

    .line 144
    .local v1, "ret":I
    if-gez v1, :cond_45

    .line 145
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCapability ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 146
    return v1

    .line 149
    :cond_45
    if-eqz p1, :cond_149

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4f

    goto/16 :goto_149

    .line 154
    :cond_4f
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "check contact size ..."

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 155
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAssociatedSubscription:I

    invoke-static {v3}, Lcom/android/service/ims/RcsSettingUtils;->getMaxNumbersInRCL(I)I

    move-result v3

    if-le v2, v3, :cond_81

    .line 156
    const/16 v1, -0x9

    .line 157
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCapability contctNumber size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 158
    return v1

    .line 161
    :cond_81
    invoke-static {}, Lcom/android/ims/internal/ContactNumberUtils;->getDefault()Lcom/android/ims/internal/ContactNumberUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/ims/internal/ContactNumberUtils;->format(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "formatedNumbers":[Ljava/lang/String;
    invoke-static {}, Lcom/android/ims/internal/ContactNumberUtils;->getDefault()Lcom/android/ims/internal/ContactNumberUtils;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/ims/internal/ContactNumberUtils;->validate([Ljava/lang/String;)I

    move-result v9

    .line 163
    .local v9, "formatResult":I
    sget v3, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_VALID:I

    if-eq v9, v3, :cond_b0

    .line 164
    iget-object v3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestCapability formatResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 165
    const/16 v3, -0xb

    return v3

    .line 168
    :cond_b0
    array-length v3, v2

    new-array v10, v3, [Ljava/lang/String;

    .line 169
    .local v10, "formatedContacts":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b4
    array-length v4, v10

    if-ge v3, v4, :cond_c2

    .line 170
    aget-object v4, v2, v3

    invoke-direct {p0, v4}, Lcom/android/service/ims/presence/PresenceSubscriber;->numberToTelString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_b4

    .line 173
    .end local v3    # "i":I
    :cond_c2
    iget v3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAssociatedSubscription:I

    invoke-static {v3}, Lcom/android/service/ims/RcsSettingUtils;->getCapabPollListSubExp(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 174
    .local v3, "timeout":J
    iget v5, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAssociatedSubscription:I

    invoke-static {v5}, Lcom/android/service/ims/RcsSettingUtils;->getSIPT1Timer(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 180
    const-wide/16 v5, 0xbb8

    add-long v11, v3, v5

    .line 182
    .end local v3    # "timeout":J
    .local v11, "timeout":J
    iget-object v3, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add to task manager, formatedNumbers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    invoke-static {v2}, Lcom/android/service/ims/presence/PresenceUtils;->toContactString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mContext:Landroid/content/Context;

    move-object v5, v2

    move-object v6, p2

    move-wide v7, v11

    invoke-virtual/range {v3 .. v8}, Lcom/android/service/ims/TaskManager;->addCapabilityTask(Landroid/content/Context;[Ljava/lang/String;Lcom/android/service/ims/presence/ContactCapabilityResponse;J)I

    move-result v3

    .line 186
    .local v3, "taskId":I
    iget-object v4, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 188
    invoke-interface {v0, v10, v3}, Lcom/android/service/ims/presence/SubscribePublisher;->requestCapability([Ljava/lang/String;I)I

    move-result v1

    .line 189
    if-gez v1, :cond_147

    .line 190
    iget-object v4, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestCapability ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remove taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/service/ims/TaskManager;->removeTask(I)V

    .line 194
    :cond_147
    move v1, v3

    .line 196
    return v1

    .line 150
    .end local v2    # "formatedNumbers":[Ljava/lang/String;
    .end local v3    # "taskId":I
    .end local v9    # "formatResult":I
    .end local v10    # "formatedContacts":[Ljava/lang/String;
    .end local v11    # "timeout":J
    :cond_149
    :goto_149
    const/16 v1, -0xb

    .line 151
    return v1

    .line 130
    .end local v1    # "ret":I
    :catchall_14c
    move-exception v2

    :try_start_14d
    monitor-exit v1
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    throw v2
.end method

.method public blacklist retryToGetAvailability()V
    .registers 4

    .line 483
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAvailabilityRetryNumber:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 484
    return-void

    .line 486
    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/service/ims/presence/PresenceSubscriber;->requestAvailability(Ljava/lang/String;Lcom/android/service/ims/presence/ContactCapabilityResponse;Z)I

    .line 488
    iput-object v2, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mAvailabilityRetryNumber:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public blacklist updatePresence(Landroid/telephony/ims/RcsContactUceCapability;)V
    .registers 7
    .param p1, "capabilities"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 492
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 493
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "updatePresence mContext == null"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 494
    return-void

    .line 497
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, "presenceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactUceCapability;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "contactNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/service/ims/TaskManager;->onTerminated(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v2

    .line 505
    invoke-virtual {v2, v1}, Lcom/android/service/ims/TaskManager;->getAvailabilityTaskByContact(Ljava/lang/String;)Lcom/android/service/ims/presence/PresenceAvailabilityTask;

    move-result-object v2

    .line 506
    .local v2, "availabilityTask":Lcom/android/service/ims/presence/PresenceAvailabilityTask;
    if-eqz v2, :cond_30

    .line 507
    invoke-virtual {v2}, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->updateNotifyTimestamp()V

    .line 509
    :cond_30
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/service/ims/TaskManager;->getTaskForSingleContactQuery(Ljava/lang/String;)Lcom/android/service/ims/Task;

    move-result-object v3

    .line 510
    .local v3, "task":Lcom/android/service/ims/Task;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/android/service/ims/presence/PresenceSubscriber;->handleCapabilityUpdate(Lcom/android/service/ims/Task;Ljava/util/List;Z)V

    .line 511
    return-void
.end method

.method public blacklist updatePresenceSubscriber(Lcom/android/service/ims/presence/SubscribePublisher;)V
    .registers 5
    .param p1, "subscriber"    # Lcom/android/service/ims/presence/SubscribePublisher;

    .line 76
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriberLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Update PresencePublisher"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mSubscriber:Lcom/android/service/ims/presence/SubscribePublisher;

    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist updatePresences(ILjava/util/List;ZLjava/lang/String;)V
    .registers 7
    .param p1, "requestId"    # I
    .param p3, "isTerminated"    # Z
    .param p4, "terminatedReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 515
    .local p2, "contactsCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 516
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceSubscriber;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "updatePresences: mContext == null"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 517
    return-void

    .line 520
    :cond_c
    if-eqz p3, :cond_15

    .line 521
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcom/android/service/ims/TaskManager;->onTerminated(ILjava/lang/String;)V

    .line 524
    :cond_15
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/service/ims/TaskManager;->getTaskByRequestId(I)Lcom/android/service/ims/Task;

    move-result-object v0

    .line 525
    .local v0, "task":Lcom/android/service/ims/Task;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_25

    if-eqz v0, :cond_29

    .line 526
    :cond_25
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/service/ims/presence/PresenceSubscriber;->handleCapabilityUpdate(Lcom/android/service/ims/Task;Ljava/util/List;Z)V

    .line 528
    :cond_29
    return-void
.end method
