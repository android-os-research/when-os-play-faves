.class public final Lcom/android/server/notification/NotificationRecord;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationRecord$Light;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field public static final MAX_SOUND_DELAY_MS:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "NotificationRecord"


# instance fields
.field public isCanceled:Z

.field public isUpdate:Z

.field public mAdjustmentIssuer:Ljava/lang/String;

.field public final mAdjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field public mAllowBubble:Z

.field public mAm:Landroid/app/IActivityManager;

.field public mAppDemotedFromConvo:Z

.field public mAssistantImportance:I

.field public mAttributes:Landroid/media/AudioAttributes;

.field public mAuthoritativeRank:I

.field public mChannel:Landroid/app/NotificationChannel;

.field public mContactAffinity:F

.field public final mContext:Landroid/content/Context;

.field public mCreationTimeMs:J

.field public mCriticality:I

.field public mEditChoicesBeforeSending:Z

.field public mFlagBubbleRemoved:Z

.field public mGlobalSortKey:Ljava/lang/String;

.field public mGrantableUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mHasSeenSmartReplies:Z

.field public mHasSentValidMsg:Z

.field public mHidden:Z

.field public mImportance:I

.field public mImportanceExplanationCode:I

.field public mImportanceFixed:Z

.field public mInitialImportanceExplanationCode:I

.field public mIntercept:Z

.field public mInterruptionTimeMs:J

.field public mIsAlertLimited:Z

.field public mIsAppImportanceLocked:Z

.field public mIsInterruptive:Z

.field public mIsNotConversationOverride:Z

.field public mLastAudiblyAlertedMs:J

.field public mLastIntrusive:J

.field public mLight:Lcom/android/server/notification/NotificationRecord$Light;

.field public mNumberOfSmartActionsAdded:I

.field public mNumberOfSmartRepliesAdded:I

.field public final mOriginalFlags:I

.field public mPackagePriority:I

.field public mPackageVisibility:I

.field public mPendingLogUpdate:Z

.field public mPeopleOverride:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPhoneNumbers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPkgAllowedAsConvo:Z

.field public mPostSilently:Z

.field public mPreChannelsNotification:Z

.field public mRankingScore:F

.field public mRankingTimeMs:J

.field public mRecentlyIntrusive:Z

.field public mRecordedInterruption:Z

.field public mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field public mShowBadge:Z

.field public mSmartReplies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field public mSound:Landroid/net/Uri;

.field public final mStats:Landroid/service/notification/NotificationStats;

.field public mSuggestionsGeneratedByAssistant:Z

.field public mSuppressedVisualEffects:I

.field public mSystemGeneratedSmartActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemImportance:I

.field public final mTargetSdkVersion:I

.field public mTextChanged:Z

.field public mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUpdateTimeMs:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mUserExplanation:Ljava/lang/String;

.field public mUserSentiment:I

.field public mVibration:Landroid/os/VibrationEffect;

.field public mVisibleSinceMs:J

.field public permissionOwner:Landroid/os/IBinder;

.field public final sbn:Landroid/service/notification/StatusBarNotification;

.field public stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;


