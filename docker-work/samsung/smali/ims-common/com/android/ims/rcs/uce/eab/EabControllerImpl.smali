.class public Lcom/android/ims/rcs/uce/eab/EabControllerImpl;
.super Ljava/lang/Object;
.source "EabControllerImpl.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/eab/EabController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;
    }
.end annotation


# static fields
.field private static final blacklist CLEAN_UP_LEGACY_CAPABILITY_DELAY_MILLI_SEC:I = 0x7530

.field private static final blacklist CLEAN_UP_LEGACY_CAPABILITY_SEC:I = 0x93a80

.field private static final blacklist DEFAULT_AVAILABILITY_CACHE_EXPIRATION_SEC:I = 0x3c

.field private static final blacklist DEFAULT_CAPABILITY_CACHE_EXPIRATION_SEC:I = 0x15180

.field private static final blacklist DEFAULT_NON_RCS_CAPABILITY_CACHE_EXPIRATION_SEC:I = 0x93a80

.field private static final blacklist TAG:Ljava/lang/String; = "EabControllerImpl"


# instance fields
.field public final blacklist mCapabilityCleanupRunnable:Ljava/lang/Runnable;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

.field private blacklist mExpirationTimeFactory:Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private volatile blacklist mIsSetDestroyedFlag:Z

.field private final blacklist mSubId:I

