.class public Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
.super Ljava/lang/Object;
.source "DeviceCapabilityInfo.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAirplaneMode:Z

.field private blacklist mLastRegistrationFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastRegistrationOverrideFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private blacklist mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private blacklist mMmtelAssociatedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMmtelNetworkRegType:I

.field private blacklist mMmtelRegistered:Z

.field private blacklist mMobileData:Z

.field private final blacklist mOverrideAddFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOverrideRemoveFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPresenceCapable:Z

.field private blacklist mRcsAssociatedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRcsNetworkRegType:I

.field private blacklist mRcsRegistered:Z

.field private blacklist mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

.field private final blacklist mSubId:I

.field private blacklist mTtyPreferredMode:I

.field private blacklist mVtSetting:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceCapabilityInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I[Ljava/lang/String;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "capToRegistrationMap"    # [Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    .line 109
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    .line 110
    invoke-static {p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->fromCarrierConfig([Ljava/lang/String;)Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 111
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->reset()V

    .line 112
    return-void
.end method

.method private blacklist addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V
    .registers 5
    .param p1, "presenceBuilder"    # Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .param p2, "tupleBuilder"    # Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .param p3, "contactUri"    # Landroid/net/Uri;

    .line 594
    invoke-virtual {p2, p3}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setContactUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 595
    return-void
.end method

.method private declared-synchronized blacklist deepCopyCapabilities(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 5
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter p0

    .line 633
    :try_start_1
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 634
    .local v0, "mmTelCapabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 635
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 637
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_10
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 638
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 640
    :cond_1a
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 641
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 643
    :cond_24
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 644
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 646
    :cond_2f
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 647
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 649
    :cond_3a
    monitor-exit p0

    return-object v0

    .line 632
    .end local v0    # "mmTelCapabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .end local p1    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .registers 5
    .param p1, "reference"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;)",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;"
        }
    .end annotation

    .line 571
    .local p2, "refSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 572
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 571
    return-object v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 670
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    return-object v0
.end method

.method private blacklist getOptionsCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 577
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getDeviceContactUri(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Z)Landroid/net/Uri;

    move-result-object v0

    .line 578
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_10

    .line 579
    const-string v1, "getOptionsCapabilities: uri is empty"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logw(Ljava/lang/String;)V

    .line 580
    const/4 v1, 0x0

    return-object v1

    .line 583
    :cond_10
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationFeatureTags()Ljava/util/Set;

    move-result-object v1

    .line 585
    .local v1, "capableFromReg":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;-><init>(Landroid/net/Uri;I)V

    move-object v8, v2

    .line 586
    .local v8, "optionsBuilder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->setRequestResult(I)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 587
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVolteCapability()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVtCapability()Z

    move-result v4

    .line 588
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapable()Z

    move-result v5

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasCallComposerCapability()Z

    move-result v6

    .line 587
    move-object v2, v8

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lcom/android/ims/rcs/uce/util/FeatureTags;->addFeatureTags(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;ZZZZLjava/util/Set;)V

    .line 589
    invoke-virtual {v8}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getPresenceCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .line 516
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getDeviceContactUri(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Z)Landroid/net/Uri;

    move-result-object v0

    .line 517
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_10

    .line 518
    const-string v1, "getPresenceCapabilities: uri is empty"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logw(Ljava/lang/String;)V

    .line 519
    const/4 v1, 0x0

    return-object v1

    .line 521
    :cond_10
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 522
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationCapabilities()Ljava/util/Set;

    move-result-object v2

    .line 524
    .local v2, "capableFromReg":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    new-instance v3, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v1, v4}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    move-object v1, v3

    .line 528
    .local v1, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    sget-object v3, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_PRESENCE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v3, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v3

    .line 530
    .local v3, "presDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v4

    invoke-direct {p0, v1, v4, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 531
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 534
    sget-object v4, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_MMTEL_VOICE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v4, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v4

    .line 536
    .local v4, "voiceDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    sget-object v5, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_MMTEL_VOICE_VIDEO:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v5, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v5

    .line 538
    .local v5, "vtDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVolteCapability()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVtCapability()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 539
    move-object v6, v5

    goto :goto_48

    :cond_47
    move-object v6, v4

    .line 540
    .local v6, "descToUse":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    :goto_48
    new-instance v7, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    .line 541
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVolteCapability()Z

    move-result v8

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVtCapability()Z

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;-><init>(ZZ)V

    .line 542
    const-string v8, "full"

    invoke-virtual {v7, v8}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->addSupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    move-result-object v7

    .line 543
    .local v7, "servCaps":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    invoke-virtual {v6}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v8

    .line 544
    invoke-virtual {v8, v7}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v8

    .line 543
    invoke-direct {p0, v1, v8, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 545
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 546
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 549
    sget-object v8, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CALL_COMPOSER_MMTEL:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v8, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v8

    .line 551
    .local v8, "composerDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasCallComposerCapability()Z

    move-result v9

    if-eqz v9, :cond_83

    .line 552
    invoke-virtual {v8}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v9

    invoke-direct {p0, v1, v9, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 554
    :cond_83
    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 558
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 559
    .local v10, "capability":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-virtual {v10}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v11

    invoke-direct {p0, v1, v11, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 560
    .end local v10    # "capability":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    goto :goto_8a

    .line 562
    :cond_9e
    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v9

    return-object v9
.end method

.method private declared-synchronized blacklist hasCallComposerCapability()Z
    .registers 4

    monitor-enter p0

    .line 611
    :try_start_1
    const-string v0, "+g.gsma.callcomposer"

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-eqz v1, :cond_11

    const/16 v2, 0x10

    .line 612
    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_11
    const/4 v1, 0x0

    .line 611
    :goto_12
    invoke-direct {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->overrideCapability(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return v0

    .line 610
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist hasVolteCapability()Z
    .registers 4

    monitor-enter p0

    .line 599
    :try_start_1
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 600
    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_10

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_f
    const/4 v2, 0x0

    .line 599
    :goto_10
    invoke-direct {p0, v0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->overrideCapability(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return v0

    .line 598
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist hasVtCapability()Z
    .registers 4

    monitor-enter p0

    .line 605
    :try_start_1
    const-string v0, "video"

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-eqz v1, :cond_10

    const/4 v2, 0x2

    .line 606
    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_10
    const/4 v1, 0x0

    .line 605
    :goto_11
    invoke-direct {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->overrideCapability(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return v0

    .line 604
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist isCallComposerAvailable(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 3
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 494
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isViWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 4
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 489
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 490
    invoke-virtual {p2, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 489
    :goto_c
    return v0
.end method

.method private blacklist isVoWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 5
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 479
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    .line 480
    invoke-virtual {p2, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 479
    :goto_c
    return v0
.end method

.method private blacklist isVolteAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 5
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 474
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 475
    invoke-virtual {p2, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 474
    :goto_b
    return v0
.end method

.method private blacklist isVtAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 5
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 484
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/4 v1, 0x2

    .line 485
    invoke-virtual {p2, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 484
    :goto_c
    return v0
.end method

.method static synthetic blacklist lambda$getCustomizedDescription$0(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)Z
    .registers 4
    .param p0, "reference"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .param p1, "s"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 571
    iget-object v0, p1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 571
    :goto_17
    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 653
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[D] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 658
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[I] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 663
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method private declared-synchronized blacklist overrideCapability(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "originalCap"    # Z

    monitor-enter p0

    .line 621
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_19

    if-eqz v0, :cond_c

    .line 622
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 625
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_19

    if-eqz v0, :cond_17

    .line 626
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 629
    :cond_17
    monitor-exit p0

    return p2

    .line 620
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTag":Ljava/lang/String;
    .end local p2    # "originalCap":Z
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist updateImsRegistrationFeatureTags(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 372
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 373
    .local v0, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 374
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 375
    monitor-exit p0

    return-object v0

    .line 371
    .end local v0    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist updateRegistration(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 358
    .local p1, "baseTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsRegistrationFeatureTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 359
    .local v0, "updatedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 360
    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    .line 361
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->updateImsRegistration(Ljava/util/Set;)V

    .line 362
    const/4 v1, 0x1

    return v1

    .line 364
    :cond_15
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public declared-synchronized blacklist addRegistrationOverrideCapabilities(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 330
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "override - add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 332
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 334
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return v0

    .line 329
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist clearRegistrationOverrideCapabilities()Z
    .registers 2

    monitor-enter p0

    .line 346
    :try_start_1
    const-string v0, "override - clear"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 348
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 350
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return v0

    .line 345
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 675
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 676
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    const-string v1, "DeviceCapabilityInfo :"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 679
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->dump(Ljava/io/PrintWriter;)V

    .line 681
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 683
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 684
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 686
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 687
    return-void
.end method

.method public declared-synchronized blacklist getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 5
    .param p1, "mechanism"    # I
    .param p2, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 503
    packed-switch p1, :pswitch_data_2e

    .line 509
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_15

    .line 507
    .restart local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getOptionsCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_13

    monitor-exit p0

    return-object v0

    .line 505
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :pswitch_d
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getPresenceCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 502
    .end local p1    # "mechanism":I
    .end local p2    # "context":Landroid/content/Context;
    :catchall_13
    move-exception p1

    goto :goto_2c

    .line 509
    .restart local p1    # "mechanism":I
    .restart local p2    # "context":Landroid/content/Context;
    :goto_15
    :try_start_15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceCapabilities: invalid mechanism "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logw(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_13

    .line 510
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 502
    .end local p1    # "mechanism":I
    .end local p2    # "context":Landroid/content/Context;
    :goto_2c
    monitor-exit p0

    throw p1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method

.method public declared-synchronized blacklist getImsAssociatedUri(Z)Landroid/net/Uri;
    .registers 6
    .param p1, "preferTelUri"    # Z

    monitor-enter p0

    .line 301
    if-eqz p1, :cond_55

    .line 302
    :try_start_3
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 303
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 304
    .local v1, "rcsAssociatedUri":Landroid/net/Uri;
    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_7d

    if-eqz v2, :cond_2b

    .line 305
    monitor-exit p0

    return-object v1

    .line 307
    .end local v1    # "rcsAssociatedUri":Landroid/net/Uri;
    :cond_2b
    goto :goto_11

    .line 309
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 310
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 311
    .local v1, "mmtelAssociatedUri":Landroid/net/Uri;
    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_7d

    if-eqz v2, :cond_54

    .line 312
    monitor-exit p0

    return-object v1

    .line 314
    .end local v1    # "mmtelAssociatedUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_54
    goto :goto_3a

    .line 320
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_68

    .line 321
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_66
    .catchall {:try_start_55 .. :try_end_66} :catchall_7d

    monitor-exit p0

    return-object v0

    .line 322
    :cond_68
    :try_start_68
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 323
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_7d

    monitor-exit p0

    return-object v0

    .line 325
    :cond_7a
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 300
    .end local p1    # "preferTelUri":Z
    :catchall_7d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getImsAssociatedUrisAsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 282
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 283
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 284
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 285
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 287
    :cond_19
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 281
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getMmtelAssociatedUri()Landroid/net/Uri;
    .registers 3

    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 202
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    monitor-exit p0

    return-object v0

    .line 204
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_14
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 200
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getRcsAssociatedUri()Landroid/net/Uri;
    .registers 3

    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 271
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    monitor-exit p0

    return-object v0

    .line 273
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_14
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 269
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isImsRegistered()Z
    .registers 2

    monitor-enter p0

    .line 147
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    .line 147
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isPresenceCapable()Z
    .registers 2

    monitor-enter p0

    .line 470
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPresenceCapable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 470
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist removeRegistrationOverrideCapabilities(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 338
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "override - remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 340
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 342
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return v0

    .line 337
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist reset()V
    .registers 3

    monitor-enter p0

    .line 118
    :try_start_1
    const-string v0, "reset"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    .line 121
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    .line 122
    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    .line 123
    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I

    .line 124
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mAirplaneMode:Z

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z

    .line 127
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 128
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    .line 129
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 130
    monitor-exit p0

    return-void

    .line 117
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist updateAirplaneMode(Z)Z
    .registers 4
    .param p1, "state"    # Z

    monitor-enter p0

    .line 396
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mAirplaneMode:Z

    if-eq v0, p1, :cond_2c

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Airplane mode changes from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 398
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mAirplaneMode:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    .line 399
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 401
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_2c
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 395
    .end local p1    # "state":Z
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateCapabilityRegistrationTrackerMap([Ljava/lang/String;)Z
    .registers 5
    .param p1, "newMap"    # [Ljava/lang/String;

    monitor-enter p0

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationFeatureTags()Ljava/util/Set;

    move-result-object v0

    .line 139
    .local v0, "oldTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->fromCarrierConfig([Ljava/lang/String;)Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 140
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->updateImsRegistration(Ljava/util/Set;)V

    .line 141
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 142
    .local v1, "changed":Z
    if-eqz v1, :cond_25

    const-string v2, "Carrier Config Change resulted in associated FT list change"

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 143
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_25
    monitor-exit p0

    return v1

    .line 137
    .end local v0    # "oldTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "changed":Z
    .end local p1    # "newMap":[Ljava/lang/String;
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateImsMmtelRegistered(I)V
    .registers 5
    .param p1, "type"    # I

    monitor-enter p0

    .line 154
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "IMS MMTEL registered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changes type from "

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 160
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    if-nez v1, :cond_35

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    .line 164
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_35
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    if-eq v1, p1, :cond_3b

    .line 165
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 167
    :cond_3b
    monitor-exit p0

    return-void

    .line 153
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local p1    # "type":I
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateImsMmtelUnregistered()V
    .registers 3

    monitor-enter p0

    .line 173
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS MMTEL unregistered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 174
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    if-eqz v0, :cond_20

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    .line 177
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_20
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 178
    monitor-exit p0

    return-void

    .line 172
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist updateImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)Z
    .registers 6
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    monitor-enter p0

    .line 212
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "IMS RCS registered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changes type from "

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "changed":Z
    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    if-nez v2, :cond_3b

    .line 220
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    .line 221
    const/4 v1, 0x1

    .line 224
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_3b
    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v3

    if-eq v2, v3, :cond_4a

    .line 225
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v2

    iput v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    .line 226
    const/4 v1, 0x1

    .line 229
    :cond_4a
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    .line 230
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v2
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_57

    or-int/2addr v1, v2

    .line 232
    monitor-exit p0

    return v1

    .line 211
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "changed":Z
    .end local p1    # "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateImsRcsUnregistered()Z
    .registers 3

    monitor-enter p0

    .line 239
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS RCS unregistered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    if-eqz v1, :cond_22

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    .line 243
    const/4 v0, 0x1

    .line 245
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_22
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 246
    monitor-exit p0

    return v0

    .line 238
    .end local v0    # "changed":Z
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist updateMmTelAssociatedUri([Landroid/net/Uri;)V
    .registers 6
    .param p1, "uris"    # [Landroid/net/Uri;

    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 185
    .local v0, "originalSize":I
    if-eqz p1, :cond_23

    .line 186
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 187
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 188
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    goto :goto_28

    .line 190
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_23
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 192
    :goto_28
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 193
    .local v1, "currentSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMmTelAssociatedUri: size from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    .line 194
    monitor-exit p0

    return-void

    .line 183
    .end local v0    # "originalSize":I
    .end local v1    # "currentSize":I
    .end local p1    # "uris":[Landroid/net/Uri;
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateMmtelCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 15
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter p0

    .line 435
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 436
    monitor-exit p0

    return v0

    .line 438
    :cond_6
    :try_start_6
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVolteAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v1

    .line 439
    .local v1, "oldVolteAvailable":Z
    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVoWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v2

    .line 440
    .local v2, "oldVoWifiAvailable":Z
    iget v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVtAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v3

    .line 441
    .local v3, "oldVtAvailable":Z
    iget v4, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v4, v5}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isViWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v4

    .line 442
    .local v4, "oldViWifiAvailable":Z
    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isCallComposerAvailable(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v5

    .line 444
    .local v5, "oldCallComposerAvailable":Z
    iget v6, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v6, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVolteAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v6

    .line 445
    .local v6, "volteAvailable":Z
    iget v7, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v7, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVoWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v7

    .line 446
    .local v7, "voWifiAvailable":Z
    iget v8, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v8, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVtAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v8

    .line 447
    .local v8, "vtAvailable":Z
    iget v9, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v9, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isViWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v9

    .line 448
    .local v9, "viWifiAvailable":Z
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isCallComposerAvailable(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v10

    .line 450
    .local v10, "callComposerAvailable":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMmtelCapabilitiesChanged: from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->deepCopyCapabilities(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v11

    iput-object v11, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :try_end_70
    .catchall {:try_start_6 .. :try_end_70} :catchall_80

    .line 455
    if-ne v1, v6, :cond_7d

    if-ne v2, v7, :cond_7d

    if-ne v3, v8, :cond_7d

    if-ne v4, v9, :cond_7d

    if-eq v5, v10, :cond_7b

    goto :goto_7d

    .line 462
    :cond_7b
    monitor-exit p0

    return v0

    .line 460
    :cond_7d
    :goto_7d
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 434
    .end local v1    # "oldVolteAvailable":Z
    .end local v2    # "oldVoWifiAvailable":Z
    .end local v3    # "oldVtAvailable":Z
    .end local v4    # "oldViWifiAvailable":Z
    .end local v5    # "oldCallComposerAvailable":Z
    .end local v6    # "volteAvailable":Z
    .end local v7    # "voWifiAvailable":Z
    .end local v8    # "vtAvailable":Z
    .end local v9    # "viWifiAvailable":Z
    .end local v10    # "callComposerAvailable":Z
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catchall_80
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateMobileData(Z)Z
    .registers 4
    .param p1, "mobileData"    # Z

    monitor-enter p0

    .line 409
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z

    if-eq v0, p1, :cond_2c

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile data changes from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 411
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    .line 412
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 414
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_2c
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 408
    .end local p1    # "mobileData":Z
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updatePresenceCapable(Z)V
    .registers 2
    .param p1, "isCapable"    # Z

    monitor-enter p0

    .line 466
    :try_start_1
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPresenceCapable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 467
    monitor-exit p0

    return-void

    .line 465
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "isCapable":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateRcsAssociatedUri([Landroid/net/Uri;)V
    .registers 6
    .param p1, "uris"    # [Landroid/net/Uri;

    monitor-enter p0

    .line 253
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 254
    .local v0, "originalSize":I
    if-eqz p1, :cond_23

    .line 255
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 256
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 257
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    goto :goto_28

    .line 259
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_23
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 261
    :goto_28
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 262
    .local v1, "currentSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRcsAssociatedUri: size from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    .line 263
    monitor-exit p0

    return-void

    .line 252
    .end local v0    # "originalSize":I
    .end local v1    # "currentSize":I
    .end local p1    # "uris":[Landroid/net/Uri;
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateTtyPreferredMode(I)Z
    .registers 4
    .param p1, "ttyMode"    # I

    monitor-enter p0

    .line 383
    :try_start_1
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I

    if-eq v0, p1, :cond_2c

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTY preferred mode changes from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 385
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    .line 386
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 388
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_2c
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 382
    .end local p1    # "ttyMode":I
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateVtSetting(Z)Z
    .registers 4
    .param p1, "vtSetting"    # Z

    monitor-enter p0

    .line 422
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z

    if-eq v0, p1, :cond_2c

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT setting changes from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 424
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    .line 425
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 427
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_2c
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 421
    .end local p1    # "vtSetting":Z
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