# direct methods
.method public static synthetic $r8$lambda$JMyyUe1tek73cTWTrcpl6gCcTEc(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationRecord;->lambda$calculateGrantableUris$0(Landroid/net/Uri;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "NotificationRecord"

    const/4 v1, 0x3

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationRecord;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V
    .registers 7

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e8

    .line 159
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 160
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 161
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    const/4 v0, 0x2

    .line 164
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 168
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 170
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    const/4 v1, 0x1

    .line 172
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    .line 223
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mPendingLogUpdate:Z

    .line 227
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 228
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 229
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    .line 230
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAm:Landroid/app/IActivityManager;

    .line 231
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 232
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    iput v1, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    const-wide/16 v1, 0x0

    .line 233
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 234
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 235
    iput-wide v1, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 236
    iput-wide v1, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    .line 237
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 238
    new-instance p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-direct {p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 239
    iput-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 240
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isPreChannelsNotification()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateSound()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 242
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateVibration()Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 244
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateInitialImportance()I

    move-result p1

    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 245
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateLights()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    .line 246
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    .line 247
    new-instance p1, Landroid/service/notification/NotificationStats;

    invoke-direct {p1}, Landroid/service/notification/NotificationStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 248
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 249
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateGrantableUris()V

    .line 250
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    return-void
.end method

.method private synthetic lambda$calculateGrantableUris$0(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 1461
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/notification/NotificationRecord;->visitGrantableUri(Landroid/net/Uri;ZZ)V

    return-void
.end method


# virtual methods
.method public addAdjustment(Landroid/service/notification/Adjustment;)V
    .registers 3

    .line 759
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v0

    .line 760
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public applyAdjustments()V
    .registers 9

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 766
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v0

    .line 767
    :try_start_6
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Adjustment;

    .line 768
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "key_people"

    .line 769
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 771
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "key_people"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 772
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setPeopleOverride(Ljava/util/ArrayList;)V

    .line 774
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "key_people"

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    .line 773
    invoke-static {v5, v6, v4}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    const-string/jumbo v4, "key_snooze_criteria"

    .line 776
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 778
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "key_snooze_criteria"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 780
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setSnoozeCriteria(Ljava/util/ArrayList;)V

    .line 781
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "key_snooze_criteria"

    .line 782
    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    .line 781
    invoke-static {v5, v6, v4}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    const-string/jumbo v4, "key_group_key"

    .line 784
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 786
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "key_group_key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 787
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "key_group_key"

    invoke-static {v5, v6, v4}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    const-string/jumbo v4, "key_user_sentiment"

    .line 791
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_c1

    .line 794
    iget-boolean v4, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    if-nez v4, :cond_c1

    .line 795
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    and-int/2addr v4, v5

    if-nez v4, :cond_c1

    .line 796
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v6, "key_user_sentiment"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setUserSentiment(I)V

    .line 798
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "key_user_sentiment"

    .line 800
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 798
    invoke-static {v4, v6, v7}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    const-string/jumbo v4, "key_contextual_actions"

    .line 803
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e6

    const-string/jumbo v4, "key_contextual_actions"

    .line 805
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 804
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setSystemGeneratedSmartActions(Ljava/util/ArrayList;)V

    .line 806
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "key_contextual_actions"

    .line 808
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    .line 806
    invoke-static {v4, v6, v7}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    const-string/jumbo v4, "key_text_replies"

    .line 810
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10b

    const-string/jumbo v4, "key_text_replies"

    .line 811
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setSmartReplies(Ljava/util/ArrayList;)V

    .line 812
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "key_text_replies"

    .line 813
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    .line 812
    invoke-static {v4, v6, v7}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    const-string/jumbo v4, "key_importance"

    .line 815
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_136

    const-string/jumbo v4, "key_importance"

    .line 816
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v6, -0x3e8

    .line 817
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 818
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 819
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setAssistantImportance(I)V

    .line 820
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "key_importance"

    .line 821
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 820
    invoke-static {v5, v6, v4}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_136
    const-string/jumbo v4, "key_ranking_score"

    .line 823
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_158

    const-string/jumbo v4, "key_ranking_score"

    .line 824
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 825
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key_ranking_score"

    iget v6, p0, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 826
    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    .line 825
    invoke-static {v4, v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_158
    const-string/jumbo v4, "key_not_conversation"

    .line 828
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17a

    const-string/jumbo v4, "key_not_conversation"

    .line 829
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/notification/NotificationRecord;->mIsNotConversationOverride:Z

    .line 831
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key_not_conversation"

    iget-boolean v6, p0, Lcom/android/server/notification/NotificationRecord;->mIsNotConversationOverride:Z

    .line 833
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    .line 831
    invoke-static {v4, v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_17a
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getIssuer()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 836
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getIssuer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    goto/16 :goto_c

    .line 840
    :cond_18e
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 841
    monitor-exit v0

    return-void

    :catchall_195
    move-exception p0

    monitor-exit v0
    :try_end_197
    .catchall {:try_start_6 .. :try_end_197} :catchall_195

    throw p0
.end method

.method public final calculateAttributes()Landroid/media/AudioAttributes;
    .registers 4

    .line 379
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 380
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    if-nez v1, :cond_14

    .line 382
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 385
    :cond_14
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_5e

    .line 386
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_5e

    .line 388
    iget-object p0, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz p0, :cond_2a

    move-object v1, p0

    goto :goto_5e

    .line 391
    :cond_2a
    iget p0, v0, Landroid/app/Notification;->audioStreamType:I

    if-ltz p0, :cond_44

    .line 392
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge p0, v2, :cond_44

    .line 394
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    .line 395
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 396
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    goto :goto_5e

    .line 397
    :cond_44
    iget p0, v0, Landroid/app/Notification;->audioStreamType:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 398
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "Invalid stream type: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotificationRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public calculateGrantableUris()V
    .registers 4

    .line 1459
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1460
    new-instance v1, Lcom/android/server/notification/NotificationRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Landroid/app/Notification;->visitUris(Ljava/util/function/Consumer;)V

    .line 1464
    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1467
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/notification/NotificationRecord;->visitGrantableUri(Landroid/net/Uri;ZZ)V

    :cond_2b
    return-void
.end method

.method public calculateImportance()V
    .registers 4

    .line 943
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateInitialImportance()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 944
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 947
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v0

    const/16 v1, -0x3e8

    if-nez v0, :cond_23

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    if-eq v0, v1, :cond_23

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceFixed:Z

    if-nez v2, :cond_23

    .line 950
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    const/4 v0, 0x3

    .line 951
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 953
    :cond_23
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    if-eq v0, v1, :cond_2c

    .line 954
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    const/4 v0, 0x4

    .line 955
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    :cond_2c
    return-void
.end method

.method public final calculateInitialImportance()I
    .registers 10

    .line 405
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    .line 407
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1e

    move v2, v4

    goto :goto_1f

    :cond_1e
    move v2, v3

    .line 409
    :goto_1f
    iput v2, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 412
    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_29

    .line 413
    iput v4, v0, Landroid/app/Notification;->priority:I

    .line 418
    :cond_29
    iget v2, v0, Landroid/app/Notification;->priority:I

    const/4 v5, -0x2

    invoke-static {v2, v5, v4}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    move-result v2

    iput v2, v0, Landroid/app/Notification;->priority:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v2, v5, :cond_45

    const/4 v5, -0x1

    if-eq v2, v5, :cond_43

    if-eqz v2, :cond_3f

    if-eq v2, v3, :cond_41

    if-eq v2, v4, :cond_41

    :cond_3f
    move v2, v7

    goto :goto_46

    :cond_41
    move v2, v6

    goto :goto_46

    :cond_43
    move v2, v4

    goto :goto_46

    :cond_45
    move v2, v3

    .line 435
    :goto_46
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput v2, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 436
    iget-object v8, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    if-nez v8, :cond_54

    iget-object v8, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    if-eqz v8, :cond_53

    goto :goto_54

    :cond_53
    const/4 v3, 0x0

    :cond_54
    :goto_54
    iput-boolean v3, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 440
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v3, :cond_82

    const/16 v3, -0x3e8

    if-eq v1, v3, :cond_68

    .line 442
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v3

    if-nez v3, :cond_82

    .line 443
    :cond_68
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-nez v1, :cond_71

    if-le v2, v4, :cond_71

    goto :goto_72

    :cond_71
    move v4, v2

    :goto_72
    if-eqz v1, :cond_77

    if-ge v4, v7, :cond_77

    goto :goto_78

    :cond_77
    move v7, v4

    .line 453
    :goto_78
    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7e

    move v1, v6

    goto :goto_7f

    :cond_7e
    move v1, v7

    :goto_7f
    const/4 v0, 0x5

    .line 457
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 461
    :cond_82
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    return v1
.end method

.method public final calculateLights()Lcom/android/server/notification/NotificationRecord$Light;
    .registers 8

    .line 322
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 326
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 329
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    goto :goto_3b

    :cond_3a
    move v3, v0

    .line 331
    :goto_3b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4c

    new-instance v4, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-direct {v4, v3, v1, v2}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    goto :goto_4d

    :cond_4c
    move-object v4, v5

    .line 333
    :goto_4d
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v3, :cond_82

    .line 334
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_82

    .line 336
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 337
    iget v3, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_83

    .line 338
    new-instance v5, Lcom/android/server/notification/NotificationRecord$Light;

    iget v3, p0, Landroid/app/Notification;->ledARGB:I

    iget v4, p0, Landroid/app/Notification;->ledOnMS:I

    iget v6, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-direct {v5, v3, v4, v6}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    .line 340
    iget p0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_83

    .line 341
    new-instance v5, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    goto :goto_83

    :cond_82
    move-object v5, v4

    :cond_83
    :goto_83
    return-object v5
.end method

.method public final calculateRankingTimeMs(J)J
    .registers 10

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1139
    iget-wide v1, v0, Landroid/app/Notification;->when:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1b

    .line 1140
    iget-wide p0, v0, Landroid/app/Notification;->when:J

    return-wide p0

    :cond_1b
    cmp-long v0, p1, v3

    if-lez v0, :cond_20

    return-wide p1

    .line 1147
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public final calculateSound()Landroid/net/Uri;
    .registers 4

    .line 263
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    return-object v2

    .line 271
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->notificationSoundBlockedByMDM()Z

    move-result v1

    if-eqz v1, :cond_1f

    return-object v2

    .line 277
    :cond_1f
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    .line 278
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_44

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_44

    .line 281
    iget p0, v0, Landroid/app/Notification;->defaults:I

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    if-eqz v1, :cond_42

    .line 283
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_44

    .line 285
    :cond_42
    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_44
    :goto_44
    return-object v1
.end method

.method public final calculateUserSentiment()V
    .registers 2

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    if-eqz v0, :cond_13

    :cond_10
    const/4 v0, 0x1

    .line 1311
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    :cond_13
    return-void
.end method

.method public final calculateVibration()Landroid/os/VibrationEffect;
    .registers 8

    .line 352
    new-instance v0, Lcom/android/server/notification/VibratorHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/notification/VibratorHelper;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 354
    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_19

    move v2, v3

    goto :goto_1a

    :cond_19
    move v2, v4

    .line 355
    :goto_1a
    invoke-virtual {v0, v2}, Lcom/android/server/notification/VibratorHelper;->createDefaultVibration(Z)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 358
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v5

    if-nez v5, :cond_34

    move-object v5, v0

    goto :goto_42

    .line 360
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object v5

    goto :goto_42

    :cond_41
    const/4 v5, 0x0

    .line 364
    :goto_42
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v6, :cond_64

    .line 365
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_64

    .line 367
    iget p0, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_59

    goto :goto_5a

    :cond_59
    move v3, v4

    :goto_5a
    if-eqz v3, :cond_5d

    goto :goto_65

    .line 372
    :cond_5d
    iget-object p0, v1, Landroid/app/Notification;->vibrate:[J

    invoke-static {p0, v2}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object v0

    goto :goto_65

    :cond_64
    move-object v0, v5

    :goto_65
    return-object v0
.end method

.method public canBubble()Z
    .registers 1

    .line 1211
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    return p0
.end method

.method public canShowBadge()Z
    .registers 1

    .line 1219
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    return p0
.end method

.method public copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 467
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 468
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 469
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 470
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 471
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 472
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 473
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 474
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 475
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 476
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 477
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JZI)V
    .registers 9

    .line 491
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 493
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p4

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p4

    const-wide v0, 0x10900000001L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10e00000002L

    .line 494
    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 495
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p4

    if-eqz p4, :cond_32

    const-wide p4, 0x10900000004L

    .line 496
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_32
    const-wide p4, 0x10800000008L

    .line 498
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p4, 0x10800000007L

    .line 499
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    invoke-virtual {p1, p4, p5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p4, 0x10500000003L

    .line 500
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p4, 0x10900000009L

    .line 501
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p4, 0x1110000000aL

    .line 502
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 503
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object p4

    if-eqz p4, :cond_95

    const-wide p4, 0x10900000005L

    .line 504
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 506
    :cond_95
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p4

    if-eqz p4, :cond_a7

    .line 507
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p4

    const-wide v0, 0x10b00000006L

    invoke-virtual {p4, p1, v0, v1}, Landroid/media/AudioAttributes;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_a7
    const-wide p4, 0x1090000000bL

    .line 509
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p4, 0x1090000000cL

    .line 510
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p4, p5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 512
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    .registers 14
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "opPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/app/Notification;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "originalFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "seen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v1}, Landroid/service/notification/NotificationStats;->hasSeen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "groupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/notification/NotificationRecord;->dumpNotification(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "publicNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/notification/NotificationRecord;->dumpNotification(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 539
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stats="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mContactAffinity="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mRecentlyIntrusive="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mPackagePriority="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mPackageVisibility="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mSystemImportance="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 545
    invoke-static {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 544
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mAsstImportance="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 547
    invoke-static {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 546
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mImportance="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 549
    invoke-static {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 548
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mImportanceExplanation="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mIsAppImportanceLocked="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mIntercept="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mHidden=="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mGlobalSortKey="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance p4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd\' \'HH:mm:ss.SSSZ"

    invoke-direct {p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRankingTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mCreationTimeMs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mVisibleSinceMs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mUpdateTimeMs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mInterruptionTimeMs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mSuppressedVisualEffects= "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    iget-boolean p4, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_4d6

    .line 571
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p3, Landroid/app/Notification;->defaults:I

    .line 572
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v5, p3, Landroid/app/Notification;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "defaults=0x%08x flags=0x%08x"

    .line 571
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "n.sound="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "n.audioStreamType="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p3, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "n.audioAttributes="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p3, Landroid/app/Notification;->ledARGB:I

    .line 577
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v5, p3, Landroid/app/Notification;->ledOnMS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p3, Landroid/app/Notification;->ledOffMS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "  led=0x%08x onMs=%d offMs=%d"

    .line 576
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "vibrate="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Landroid/app/Notification;->vibrate:[J

    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    :cond_4d6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mSound= "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mVibration= "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mAttributes= "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mLight= "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mShowBadge="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mColorized="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/Notification;->isColorized()Z

    move-result v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mAllowBubble="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isBubble="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mIsInterruptive="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "effectiveNotificationChannel="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object p4

    const-string v4, ","

    if-eqz p4, :cond_607

    .line 591
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "overridePeople= "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    :cond_607
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object p4

    if-eqz p4, :cond_62d

    .line 594
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "snoozeCriteria="

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    :cond_62d
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mAdjustments="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "shortcut="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " found valid? "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz p3, :cond_667

    move p3, v2

    goto :goto_668

    :cond_667
    move p3, v3

    :goto_668
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p4, "mSuggestionsGeneratedByAssistant="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    if-eqz p3, :cond_695

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    goto :goto_696

    :cond_695
    move p3, v3

    :goto_696
    if-eqz p3, :cond_6ef

    .line 603
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mSystemGeneratedSmartActions="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v3

    :goto_6ae
    if-ge p4, p3, :cond_6ef

    .line 605
    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    .line 606
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 607
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v3

    .line 610
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    aput-object v8, v7, v1

    const-string/jumbo v8, "null"

    if-nez v5, :cond_6d5

    move-object v6, v8

    :cond_6d5
    aput-object v6, v7, v0

    const/4 v5, 0x4

    .line 613
    iget-object v4, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_6dd

    goto :goto_6e1

    :cond_6dd
    invoke-virtual {v4}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_6e1
    aput-object v8, v7, v5

    const-string v4, "%s    [%d] \"%s\" \"%s\"-> %s"

    .line 608
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_6ae

    .line 617
    :cond_6ef
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    if-eqz p3, :cond_6f8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    goto :goto_6f9

    :cond_6f8
    move p3, v3

    :goto_6f9
    if-eqz p3, :cond_737

    .line 619
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mSmartReplies="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v3

    :goto_711
    if-ge p4, p3, :cond_737

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 622
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%s      [%d] %s"

    .line 621
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_711

    :cond_737
    return-void
.end method

.method public final dumpNotification(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/Notification;Z)V
    .registers 16

    if-nez p3, :cond_17

    .line 631
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "None"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 635
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fullscreenIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "contentIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deleteIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/app/Notification;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "groupAlertBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tickerText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    iget-object v0, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "null"

    const/4 v2, 0x0

    if-nez v0, :cond_f9

    .line 644
    iget-object v0, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_f5

    .line 647
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_ea

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_ec

    :cond_ea
    const-string v0, ""

    :goto_ec
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "..."

    .line 648
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fc

    .line 650
    :cond_f5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fc

    .line 653
    :cond_f9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    :goto_fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "contentView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bigContentView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "headsUpContentView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 658
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p3, Landroid/app/Notification;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "color=0x%08x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "timeout="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {p3}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 664
    invoke-virtual {p3, v0, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parcelDataSize="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p3, Landroid/app/Notification;->parcelDataSize:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mAllowSystemGeneratedContextualActions="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p3}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    iget-object v0, p3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_238

    array-length v0, v0

    if-lez v0, :cond_238

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "actions={"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    iget-object v0, p3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    move v6, v2

    :goto_1f5
    if-ge v6, v0, :cond_224

    .line 675
    iget-object v7, p3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v7, v7, v6

    if-eqz v7, :cond_221

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    .line 679
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget-object v9, v7, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    aput-object v9, v8, v5

    .line 681
    iget-object v7, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v7, :cond_212

    move-object v7, v1

    goto :goto_216

    :cond_212
    invoke-virtual {v7}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_216
    aput-object v7, v8, v4

    const-string v7, "%s    [%d] \"%s\" -> %s"

    .line 677
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_221
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f5

    .line 685
    :cond_224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  }"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    :cond_238
    iget-object v0, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_36c

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_36c

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "extras={"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    iget-object v0, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_260
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_357

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 690
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    iget-object v7, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_294

    .line 693
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_260

    .line 695
    :cond_294
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p4, :cond_2c4

    .line 696
    instance-of v8, v7, Ljava/lang/CharSequence;

    if-eqz v8, :cond_2c4

    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationRecord;->shouldRedactStringExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c4

    new-array v6, v3, [Ljava/lang/Object;

    .line 697
    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, " [length=%d]"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_352

    .line 699
    :cond_2c4
    instance-of v6, v7, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2ea

    new-array v6, v5, [Ljava/lang/Object;

    .line 700
    check-cast v7, Landroid/graphics/Bitmap;

    .line 701
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    .line 702
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, " (%dx%d)"

    .line 700
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_352

    .line 703
    :cond_2ea
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    const-string v8, ")"

    const-string v9, " ("

    if-eqz v6, :cond_339

    .line 704
    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 705
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p4, :cond_352

    move v8, v2

    :goto_314
    if-ge v8, v6, :cond_352

    .line 708
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-array v9, v4, [Ljava/lang/Object;

    aput-object p2, v9, v2

    .line 710
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "%s      [%d] %s"

    .line 709
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_314

    .line 714
    :cond_339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 716
    :cond_352
    :goto_352
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_260

    .line 719
    :cond_357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_36c
    return-void
.end method

.method public formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_6

    const-string/jumbo p0, "null"

    return-object p0

    :cond_6
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 518
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "%s/0x%08x (%d bytes): %s"

    .line 517
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAdjustmentIssuer()Ljava/lang/String;
    .registers 1

    .line 845
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    return-object p0
.end method

.method public getAlertLimited()Z
    .registers 1

    .line 1300
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    return p0
.end method

.method public getAssistantImportance()I
    .registers 1

    .line 927
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    return p0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 1

    .line 1235
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public getAuthoritativeRank()I
    .registers 1

    .line 1176
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    return p0
.end method

.method public getChannel()Landroid/app/NotificationChannel;
    .registers 1

    .line 1188
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method public getContactAffinity()F
    .registers 1

    .line 858
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    return p0
.end method

.method public getCriticality()I
    .registers 1

    .line 1017
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    return p0
.end method

.method public getEditChoicesBeforeSending()Z
    .registers 1

    .line 1376
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mEditChoicesBeforeSending:Z

    return p0
.end method

.method public getExposureMs(J)I
    .registers 7

    .line 1096
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_c

    :cond_a
    sub-long/2addr p1, v0

    long-to-int p0, p1

    :goto_c
    return p0
.end method

.method public getFlags()I
    .registers 1

    .line 483
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    return p0
.end method

.method public getFreshnessMs(J)I
    .registers 5

    .line 1080
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    sub-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method

.method public getGlobalSortKey()Ljava/lang/String;
    .registers 1

    .line 1155
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    return-object p0
.end method

.method public getGrantableUris()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1451
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getGroupKey()Ljava/lang/String;
    .registers 1

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImportance()I
    .registers 1

    .line 966
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    return p0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .registers 2

    .line 986
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1e

    const/4 p0, 0x0

    return-object p0

    :cond_13
    const-string/jumbo p0, "system"

    return-object p0

    :cond_17
    const-string p0, "asst"

    return-object p0

    :cond_1a
    const-string/jumbo p0, "user"

    return-object p0

    :cond_1e
    const-string p0, "app"

    return-object p0
.end method

.method public getImportanceExplanationCode()I
    .registers 1

    .line 978
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    return p0
.end method

.method public getInitialImportance()I
    .registers 1

    .line 970
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget p0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    return p0
.end method

.method public getInitialImportanceExplanationCode()I
    .registers 1

    .line 982
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    return p0
.end method

.method public getInterruptionMs(J)I
    .registers 5

    .line 1100
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    sub-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method

.method public getIsAppImportanceLocked()Z
    .registers 1

    .line 1195
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    return p0
.end method

.method public getItemLogMaker()Landroid/metrics/LogMaker;
    .registers 2

    .line 1563
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 485
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastAudiblyAlertedMs()J
    .registers 3

    .line 1283
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastAudiblyAlertedMs:J

    return-wide v0
.end method

.method public getLastIntrusive()J
    .registers 3

    .line 873
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    return-wide v0
.end method

.method public getLifespanMs(J)I
    .registers 5

    .line 1088
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    sub-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method

.method public getLight()Lcom/android/server/notification/NotificationRecord$Light;
    .registers 1

    .line 1223
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    return-object p0
.end method

.method public getLogMaker()Landroid/metrics/LogMaker;
    .registers 3

    .line 1559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public getLogMaker(J)Landroid/metrics/LogMaker;
    .registers 6

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 1521
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1522
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x319

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1523
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31b

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1524
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1526
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getInterruptionMs(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x5dc

    .line 1525
    invoke-virtual {v0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1528
    iget p2, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    const/16 v0, -0x3e8

    if-eqz p2, :cond_81

    const/16 v1, 0x698

    .line 1530
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1529
    invoke-virtual {p1, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1533
    iget p2, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_63

    const/4 v1, 0x4

    if-ne p2, v1, :cond_81

    :cond_63
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget p2, p2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    if-eq p2, v0, :cond_81

    const/16 p2, 0x69a

    .line 1537
    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 1538
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1537
    invoke-virtual {p1, p2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 p2, 0x699

    .line 1539
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    .line 1540
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1539
    invoke-virtual {p1, p2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1544
    :cond_81
    iget p2, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    if-eq p2, v0, :cond_8e

    const/16 v0, 0x69b

    .line 1546
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1545
    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1551
    :cond_8e
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    if-eqz p0, :cond_9f

    const/16 p2, 0x6ce

    .line 1553
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1552
    invoke-virtual {p1, p2, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_9f
    return-object p1
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 1

    .line 482
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationType()I
    .registers 2

    .line 1436
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1438
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_11

    const/4 p0, 0x2

    return p0

    :cond_11
    const/4 p0, 0x4

    return p0
.end method

.method public getNumSmartActionsAdded()I
    .registers 1

    .line 1364
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartActionsAdded:I

    return p0
.end method

.method public getNumSmartRepliesAdded()I
    .registers 1

    .line 1356
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartRepliesAdded:I

    return p0
.end method

.method public getPackagePriority()I
    .registers 1

    .line 881
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    return p0
.end method

.method public getPackageVisibilityOverride()I
    .registers 1

    .line 889
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return p0
.end method

.method public getPeopleOverride()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1239
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPhoneNumbers()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1692
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getRankingScore()F
    .registers 1

    .line 974
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    return p0
.end method

.method public getRankingTimeMs()J
    .registers 3

    .line 1072
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    return-wide v0
.end method

.method public getSbn()Landroid/service/notification/StatusBarNotification;
    .registers 1

    .line 1654
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 1

    .line 1582
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public getSmartReplies()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1425
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSnoozeCriteria()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 1291
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSound()Landroid/net/Uri;
    .registers 1

    .line 1227
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    return-object p0
.end method

.method public getStats()Landroid/service/notification/NotificationStats;
    .registers 1

    .line 1324
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    return-object p0
.end method

.method public getSuggestionsGeneratedByAssistant()Z
    .registers 1

    .line 1372
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    return p0
.end method

.method public getSuppressedVisualEffects()I
    .registers 1

    .line 1057
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    return p0
.end method

.method public getSystemGeneratedSmartActions()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 1417
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p0

    return p0
.end method

.method public getUpdateTimeMs()J
    .registers 3

    .line 1104
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    return-wide v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 1

    .line 484
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public final getUserExplanation()Ljava/lang/String;
    .registers 3

    .line 893
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 894
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040610

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    .line 897
    :cond_13
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 487
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p0

    return p0
.end method

.method public getUserSentiment()I
    .registers 1

    .line 1320
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    return p0
.end method

.method public getVibration()Landroid/os/VibrationEffect;
    .registers 1

    .line 1231
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public hasAdjustment(Ljava/lang/String;)Z
    .registers 4

    .line 748
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v0

    .line 749
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/Adjustment;

    .line 750
    invoke-virtual {v1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 p0, 0x1

    .line 751
    monitor-exit v0

    return p0

    .line 754
    :cond_22
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public hasBeenVisiblyExpanded()Z
    .registers 1

    .line 1395
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->hasBeenVisiblyExpanded()Z

    move-result p0

    return p0
.end method

.method public hasPendingLogUpdate()Z
    .registers 1

    .line 1672
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mPendingLogUpdate:Z

    return p0
.end method

.method public hasRecordedInterruption()Z
    .registers 1

    .line 1270
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mRecordedInterruption:Z

    return p0
.end method

.method public hasSeenSmartReplies()Z
    .registers 1

    .line 1384
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mHasSeenSmartReplies:Z

    return p0
.end method

.method public hasUndecoratedRemoteView()Z
    .registers 5

    .line 1567
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 1568
    const-class v0, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 1569
    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    const-class v0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 1570
    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    .line 1571
    :goto_1a
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v3, :cond_29

    iget-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v3, :cond_29

    iget-object p0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    move p0, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move p0, v2

    :goto_2a
    if-eqz p0, :cond_2f

    if-nez v0, :cond_2f

    move v1, v2

    :cond_2f
    return v1
.end method

.method public isAudioAttributesUsage(I)Z
    .registers 2

    .line 1065
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isCategory(Ljava/lang/String;)Z
    .registers 2

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isConversation()Z
    .registers 6

    .line 1601
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1603
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_60

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mAppDemotedFromConvo:Z

    if-eqz v1, :cond_12

    goto :goto_60

    .line 1607
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mIsNotConversationOverride:Z

    if-eqz v1, :cond_17

    return v2

    .line 1610
    :cond_17
    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x1e

    if-nez v1, :cond_3b

    .line 1613
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mPkgAllowedAsConvo:Z

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    if-ge v0, v4, :cond_3a

    .line 1614
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string/jumbo v0, "msg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    return v3

    :cond_3a
    return v2

    .line 1620
    :cond_3b
    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    if-lt v1, v4, :cond_56

    const-class v1, Landroid/app/Notification$MessagingStyle;

    .line 1621
    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_55

    .line 1622
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isOnlyBots([Landroid/app/Person;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_55
    return v2

    .line 1625
    :cond_56
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHasSentValidMsg:Z

    if-eqz v0, :cond_5f

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez p0, :cond_5f

    return v2

    :cond_5f
    return v3

    :cond_60
    :goto_60
    return v2
.end method

.method public isFlagBubbleRemoved()Z
    .registers 1

    .line 1404
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mFlagBubbleRemoved:Z

    return p0
.end method

.method public isForegroundService()Z
    .registers 1

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isHidden()Z
    .registers 1

    .line 1033
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    return p0
.end method

.method public isImportanceFixed()Z
    .registers 1

    .line 935
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceFixed:Z

    return p0
.end method

.method public isIntercepted()Z
    .registers 1

    .line 1021
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    return p0
.end method

.method public isInterruptive()Z
    .registers 1

    .line 1274
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    return p0
.end method

.method public isNewEnoughForAlerting(J)Z
    .registers 3

    .line 1025
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result p0

    const/16 p1, 0x7d0

    if-gt p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isOnlyBots([Landroid/app/Person;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_18

    .line 1640
    array-length v0, p1

    if-nez v0, :cond_7

    goto :goto_18

    .line 1644
    :cond_7
    array-length v0, p1

    move v1, p0

    :goto_9
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    .line 1645
    invoke-virtual {v2}, Landroid/app/Person;->isBot()Z

    move-result v2

    if-nez v2, :cond_14

    return p0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    const/4 p0, 0x1

    :cond_18
    :goto_18
    return p0
.end method

.method public final isPreChannelsNotification()Z
    .registers 3

    .line 254
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 255
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public isProxied()Z
    .registers 2

    .line 1432
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isRecentlyIntrusive()Z
    .registers 1

    .line 869
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    return p0
.end method

.method public isSeen()Z
    .registers 1

    .line 1160
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {p0}, Landroid/service/notification/NotificationStats;->hasSeen()Z

    move-result p0

    return p0
.end method

.method public isTextChanged()Z
    .registers 1

    .line 1278
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    return p0
.end method

.method public mergePhoneNumbers(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_19

    .line 1681
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_19

    .line 1685
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    if-nez v0, :cond_14

    .line 1686
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 1688
    :cond_14
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final notificationSoundBlockedByMDM()Z
    .registers 7

    .line 294
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 297
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 300
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 305
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_48

    .line 307
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getApplicationNotificationModeAsUser(I)I

    move-result p0
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_4c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_48

    const/4 p0, 0x1

    .line 312
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_51

    :catchall_4c
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    throw p0

    :cond_51
    :goto_51
    return v1
.end method

.method public rankingScoreMatches(F)Z
    .registers 4

    .line 1662
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p0, p0, v0

    if-gez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public recordDirectReplied()V
    .registers 1

    .line 1332
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {p0}, Landroid/service/notification/NotificationStats;->setDirectReplied()V

    return-void
.end method

.method public recordDismissalSentiment(I)V
    .registers 2

    .line 1340
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationStats;->setDismissalSentiment(I)V

    return-void
.end method

.method public recordDismissalSurface(I)V
    .registers 2

    .line 1336
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationStats;->setDismissalSurface(I)V

    return-void
.end method

.method public recordExpanded()V
    .registers 1

    .line 1328
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {p0}, Landroid/service/notification/NotificationStats;->setExpanded()V

    return-void
.end method

.method public recordSnoozed()V
    .registers 1

    .line 1344
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {p0}, Landroid/service/notification/NotificationStats;->setSnoozed()V

    return-void
.end method

.method public recordViewedSettings()V
    .registers 1

    .line 1348
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {p0}, Landroid/service/notification/NotificationStats;->setViewedSettings()V

    return-void
.end method

.method public setAlertLimited(Z)V
    .registers 2

    .line 1304
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    return-void
.end method

.method public setAllowBubble(Z)V
    .registers 2

    .line 1215
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    return-void
.end method

.method public setAssistantImportance(I)V
    .registers 2

    .line 917
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    return-void
.end method

.method public setAudiblyAlerted(Z)V
    .registers 4

    if-eqz p1, :cond_7

    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/16 v0, -0x1

    :goto_9
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastAudiblyAlertedMs:J

    return-void
.end method

.method public setAuthoritativeRank(I)V
    .registers 2

    .line 1172
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    return-void
.end method

.method public setContactAffinity(F)V
    .registers 2

    .line 854
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    return-void
.end method

.method public setCriticality(I)V
    .registers 2

    .line 1013
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    return-void
.end method

.method public setEditChoicesBeforeSending(Z)V
    .registers 2

    .line 1380
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mEditChoicesBeforeSending:Z

    return-void
.end method

.method public setFlagBubbleRemoved(Z)V
    .registers 2

    .line 1408
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mFlagBubbleRemoved:Z

    return-void
.end method

.method public setGlobalSortKey(Ljava/lang/String;)V
    .registers 2

    .line 1151
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    return-void
.end method

.method public setHasSentValidMsg(Z)V
    .registers 2

    .line 1586
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mHasSentValidMsg:Z

    return-void
.end method

.method public setHidden(Z)V
    .registers 2

    .line 1029
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    return-void
.end method

.method public setImportance(I)V
    .registers 2

    .line 961
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    return-void
.end method

.method public setImportanceFixed(Z)V
    .registers 2

    .line 931
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceFixed:Z

    return-void
.end method

.method public setIntercepted(Z)Z
    .registers 2

    .line 1003
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    return p1
.end method

.method public setInterruptive(Z)V
    .registers 6

    .line 1243
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    .line 1244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_a

    move-wide v2, v0

    goto :goto_c

    .line 1245
    :cond_a
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    :goto_c
    iput-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    if-eqz p1, :cond_3c

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v2, 0x5dd

    .line 1249
    invoke-virtual {p1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/4 v2, 0x1

    .line 1250
    invoke-virtual {p1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v2, 0x5dc

    .line 1252
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getInterruptionMs(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1251
    invoke-virtual {p1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1248
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1253
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getInterruptionMs(J)I

    move-result p0

    const-string/jumbo v0, "note_interruptive"

    invoke-static {p1, v0, p0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3c
    return-void
.end method

.method public setIsAppImportanceLocked(Z)V
    .registers 2

    .line 849
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 850
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    return-void
.end method

.method public setNumSmartActionsAdded(I)V
    .registers 2

    .line 1360
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartActionsAdded:I

    return-void
.end method

.method public setNumSmartRepliesAdded(I)V
    .registers 2

    .line 1352
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartRepliesAdded:I

    return-void
.end method

.method public setOverrideGroupKey(Ljava/lang/String;)V
    .registers 2

    .line 1184
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    return-void
.end method

.method public setPackagePriority(I)V
    .registers 2

    .line 877
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    return-void
.end method

.method public setPackageVisibilityOverride(I)V
    .registers 2

    .line 885
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-void
.end method

.method public setPendingLogUpdate(Z)V
    .registers 2

    .line 1666
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mPendingLogUpdate:Z

    return-void
.end method

.method public setPeopleOverride(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1287
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    return-void
.end method

.method public setPkgAllowedAsConvo(Z)V
    .registers 2

    .line 1594
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mPkgAllowedAsConvo:Z

    return-void
.end method

.method public setPostSilently(Z)V
    .registers 2

    .line 1045
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mPostSilently:Z

    return-void
.end method

.method public setRecentlyIntrusive(Z)V
    .registers 4

    .line 862
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    if-eqz p1, :cond_a

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    :cond_a
    return-void
.end method

.method public setRecordedInterruption(Z)V
    .registers 2

    .line 1266
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mRecordedInterruption:Z

    return-void
.end method

.method public setSeen()V
    .registers 2

    .line 1165
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setSeen()V

    .line 1166
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 1167
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    :cond_d
    return-void
.end method

.method public setSeenSmartReplies(Z)V
    .registers 2

    .line 1388
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mHasSeenSmartReplies:Z

    return-void
.end method

.method public setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    .line 1578
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method public setShowBadge(Z)V
    .registers 2

    .line 1207
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    return-void
.end method

.method public setSmartReplies(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1421
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    return-void
.end method

.method public setSnoozeCriteria(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;)V"
        }
    .end annotation

    .line 1295
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-void
.end method

.method public setSuggestionsGeneratedByAssistant(Z)V
    .registers 2

    .line 1368
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    return-void
.end method

.method public setSuppressedVisualEffects(I)V
    .registers 2

    .line 1053
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    return-void
.end method

.method public setSystemGeneratedSmartActions(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;)V"
        }
    .end annotation

    .line 1413
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    return-void
.end method

.method public setSystemImportance(I)V
    .registers 2

    .line 905
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 908
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    return-void
.end method

.method public setTextChanged(Z)V
    .registers 2

    .line 1262
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    return-void
.end method

.method public final setUserSentiment(I)V
    .registers 2

    .line 1316
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    return-void
.end method

.method public setVisibility(ZIILcom/android/server/notification/NotificationRecordLogger;)V
    .registers 15

    .line 1112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_8

    move-wide v2, v0

    goto :goto_a

    .line 1113
    :cond_8
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    :goto_a
    iput-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 1114
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    .line 1115
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x80

    .line 1116
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    if-eqz p1, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x2

    .line 1117
    :goto_20
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x31e

    .line 1118
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x573

    .line 1119
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p3

    .line 1115
    invoke-static {p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    if-eqz p1, :cond_4c

    .line 1121
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->setSeen()V

    .line 1122
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v2

    const-string/jumbo v3, "note_freshness"

    invoke-static {p3, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1124
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1125
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v6

    .line 1126
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v7

    const/4 v8, 0x0

    move v5, p1

    move v9, p2

    .line 1124
    invoke-static/range {v4 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationVisibility(Ljava/lang/String;IIIII)V

    .line 1129
    invoke-interface {p4, p0, p1}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationVisibility(Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public shouldPostSilently()Z
    .registers 1

    .line 1049
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mPostSilently:Z

    return p0
.end method

.method public final shouldRedactStringExtra(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    :cond_4
    const/4 v0, -0x1

    .line 725
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_34

    goto :goto_2e

    :sswitch_e
    const-string v1, "android.support.v4.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_2e

    :cond_17
    const/4 v0, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v1, "android.substName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_2e

    :cond_22
    move v0, p0

    goto :goto_2e

    :sswitch_24
    const-string v1, "android.template"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    packed-switch v0, :pswitch_data_42

    return p0

    :pswitch_32
    return v2

    nop

    :sswitch_data_34
    .sparse-switch
        -0x506caae7 -> :sswitch_24
        -0x13b881f3 -> :sswitch_19
        0x4b09951a -> :sswitch_e
    .end sparse-switch

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 741
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 742
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 743
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 744
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    const-string p0, "NotificationRecord(0x%08x: pkg=%s user=%s id=%d tag=%s importance=%d key=%s: %s)"

    .line 738
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 1200
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1201
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    :cond_a
    return-void
.end method

.method public userDemotedAppFromConvoSpace(Z)V
    .registers 2

    .line 1590
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mAppDemotedFromConvo:Z

    return-void
.end method

.method public final visitGrantableUri(Landroid/net/Uri;ZZ)V
    .registers 13

    if-eqz p1, :cond_af

    .line 1482
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_af

    .line 1485
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1d

    return-void

    .line 1488
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1491
    :try_start_21
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v3, 0x0

    .line 1492
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    .line 1494
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    move v2, v0

    .line 1491
    invoke-interface/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 1496
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    if-nez v1, :cond_40

    .line 1497
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    .line 1499
    :cond_40
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_45} :catch_48
    .catchall {:try_start_21 .. :try_end_45} :catchall_46

    goto :goto_ac

    :catchall_46
    move-exception p0

    goto :goto_a8

    :catch_48
    move-exception v1

    if-nez p2, :cond_ac

    const-string p2, ": "

    const-string v2, " from "

    const-string v3, "NotificationRecord"

    if-eqz p3, :cond_7c

    .line 1503
    :try_start_53
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 1504
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Replacing "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 1506
    :cond_7c
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    const/16 p3, 0x1c

    if-ge p0, p3, :cond_a7

    .line 1509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1509
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 1507
    :cond_a7
    throw v1
    :try_end_a8
    .catchall {:try_start_53 .. :try_end_a8} :catchall_46

    .line 1515
    :goto_a8
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1516
    throw p0

    .line 1515
    :cond_ac
    :goto_ac
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_af
    :goto_af
    return-void
.end method