.field private blacklist mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$u3ttgAczIAJjusBht2HENFVPiNw(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;Landroid/database/Cursor;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->isAvailabilityExpired(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$w6H9Wtjmr_Q2L9t4lnOKDCNeIlQ(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;Landroid/database/Cursor;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->isCapabilityExpired(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "c"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    .line 86
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mExpirationTimeFactory:Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

    .line 88
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mCapabilityCleanupRunnable:Ljava/lang/Runnable;

    .line 100
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    .line 101
    iput p2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 102
    iput-object p3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 103
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    new-instance v5, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;

    invoke-direct {v5}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;-><init>()V

    iget-object v6, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;-><init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/eab/EabControllerImpl;Lcom/android/ims/rcs/uce/eab/EabContactSyncController;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    .line 109
    return-void
.end method

.method private blacklist cleanupCapabilities(JLjava/util/List;)V
    .registers 12
    .param p1, "rcsCapabilitiesExpiredTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 833
    .local p3, "commonIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a0

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eab_common_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 836
    const-string v2, ","

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")  AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "presence_request_timestamp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "presenceClause":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 841
    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "options_request_timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, "optionClause":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/ims/rcs/uce/eab/EabProvider;->PRESENCE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 847
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 844
    invoke-virtual {v2, v3, v0, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 849
    .local v2, "deletePresenceCount":I
    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/ims/rcs/uce/eab/EabProvider;->OPTIONS_URI:Landroid/net/Uri;

    new-array v4, v4, [Ljava/lang/String;

    .line 852
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 849
    invoke-virtual {v3, v5, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 854
    .local v3, "deleteOptionsCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleanup capabilities. deletePresenceCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",deleteOptionsCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EabControllerImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .end local v0    # "presenceClause":Ljava/lang/String;
    .end local v1    # "optionClause":Ljava/lang/String;
    .end local v2    # "deletePresenceCount":I
    .end local v3    # "deleteOptionsCount":I
    :cond_a0
    return-void
.end method

.method private blacklist cleanupExpiredCapabilities()V
    .registers 9

    .line 819
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    iget v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 820
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getCapabilityCacheExpiration(I)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x93a80

    sub-long/2addr v0, v2

    .line 824
    .local v0, "rcsCapabilitiesExpiredTime":J
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v4

    iget v6, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 825
    invoke-direct {p0, v6}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNonRcsCapabilityCacheExpiration(I)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    sub-long/2addr v4, v2

    .line 828
    .local v4, "nonRcsCapabilitiesExpiredTime":J
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getRcsCommonIdList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->cleanupCapabilities(JLjava/util/List;)V

    .line 829
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNonRcsCommonIdList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v4, v5, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->cleanupCapabilities(JLjava/util/List;)V

    .line 830
    return-void
.end method

.method private blacklist createNewBuilder(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;
    .registers 10
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 435
    const-string v0, "mechanism"

    invoke-direct {p0, p2, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 436
    .local v0, "mechanism":I
    const-string v1, "request_result"

    invoke-direct {p0, p2, v1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 437
    .local v1, "result":I
    new-instance v2, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;

    invoke-direct {v2, v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;-><init>(I)V

    .line 440
    .local v2, "builderWrapper":Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3a

    .line 441
    new-instance v4, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    invoke-direct {v4, p1, v3, v1}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    move-object v3, v4

    .line 443
    .local v3, "builder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createPresenceTuple(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v4

    .line 444
    .local v4, "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    if-eqz v4, :cond_23

    .line 445
    invoke-virtual {v3, v4}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 447
    :cond_23
    const-string v5, "entity_uri"

    invoke-direct {p0, p2, v5}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, "entityUri":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 449
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->setEntityUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 451
    :cond_36
    invoke-virtual {v2, v3}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->setPresenceBuilder(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;)V

    .line 452
    .end local v3    # "builder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .end local v4    # "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    .end local v5    # "entityUri":Ljava/lang/String;
    goto :goto_4d

    .line 453
    :cond_3a
    new-instance v4, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    invoke-direct {v4, p1, v3}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;-><init>(Landroid/net/Uri;I)V

    move-object v3, v4

    .line 454
    .local v3, "builder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    invoke-virtual {v3, v1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->setRequestResult(I)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 455
    invoke-direct {p0, p2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createOptionTuple(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->addFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 456
    invoke-virtual {v2, v3}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->setOptionsBuilder(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;)V

    .line 458
    .end local v3    # "builder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    :goto_4d
    return-object v2
.end method

.method private blacklist createOptionTuple(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 462
    const-string v0, "feature_tag"

    invoke-direct {p0, p1, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createPresenceTuple(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telephony/ims/RcsContactPresenceTuple;
    .registers 24
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 467
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "EabControllerImpl"

    const-string v0, "basic_status"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "status":Ljava/lang/String;
    const-string v0, "service_id"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, "serviceId":Ljava/lang/String;
    const-string v0, "service_version"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, "version":Ljava/lang/String;
    const-string v0, "description"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, "description":Ljava/lang/String;
    const-string v0, "presence_request_timestamp"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, "timeStamp":Ljava/lang/String;
    const-string v0, "audio_capable"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_32

    move v0, v11

    goto :goto_33

    :cond_32
    move v0, v10

    :goto_33
    move v12, v0

    .line 477
    .local v12, "audioCapable":Z
    const-string v0, "video_capable"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v11, :cond_3e

    move v0, v11

    goto :goto_3f

    :cond_3e
    move v0, v10

    :goto_3f
    move v13, v0

    .line 479
    .local v13, "videoCapable":Z
    const-string v0, "duplex_mode"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 481
    .local v14, "duplexModes":Ljava/lang/String;
    const-string v0, "unsupported_duplex_mode"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 485
    .local v15, "unsupportedDuplexModes":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v11, ","

    if-nez v0, :cond_5b

    .line 486
    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .local v0, "duplexModeList":[Ljava/lang/String;
    goto :goto_5f

    .line 488
    .end local v0    # "duplexModeList":[Ljava/lang/String;
    :cond_5b
    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 490
    .local v17, "duplexModeList":[Ljava/lang/String;
    :goto_5f
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 491
    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .local v0, "unsupportedDuplexModeList":[Ljava/lang/String;
    goto :goto_6e

    .line 493
    .end local v0    # "unsupportedDuplexModeList":[Ljava/lang/String;
    :cond_6b
    new-array v0, v10, [Ljava/lang/String;

    move-object v11, v0

    .line 498
    .local v11, "unsupportedDuplexModeList":[Ljava/lang/String;
    :goto_6e
    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    invoke-direct {v0, v12, v13}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;-><init>(ZZ)V

    move-object/from16 v18, v0

    .line 500
    .local v18, "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 501
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    goto :goto_87

    :cond_82
    move-object/from16 v10, v17

    move-object/from16 v3, v18

    goto :goto_af

    .line 502
    :cond_87
    :goto_87
    move-object/from16 v10, v17

    .end local v17    # "duplexModeList":[Ljava/lang/String;
    .local v10, "duplexModeList":[Ljava/lang/String;
    array-length v0, v10

    const/4 v1, 0x0

    :goto_8b
    if-ge v1, v0, :cond_9d

    move/from16 v19, v0

    aget-object v0, v10, v1

    .line 503
    .local v0, "duplexMode":Ljava/lang/String;
    move-object/from16 v3, v18

    .end local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .local v3, "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    invoke-virtual {v3, v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->addSupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    .line 502
    .end local v0    # "duplexMode":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v19

    move-object/from16 v3, p2

    goto :goto_8b

    .line 505
    .end local v3    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .restart local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    :cond_9d
    move-object/from16 v3, v18

    .end local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .restart local v3    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    array-length v0, v11

    const/4 v1, 0x0

    :goto_a1
    if-ge v1, v0, :cond_af

    move/from16 v18, v0

    aget-object v0, v11, v1

    .line 506
    .local v0, "unsupportedDuplex":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->addUnsupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    .line 505
    .end local v0    # "unsupportedDuplex":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v18

    goto :goto_a1

    .line 509
    :cond_af
    :goto_af
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    move-result-object v1

    .line 512
    .local v1, "serviceCapabilities":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 513
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c8

    const/16 v16, 0x1

    goto :goto_ca

    :cond_c8
    const/16 v16, 0x0

    .line 514
    .local v16, "isTupleEmpty":Z
    :goto_ca
    if-nez v16, :cond_110

    .line 515
    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    invoke-direct {v0, v5, v6, v7}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v0

    .line 517
    .local v17, "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    if-eqz v8, :cond_dd

    .line 518
    move-object/from16 v18, v3

    move-object/from16 v3, v17

    .end local v17    # "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .local v3, "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .restart local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    invoke-virtual {v3, v8}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceDescription(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    goto :goto_e1

    .line 517
    .end local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .local v3, "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .restart local v17    # "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    :cond_dd
    move-object/from16 v18, v3

    move-object/from16 v3, v17

    .line 520
    .end local v17    # "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .local v3, "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .restart local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    :goto_e1
    if-eqz v2, :cond_e6

    .line 521
    invoke-virtual {v3, v2}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setContactUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    .line 523
    :cond_e6
    if-eqz v1, :cond_eb

    .line 524
    invoke-virtual {v3, v1}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    .line 526
    :cond_eb
    if-eqz v9, :cond_10b

    .line 528
    :try_start_ed
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    .line 529
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v3, v0}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setTime(Ljava/time/Instant;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    :try_end_f8
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_f8} :catch_103
    .catch Ljava/time/format/DateTimeParseException; {:try_start_ed .. :try_end_f8} :catch_fa

    .line 534
    nop

    .end local v0    # "instant":Ljava/time/Instant;
    goto :goto_10b

    .line 532
    :catch_fa
    move-exception v0

    .line 533
    .local v0, "e":Ljava/time/format/DateTimeParseException;
    move-object/from16 v17, v0

    .end local v0    # "e":Ljava/time/format/DateTimeParseException;
    .local v17, "e":Ljava/time/format/DateTimeParseException;
    const-string v0, "Create presence tuple: parse timestamp failed"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10b

    .line 530
    .end local v17    # "e":Ljava/time/format/DateTimeParseException;
    :catch_103
    move-exception v0

    .line 531
    .local v0, "ex":Ljava/lang/NumberFormatException;
    move-object/from16 v17, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .local v17, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "Create presence tuple: NumberFormatException"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .end local v17    # "ex":Ljava/lang/NumberFormatException;
    :cond_10b
    :goto_10b
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v0

    return-object v0

    .line 538
    .end local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .local v3, "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    :cond_110
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist deleteOldOptionCapability(I)V
    .registers 11
    .param p1, "contactId"    # I

    .line 771
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    .line 775
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v5, v8

    .line 771
    const-string v4, "eab_contact_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 777
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_4b

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4b

    .line 778
    :goto_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 779
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 780
    .local v2, "commonId":I
    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/ims/rcs/uce/eab/EabProvider;->OPTIONS_URI:Landroid/net/Uri;

    new-array v5, v7, [Ljava/lang/String;

    .line 783
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 780
    const-string v6, "eab_common_id=?"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 784
    .end local v2    # "commonId":I
    goto :goto_27

    .line 787
    :cond_4b
    if-eqz v1, :cond_50

    .line 788
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 790
    :cond_50
    return-void
.end method

.method private blacklist deleteOldPresenceCapability(I)V
    .registers 11
    .param p1, "id"    # I

    .line 661
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    .line 665
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v5, v8

    .line 661
    const-string v4, "eab_contact_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 667
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_4b

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4b

    .line 668
    :goto_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 669
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 670
    .local v2, "commonId":I
    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/ims/rcs/uce/eab/EabProvider;->PRESENCE_URI:Landroid/net/Uri;

    new-array v5, v7, [Ljava/lang/String;

    .line 673
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 670
    const-string v6, "eab_common_id=?"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 674
    .end local v2    # "commonId":I
    goto :goto_27

    .line 677
    :cond_4b
    if-eqz v1, :cond_50

    .line 678
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 680
    :cond_50
    return-void
.end method

.method static blacklist formatNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 915
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 916
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "simCountryIso":Ljava/lang/String;
    if-eqz v1, :cond_44

    .line 918
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 919
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 921
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_16
    invoke-virtual {v2, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 922
    .local v3, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4
    :try_end_20
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_16 .. :try_end_20} :catch_21

    return-object v4

    .line 923
    .end local v3    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_21
    move-exception v3

    .line 924
    .local v3, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "formatNumber: could not format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EabControllerImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v2    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v3    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_44
    return-object p1
.end method

.method private blacklist generateDestroyedResult(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 308
    .local p1, "contactUri":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, "destroyedResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 310
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_9

    .line 315
    :cond_20
    return-object v0
.end method

.method private blacklist generateEabResult(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 12
    .param p1, "contactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/function/Predicate<",
            "Landroid/database/Cursor;",
            ">;)",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;"
        }
    .end annotation

    .line 320
    .local p2, "isExpiredMethod":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    .line 324
    .local v0, "builder":Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;
    sget-object v1, Lcom/android/ims/rcs/uce/eab/EabProvider;->ALL_DATA_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 325
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    .line 326
    invoke-static {v2, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNumberFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 327
    .local v1, "queryUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 330
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    if-eqz v2, :cond_7a

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_7a

    .line 331
    :goto_2f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 332
    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 333
    goto :goto_2f

    .line 336
    :cond_3c
    if-nez v0, :cond_43

    .line 337
    invoke-direct {p0, p1, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createNewBuilder(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;

    move-result-object v0

    goto :goto_2f

    .line 339
    :cond_43
    invoke-direct {p0, p1, v2, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->updateCapability(Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;)V

    goto :goto_2f

    .line 342
    :cond_47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 344
    if-nez v0, :cond_54

    .line 345
    new-instance v4, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v5, 0x2

    invoke-direct {v4, p1, v5, v3}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    move-object v3, v4

    .local v3, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_81

    .line 349
    .end local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_54
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getMechanism()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_6b

    .line 350
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getPresenceBuilder()Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    move-result-object v3

    .line 351
    .local v3, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    new-instance v4, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 353
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    move-object v3, v4

    .line 354
    .local v3, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_81

    .line 355
    .end local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_6b
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getOptionsBuilder()Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    move-result-object v3

    .line 356
    .local v3, "optionsBuilder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    new-instance v4, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 358
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    move-object v3, v4

    .line 359
    .local v3, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_81

    .line 363
    .end local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_7a
    new-instance v4, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v5, 0x3

    invoke-direct {v4, p1, v5, v3}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    move-object v3, v4

    .line 366
    .restart local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :goto_81
    return-object v3
.end method

.method private blacklist generateEabResultIncludingExpired(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 13
    .param p1, "contactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/function/Predicate<",
            "Landroid/database/Cursor;",
            ">;)",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;"
        }
    .end annotation

    .line 371
    .local p2, "isExpiredMethod":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    .line 373
    .local v0, "builder":Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 376
    .local v1, "isExpired":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Boolean;>;"
    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->ALL_DATA_URI:Landroid/net/Uri;

    iget v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 377
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    .line 378
    invoke-static {v3, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNumberFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 379
    .local v2, "queryUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 381
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_90

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_90

    .line 382
    :goto_32
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 384
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 385
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 387
    :cond_4a
    if-nez v0, :cond_51

    .line 388
    invoke-direct {p0, p1, v3}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createNewBuilder(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;

    move-result-object v0

    goto :goto_32

    .line 390
    :cond_51
    invoke-direct {p0, p1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->updateCapability(Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;)V

    goto :goto_32

    .line 393
    :cond_55
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 396
    const/4 v4, 0x0

    .line 397
    .local v4, "eabResult":I
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 398
    const/4 v4, 0x2

    .line 401
    :cond_6b
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getMechanism()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_81

    .line 402
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getPresenceBuilder()Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    move-result-object v5

    .line 403
    .local v5, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    new-instance v6, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    invoke-virtual {v5}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v7

    invoke-direct {v6, p1, v4, v7}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    move-object v5, v6

    .line 404
    .local v5, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_8f

    .line 405
    .end local v5    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_81
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getOptionsBuilder()Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    move-result-object v5

    .line 406
    .local v5, "optionsBuilder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    new-instance v6, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    invoke-virtual {v5}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v7

    invoke-direct {v6, p1, v4, v7}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    move-object v5, v6

    .line 408
    .end local v4    # "eabResult":I
    .local v5, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :goto_8f
    goto :goto_98

    .line 409
    .end local v5    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_90
    new-instance v4, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {v4, p1, v5, v6}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    move-object v5, v4

    .line 412
    .restart local v5    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :goto_98
    return-object v5
.end method

.method private blacklist getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "column"    # Ljava/lang/String;

    .line 902
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private blacklist getNonRcsCapabilityCacheExpiration(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 605
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 606
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 608
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_17

    .line 609
    const-string v1, "ims.non_rcs_capabilities_cache_expiration_sec_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "value":I
    goto :goto_21

    .line 612
    .end local v1    # "value":I
    :cond_17
    const v1, 0x93a80

    .line 613
    .restart local v1    # "value":I
    const-string v2, "EabControllerImpl"

    const-string v3, "getNonRcsCapabilityCacheExpiration: CarrierConfig is null, returning default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_21
    return v1
.end method

.method private blacklist getNonRcsCommonIdList()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 884
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v6, v4

    .line 880
    const/4 v4, 0x0

    const-string v5, "request_result=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 887
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_23

    return-object v0

    .line 889
    :cond_23
    :goto_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 890
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 892
    :cond_3b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 894
    return-object v0
.end method

.method private static blacklist getNumberFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 906
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "number":Ljava/lang/String;
    const-string v1, "[@;:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "numberParts":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_f

    .line 909
    const/4 v2, 0x0

    return-object v2

    .line 911
    :cond_f
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {p0, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->formatNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getRcsCommonIdList()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 861
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 865
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v6, v4

    .line 861
    const/4 v4, 0x0

    const-string v5, "request_result<>?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 868
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_23

    return-object v0

    .line 870
    :cond_23
    :goto_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 871
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 873
    :cond_3b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 875
    return-object v0
.end method

.method private blacklist getRequestTimestamp(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, "expiredTimestamp":Ljava/lang/String;
    const-string v1, "mechanism"

    invoke-direct {p0, p1, v1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 593
    .local v1, "mechanism":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 594
    const-string v2, "presence_request_timestamp"

    invoke-direct {p0, p1, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 597
    :cond_11
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 598
    const-string v2, "options_request_timestamp"

    invoke-direct {p0, p1, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method private blacklist getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "column"    # Ljava/lang/String;

    .line 898
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist insertAllTuples(ILandroid/telephony/ims/RcsContactUceCapability;)V
    .registers 13
    .param p1, "commonId"    # I
    .param p2, "capability"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 716
    nop

    .line 717
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityTuples()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 719
    .local v0, "presenceContent":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_c0

    .line 720
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityTuples()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsContactPresenceTuple;

    .line 723
    .local v2, "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceCapabilities()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    move-result-object v3

    .line 724
    .local v3, "serviceCapabilities":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    const/4 v4, 0x0

    .local v4, "duplexMode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 725
    .local v5, "unsupportedDuplexMode":Ljava/lang/String;
    if-eqz v3, :cond_41

    .line 726
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->getSupportedDuplexModes()Ljava/util/List;

    move-result-object v6

    .line 727
    .local v6, "duplexModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, ","

    if-eqz v7, :cond_31

    .line 728
    invoke-static {v8, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 731
    :cond_31
    nop

    .line 732
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->getUnsupportedDuplexModes()Ljava/util/List;

    move-result-object v7

    .line 733
    .local v7, "unsupportedDuplexModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_41

    .line 734
    nop

    .line 735
    invoke-static {v8, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 739
    .end local v6    # "duplexModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "unsupportedDuplexModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 740
    .local v6, "contentValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "eab_common_id"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getStatus()Ljava/lang/String;

    move-result-object v7

    const-string v8, "basic_status"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "service_id"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    nop

    .line 744
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceVersion()Ljava/lang/String;

    move-result-object v7

    .line 743
    const-string v8, "service_version"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    nop

    .line 746
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceDescription()Ljava/lang/String;

    move-result-object v7

    .line 745
    const-string v8, "description"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v7, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mExpirationTimeFactory:Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

    .line 751
    invoke-interface {v7}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;->getExpirationTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 750
    const-string v8, "presence_request_timestamp"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 752
    nop

    .line 753
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getContactUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 752
    const-string v8, "contact_uri"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    if-eqz v3, :cond_ba

    .line 755
    const-string v7, "duplex_mode"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v7, "unsupported_duplex_mode"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    nop

    .line 760
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->isAudioCapable()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 759
    const-string v8, "audio_capable"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 761
    nop

    .line 762
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->isVideoCapable()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 761
    const-string v8, "video_capable"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 764
    :cond_ba
    aput-object v6, v0, v1

    .line 719
    .end local v2    # "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    .end local v3    # "serviceCapabilities":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    .end local v4    # "duplexMode":Ljava/lang/String;
    .end local v5    # "unsupportedDuplexMode":Ljava/lang/String;
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 766
    .end local v1    # "i":I
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert into presence table. count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EabControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 768
    return-void
.end method

.method private blacklist insertEmptyTuple(I)V
    .registers 5
    .param p1, "commonId"    # I

    .line 705
    const-string v0, "EabControllerImpl"

    const-string v1, "Insert empty tuple into presence table."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 707
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eab_common_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mExpirationTimeFactory:Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

    .line 711
    invoke-interface {v1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;->getExpirationTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 710
    const-string v2, "presence_request_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 712
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 713
    return-void
.end method

.method private blacklist insertNewContact(Ljava/lang/String;)I
    .registers 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 654
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 655
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 657
    .local v1, "result":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private blacklist insertNewOptionCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V
    .registers 11
    .param p1, "contactId"    # I
    .param p2, "capability"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 793
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 794
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eab_contact_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mechanism"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    iget v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "subscription_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    nop

    .line 798
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getRequestResult()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 797
    const-string v2, "request_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 801
    .local v1, "result":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 802
    .local v2, "commonId":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v3, "optionContentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getFeatureTags()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 804
    .local v5, "feature":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v0, v6

    .line 805
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "eab_common_id"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 806
    const-string v6, "feature_tag"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    nop

    .line 808
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 807
    const-string v7, "options_request_timestamp"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 809
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    .end local v5    # "feature":Ljava/lang/String;
    goto :goto_56

    .line 812
    :cond_8c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    .line 813
    .local v4, "optionContent":[Landroid/content/ContentValues;
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, [Landroid/content/ContentValues;

    .line 814
    iget-object v5, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/ims/rcs/uce/eab/EabProvider;->OPTIONS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 815
    return-void
.end method

.method private blacklist insertNewPresenceCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V
    .registers 8
    .param p1, "contactId"    # I
    .param p2, "capability"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 683
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 684
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eab_contact_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mechanism"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 686
    iget v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "subscription_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    nop

    .line 688
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getRequestResult()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 687
    const-string v2, "request_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getEntityUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 690
    nop

    .line 691
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getEntityUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    const-string v2, "entity_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_45
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 694
    .local v1, "result":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 695
    .local v2, "commonId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert into common table. Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EabControllerImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityTuples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7f

    .line 698
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertEmptyTuple(I)V

    goto :goto_82

    .line 700
    :cond_7f
    invoke-direct {p0, v2, p2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertAllTuples(ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 702
    :goto_82
    return-void
.end method

.method private blacklist isAvailabilityExpired(Landroid/database/Cursor;)Z
    .registers 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "expired":Z
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getRequestTimestamp(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "requestTimeStamp":Ljava/lang/String;
    const-string v2, "EabControllerImpl"

    if-eqz v1, :cond_4b

    .line 578
    nop

    .line 579
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v3

    iget v4, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 580
    invoke-virtual {p0, v4}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getAvailabilityCacheExpiration(I)J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    .line 581
    .local v3, "expiredTimestamp":Ljava/time/Instant;
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Availability insertedTimestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 583
    invoke-virtual {v3}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expired:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v3    # "expiredTimestamp":Ljava/time/Instant;
    goto :goto_50

    .line 585
    :cond_4b
    const-string v3, "Capability requestTimeStamp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_50
    return v0
.end method

.method private blacklist isCapabilityExpired(Landroid/database/Cursor;)Z
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "expired":Z
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getRequestTimestamp(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "requestTimeStamp":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->isNonRcsCapability(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 548
    iget v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNonRcsCapabilityCacheExpiration(I)I

    move-result v2

    .local v2, "capabilityCacheExpiration":I
    goto :goto_18

    .line 550
    .end local v2    # "capabilityCacheExpiration":I
    :cond_12
    iget v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getCapabilityCacheExpiration(I)I

    move-result v2

    .line 553
    .restart local v2    # "capabilityCacheExpiration":I
    :goto_18
    const-string v3, "EabControllerImpl"

    if-eqz v1, :cond_71

    .line 554
    nop

    .line 555
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v4

    int-to-long v5, v2

    sget-object v7, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    .line 556
    invoke-virtual {v4, v5, v6, v7}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v4

    .line 557
    .local v4, "expiredTimestamp":Ljava/time/Instant;
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Capability expiredTimestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isNonRcsCapability: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 559
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->isNonRcsCapability(Landroid/database/Cursor;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", capabilityCacheExpiration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", expired:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 558
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v4    # "expiredTimestamp":Ljava/time/Instant;
    goto :goto_76

    .line 563
    :cond_71
    const-string v4, "Capability requestTimeStamp is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_76
    return v0
.end method

.method private blacklist isNonRcsCapability(Landroid/database/Cursor;)Z
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 569
    const-string v0, "request_result"

    invoke-direct {p0, p1, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 570
    .local v0, "result":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method static synthetic blacklist lambda$new$0()J
    .registers 2

    .line 86
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist updateCapability(Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;)V
    .registers 6
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "builderWrapper"    # Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;

    .line 417
    invoke-virtual {p3}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getMechanism()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 418
    invoke-virtual {p3}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getPresenceBuilder()Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    move-result-object v0

    .line 419
    .local v0, "builder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    if-nez v0, :cond_e

    .line 420
    return-void

    .line 422
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createPresenceTuple(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v1

    .line 423
    .local v1, "presenceTuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    if-eqz v1, :cond_17

    .line 424
    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 426
    .end local v0    # "builder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .end local v1    # "presenceTuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    :cond_17
    goto :goto_25

    .line 427
    :cond_18
    invoke-virtual {p3}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getOptionsBuilder()Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    move-result-object v0

    .line 428
    .local v0, "builder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    if-eqz v0, :cond_25

    .line 429
    invoke-direct {p0, p2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createOptionTuple(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->addFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 432
    .end local v0    # "builder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public blacklist cleanupOrphanedRows()V
    .registers 7

    .line 293
    const-string v0, " (SELECT eab_common_id FROM eab_presence) "

    .line 296
    .local v0, "presenceSelection":Ljava/lang/String;
    const-string v1, " (SELECT eab_common_id FROM eab_options) "

    .line 300
    .local v1, "optionSelection":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id NOT IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NOT IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public blacklist getAvailability(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 5
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    if-eqz v0, :cond_16

    .line 206
    const-string v0, "EabControllerImpl"

    const-string v1, "EabController destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    return-object v0

    .line 212
    :cond_16
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V

    invoke-direct {p0, p1, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateEabResult(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getAvailabilityCacheExpiration(I)J
    .registers 8
    .param p1, "subId"    # I

    .line 637
    const-string v0, "EabControllerImpl"

    const-wide/16 v1, -0x1

    .line 639
    .local v1, "value":J
    :try_start_4
    invoke-static {p1}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v3

    .line 640
    .local v3, "pm":Landroid/telephony/ims/ProvisioningManager;
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_10

    int-to-long v1, v4

    .line 644
    .end local v3    # "pm":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_27

    .line 642
    :catch_10
    move-exception v3

    .line 643
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getAvailabilityCacheExpiration(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_27
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_34

    .line 647
    const-wide/16 v1, 0x3c

    .line 648
    const-string v3, "The Availability expiration cannot be less than 0."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_34
    return-wide v1
.end method

.method public blacklist getAvailabilityIncludingExpired(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 5
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 221
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    if-eqz v0, :cond_16

    .line 223
    const-string v0, "EabControllerImpl"

    const-string v1, "EabController destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    return-object v0

    .line 229
    :cond_16
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V

    invoke-direct {p0, p1, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateEabResultIncludingExpired(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCapabilities(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 156
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    const-string v1, "EabControllerImpl"

    if-eqz v0, :cond_13

    .line 158
    const-string v0, "EabController destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateDestroyedResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 162
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities uri size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "capabilityResultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 166
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V

    invoke-direct {p0, v3, v4}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateEabResult(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v4

    .line 167
    .local v4, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v4}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getContactCapabilities()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v5

    if-eqz v5, :cond_72

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCapabilities "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getContactCapabilities()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ims/RcsContactUceCapability;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_72
    goto :goto_36

    .line 173
    :cond_73
    return-object v0
.end method

.method public blacklist getCapabilitiesIncludingExpired(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 182
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    const-string v1, "EabControllerImpl"

    if-eqz v0, :cond_13

    .line 184
    const-string v0, "EabController destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateDestroyedResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 188
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilitiesIncludingExpired uri size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "capabilityResultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 192
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V

    invoke-direct {p0, v2, v3}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateEabResultIncludingExpired(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v3

    .line 194
    .local v3, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_36

    .line 196
    :cond_4f
    return-object v0
.end method

.method protected blacklist getCapabilityCacheExpiration(I)I
    .registers 7
    .param p1, "subId"    # I

    .line 620
    const-string v0, "EabControllerImpl"

    const/4 v1, -0x1

    .line 622
    .local v1, "value":I
    :try_start_3
    invoke-static {p1}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v2

    .line 623
    .local v2, "pm":Landroid/telephony/ims/ProvisioningManager;
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_f

    move v1, v3

    .line 627
    .end local v2    # "pm":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_26

    .line 625
    :catch_f
    move-exception v2

    .line 626
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getCapabilityCacheExpiration(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_26
    if-gtz v1, :cond_30

    .line 630
    const v1, 0x15180

    .line 631
    const-string v2, "The capability expiration cannot be less than 0."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_30
    return v1
.end method

.method synthetic blacklist lambda$new$1$com-android-ims-rcs-uce-eab-EabControllerImpl()V
    .registers 3

    .line 90
    const-string v0, "EabControllerImpl"

    const-string v1, "Cleanup Capabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->cleanupExpiredCapabilities()V

    .line 92
    return-void
.end method

.method public blacklist onCarrierConfigChanged()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mCapabilityCleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->cleanupOrphanedRows()V

    .line 132
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    if-nez v0, :cond_11

    .line 133
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->onCarrierConfigChanged()V

    .line 135
    :cond_11
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 121
    const-string v0, "EabControllerImpl"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    .line 123
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->onDestroy()V

    .line 124
    return-void
.end method

.method public blacklist onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V
    .registers 2
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 113
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .registers 1

    .line 117
    return-void
.end method

.method public blacklist saveCapabilities(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p1, "contactCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    const-string v1, "EabControllerImpl"

    if-eqz v0, :cond_f

    .line 239
    const-string v0, "EabController destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 243
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save capabilities: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsContactUceCapability;

    .line 247
    .local v2, "capability":Landroid/telephony/ims/RcsContactUceCapability;
    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNumberFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "phoneNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v9, v8

    const/4 v10, 0x0

    const-string v8, "phone_number=?"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 253
    .local v5, "c":Landroid/database/Cursor;
    const/4 v6, 0x2

    if-eqz v5, :cond_8c

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 254
    const-string v7, "_id"

    invoke-direct {p0, v5, v7}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 255
    .local v7, "contactId":I
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityMechanism()I

    move-result v8

    if-ne v8, v4, :cond_7a

    .line 256
    const-string v4, "Insert presence capability"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0, v7}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->deleteOldPresenceCapability(I)V

    .line 258
    invoke-direct {p0, v7, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertNewPresenceCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V

    goto :goto_8b

    .line 259
    :cond_7a
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityMechanism()I

    move-result v4

    if-ne v4, v6, :cond_8b

    .line 260
    const-string v4, "Insert options capability"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0, v7}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->deleteOldOptionCapability(I)V

    .line 262
    invoke-direct {p0, v7, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertNewOptionCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 264
    .end local v7    # "contactId":I
    :cond_8b
    :goto_8b
    goto :goto_a8

    .line 265
    :cond_8c
    const-string v7, "The phone number can\'t find in contact table. "

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertNewContact(Ljava/lang/String;)I

    move-result v7

    .line 267
    .restart local v7    # "contactId":I
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityMechanism()I

    move-result v8

    if-ne v8, v4, :cond_9f

    .line 268
    invoke-direct {p0, v7, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertNewPresenceCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V

    goto :goto_a8

    .line 269
    :cond_9f
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityMechanism()I

    move-result v4

    if-ne v4, v6, :cond_a8

    .line 270
    invoke-direct {p0, v7, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertNewOptionCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 274
    .end local v7    # "contactId":I
    :cond_a8
    :goto_a8
    if-eqz v5, :cond_ad

    .line 275
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 277
    .end local v2    # "capability":Landroid/telephony/ims/RcsContactUceCapability;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    .end local v5    # "c":Landroid/database/Cursor;
    :cond_ad
    goto/16 :goto_2d

    .line 278
    :cond_af
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->cleanupOrphanedRows()V

    .line 279
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->updateExpiredTimeAlert()V

    .line 281
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mCapabilityCleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 282
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mCapabilityCleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 284
    :cond_c8
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mCapabilityCleanupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    return-void
.end method

.method public blacklist setExpirationTimeFactory(Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;)V
    .registers 2
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

    .line 932
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mExpirationTimeFactory:Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

    .line 933
    return-void
.end method

.method public blacklist setUceRequestCallback(Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)V
    .registers 4
    .param p1, "c"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    if-eqz v0, :cond_f

    .line 144
    const-string v0, "EabControllerImpl"

    const-string v1, "EabController destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_f
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 148
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->setUceRequestCallback(Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)V

    .line 149
    return-void
.end method
