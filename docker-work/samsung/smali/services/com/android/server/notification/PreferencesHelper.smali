.class public Lcom/android/server/notification/PreferencesHelper;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/PreferencesHelper$Delegate;,
        Lcom/android/server/notification/PreferencesHelper$PackagePreferences;,
        Lcom/android/server/notification/PreferencesHelper$LockableAppFields;
    }
.end annotation


# static fields
.field public static final ATT_ALLOW_BUBBLE:Ljava/lang/String; = "allow_bubble"

.field public static final ATT_ALLOW_EDGE_LIGHTING:Ljava/lang/String; = "allow_edge_lighting"

.field public static final ATT_ALLOW_POPUP:Ljava/lang/String; = "allow_popup"

.field public static final ATT_ALLOW_SUB_DISPLAY_NOTI:Ljava/lang/String; = "allow_sub_display_noti"

.field public static final ATT_APP_LOCKSCREEN_VISIBILITY:Ljava/lang/String; = "app_lockscreen_visibility"

.field public static final ATT_APP_USER_LOCKED_FIELDS:Ljava/lang/String; = "app_user_locked_fields"

.field public static final ATT_CALLSTACK_FOR_IMPORTANCE:Ljava/lang/String; = "callstack_for_importance"

.field public static final ATT_ENABLED:Ljava/lang/String; = "enabled"

.field public static final ATT_ENABLE_REMINDER:Ljava/lang/String; = "enable_reminder"

.field public static final ATT_HIDE_SILENT:Ljava/lang/String; = "hide_gentle"

.field public static final ATT_ID:Ljava/lang/String; = "id"

.field public static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field public static final ATT_MUTE_FOR_WEARABLE_APPS:Ljava/lang/String; = "mute_for_wearable_app"

.field public static final ATT_NAME:Ljava/lang/String; = "name"

.field public static final ATT_NOTIFICATION_ALERTS_ENABLED:Ljava/lang/String; = "notification_alerts_enabled"

.field public static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field public static final ATT_SENT_INVALID_MESSAGE:Ljava/lang/String; = "sent_invalid_msg"

.field public static final ATT_SENT_VALID_MESSAGE:Ljava/lang/String; = "sent_valid_msg"

.field public static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field public static final ATT_SUPPORT_HIDE_CONTENT_VERSION:Ljava/lang/String; = "hide_content_version"

.field public static final ATT_UID:Ljava/lang/String; = "uid"

.field public static final ATT_USER_ALLOWED:Ljava/lang/String; = "allowed"

.field public static final ATT_USER_DEMOTED_INVALID_MSG_APP:Ljava/lang/String; = "user_demote_msg_app"

.field public static final ATT_VERSION:Ljava/lang/String; = "version"

.field public static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final DEFAULT_ALLOW_EDGE_LIGHTING:Z = true

.field public static final DEFAULT_ALLOW_POPUP:Z = true

.field public static final DEFAULT_ALLOW_SUB_DISPLAY_NOTI:Z = false

.field public static final DEFAULT_APP_LOCKED_IMPORTANCE:Z = false

.field public static final DEFAULT_APP_LOCKSCREEN_VISIBILITY:I = -0x3e8

.field public static final DEFAULT_BUBBLES_ENABLED:Z = true

.field public static final DEFAULT_BUBBLE_PREFERENCE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS:Z = false
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_IMPORTANCE:I = -0x3e8

.field public static final DEFAULT_LOCKED_APP_FIELDS:I = 0x0

.field public static final DEFAULT_MEDIA_NOTIFICATION_FILTERING:Z = true

.field public static final DEFAULT_OEM_LOCKED_IMPORTANCE:Z = false

.field public static final DEFAULT_PRIORITY:I = 0x0

.field public static final DEFAULT_REMINDER_ENABLED:Z = false

.field public static final DEFAULT_SHOW_BADGE:Z = true

.field public static final DEFAULT_VISIBILITY:I = -0x3e8

.field public static final NON_BLOCKABLE_CHANNEL_DELIM:Ljava/lang/String; = ":"

.field public static final NOTIFICATION_CHANNEL_COUNT_LIMIT:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NOTIFICATION_CHANNEL_DELETION_RETENTION_DAYS:I = 0x1e

.field public static final NOTIFICATION_CHANNEL_GROUP_COUNT_LIMIT:I = 0x1770
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NOTIFICATION_CHANNEL_GROUP_PULL_LIMIT:I = 0x3e8

.field public static final NOTIFICATION_CHANNEL_PULL_LIMIT:I = 0x7d0

.field public static final NOTIFICATION_PREFERENCES_PULL_LIMIT:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "NotificationPrefHelper"

.field public static final TAG_CHANNEL:Ljava/lang/String; = "channel"

.field public static final TAG_DELEGATE:Ljava/lang/String; = "delegate"

.field public static final TAG_GROUP:Ljava/lang/String; = "channelGroup"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_RANKING:Ljava/lang/String; = "ranking"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG_STATUS_ICONS:Ljava/lang/String; = "silent_status_icons"

.field public static final UNKNOWN_UID:I = -0x2710
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final XML_VERSION_BUBBLES_UPGRADE:I = 0x1

.field public static final XML_VERSION_NOTIF_PERMISSION:I = 0x3

.field public static final XML_VERSION_REVIEW_PERMISSIONS_NOTIFICATION:I = 0x4

.field public static final XML_VERSION_SUPPORT_HIDE_CONTENT:I = 0x1


# instance fields
.field public final XML_VERSION:I

.field public mAllowInvalidShortcuts:Z

.field public mAllowList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mAreChannelsBypassingDnd:Z

.field public mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field public mBubblesEnabled:Landroid/util/SparseBooleanArray;

.field public final mContext:Landroid/content/Context;

.field public mCscConfigNoneBlockableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeviceFirstApiLevel:I

.field public mHideContentAllowList:[Ljava/lang/String;

.field public mHideContentXmlVersion:I

.field public mHideSilentStatusBarIcons:Z

.field public mIsMediaNotificationFilteringEnabled:Z

.field public mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

.field public mLockScreenPrivateNotificationsValue:I

.field public mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

.field public final mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field public mOemLockedApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPackagePreferences:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;"
        }
    .end annotation
.end field

.field public final mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

.field public mPkgPerms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/PermissionHelper$PackagePermission;",
            ">;"
        }
    .end annotation
.end field

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field public final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;"
        }
    .end annotation
.end field

.field public mShouldMigratePerm:Z

.field public mShowReviewPermissionsNotification:Z

.field public final mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

.field public final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/PermissionHelper;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;Z)V
    .registers 39

    move-object/from16 v0, p0

    .line 289
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 225
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    .line 239
    iput-boolean v1, v0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    const/4 v1, 0x0

    .line 241
    iput-boolean v1, v0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 244
    iput-boolean v1, v0, Lcom/android/server/notification/PreferencesHelper;->mAllowInvalidShortcuts:Z

    .line 247
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    const/16 v2, -0x3e8

    .line 250
    iput v2, v0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotificationsValue:I

    .line 251
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    .line 252
    iput v1, v0, Lcom/android/server/notification/PreferencesHelper;->mHideContentXmlVersion:I

    const-string/jumbo v2, "ro.product.first_api_level"

    .line 253
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/server/notification/PreferencesHelper;->mDeviceFirstApiLevel:I

    const-string v3, "com.samsung.android.messaging"

    const-string v4, "com.verizon.messaging.vzmsgs"

    const-string v5, "com.kakao.talk"

    const-string/jumbo v6, "jp.naver.line.android"

    const-string v7, "com.sds.mysinglesquare"

    const-string v8, "com.samsung.knox.message"

    const-string v9, "com.whatsapp"

    const-string v10, "com.google.android.talk"

    const-string v11, "com.sgiggle.production"

    const-string v12, "com.nimbuzz"

    const-string/jumbo v13, "kik.android"

    const-string v14, "com.bsb.hike"

    const-string v15, "com.viber.voip"

    const-string v16, "com.tencent.mm"

    const-string/jumbo v17, "org.telegram.messenger"

    const-string v18, "com.skype.raider"

    const-string v19, "com.facebook.orca"

    const-string v20, "com.zing.zalo"

    const-string v21, "com.google.android.apps.tachyon"

    const-string v22, "com.snapchat.android"

    const-string v23, "com.discord"

    const-string v24, "com.skt.prod.dialer"

    const-string v25, "Uxpp.UC"

    const-string v26, "com.google.android.apps.messaging"

    const-string v27, "com.sds.teams"

    const-string v28, "com.google.android.apps.dynamite"

    .line 255
    filled-new-array/range {v3 .. v28}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mHideContentAllowList:[Ljava/lang/String;

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mPkgPerms:Ljava/util/ArrayList;

    .line 403
    iput-boolean v1, v0, Lcom/android/server/notification/PreferencesHelper;->mShouldMigratePerm:Z

    .line 1633
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    move-object/from16 v1, p1

    .line 290
    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    move-object/from16 v1, p4

    .line 291
    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    move-object/from16 v1, p3

    .line 292
    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    move-object/from16 v1, p5

    .line 293
    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    move-object/from16 v1, p2

    .line 294
    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v1, p6

    .line 295
    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    move-object/from16 v1, p7

    .line 296
    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v1, p8

    .line 297
    iput-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    move/from16 v1, p9

    .line 298
    iput-boolean v1, v0, Lcom/android/server/notification/PreferencesHelper;->mShowReviewPermissionsNotification:Z

    const/4 v1, 0x4

    .line 300
    iput v1, v0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateMediaNotificationFilteringEnabled()V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd()V

    .line 306
    sget-boolean v1, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    if-eqz v1, :cond_c1

    .line 307
    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mHideContentAllowList:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/PreferencesHelper;->setHideContentAllowList([Ljava/lang/String;)V

    :cond_c1
    return-void
.end method

.method public static packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 3315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 3319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public areChannelsBypassingDnd()Z
    .registers 1

    .line 2240
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    return p0
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .registers 7

    .line 3186
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    return v0

    .line 3190
    :cond_9
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_27

    .line 3191
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 3192
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_badging"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_24

    move v0, v2

    .line 3191
    :cond_24
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3196
    :cond_27
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public bubblesEnabled(Landroid/os/UserHandle;)Z
    .registers 7

    .line 3222
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    return v0

    .line 3226
    :cond_9
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_27

    .line 3227
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 3228
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_bubbles"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_24

    move v0, v2

    .line 3227
    :cond_24
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3232
    :cond_27
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public canAppBypassDnd(Ljava/lang/String;I)Z
    .registers 3

    .line 3455
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->hasNotificationChannelsBypassingDnd(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 4

    .line 994
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 995
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 996
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public canShowNotificationsOnLockscreen(I)Z
    .registers 3

    .line 3284
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3285
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    .line 3287
    :cond_b
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public canShowPrivateNotificationsOnLockScreen(I)Z
    .registers 3

    .line 3292
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3293
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 3295
    :cond_b
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public final channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z
    .registers 5

    .line 2216
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_10

    return p1

    .line 2221
    :cond_10
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    if-nez p0, :cond_1f

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    return p1
.end method

.method public clearData(Ljava/lang/String;I)V
    .registers 7

    .line 3086
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3087
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 3089
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 3090
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    const/4 p2, 0x0

    .line 3091
    iput-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 p2, 0x0

    .line 3092
    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 3093
    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    const/16 v1, -0x3e8

    .line 3094
    iput v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 3095
    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 3096
    iput v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/4 v2, 0x1

    .line 3097
    iput-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 3099
    iput-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    .line 3101
    iput-boolean p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    .line 3103
    iput-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    .line 3106
    iput-boolean p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 3109
    sget-boolean v3, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    if-eqz v3, :cond_43

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 3110
    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    goto :goto_45

    .line 3112
    :cond_43
    iput v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 3116
    :goto_45
    iput-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    .line 3119
    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V
    .registers 2

    .line 1375
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    return-void
.end method

.method public clearWearableMutedAppList(I)V
    .registers 7

    .line 3346
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3347
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    .line 3349
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 3350
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_1f

    const/4 v4, -0x1

    .line 3351
    iput v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3354
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 786
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_8

    return v1

    .line 790
    :cond_8
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x1040419

    if-eqz v0, :cond_28

    .line 791
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    return v1

    .line 796
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-nez v0, :cond_2f

    return v1

    .line 803
    :cond_2f
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 805
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-direct {v0, v2, p0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 807
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p0, v2, :cond_43

    move v1, v3

    :cond_43
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 808
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 809
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v1, -0x3e8

    if-eq p0, v1, :cond_55

    const/4 p0, 0x4

    .line 810
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 812
    :cond_55
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz p0, :cond_5c

    .line 813
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 815
    :cond_5c
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq p0, v1, :cond_63

    .line 816
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 818
    :cond_63
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z
    .registers 16

    .line 1214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1219
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1220
    :try_start_1d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-eqz v2, :cond_23b

    .line 1224
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_59

    .line 1226
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "NotificationChannelGroup doesn\'t exist : pkg="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", channel group="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    :goto_59
    const-string/jumbo v3, "miscellaneous"

    .line 1229
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_233

    .line 1232
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/app/NotificationChannel;

    const/16 v3, -0x3e8

    const/4 v4, 0x0

    if-eqz v5, :cond_162

    if-eqz p4, :cond_162

    .line 1235
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p4

    if-eqz p4, :cond_9a

    .line 1237
    invoke-virtual {v5, v4}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    const-wide/16 v6, -0x1

    .line 1238
    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 1243
    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1245
    iget-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {p4, p3, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    move p4, v1

    goto :goto_9b

    :cond_9a
    move p4, v4

    :goto_9b
    move v2, p4

    .line 1248
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_be

    .line 1249
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    move v2, v1

    .line 1252
    :cond_be
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d4

    .line 1253
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    move v2, v1

    .line 1256
    :cond_d4
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v6

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v7

    if-eq v6, v7, :cond_e6

    .line 1257
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {v5, v2}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    move v2, v1

    .line 1260
    :cond_e6
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_fa

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_fa

    .line 1261
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    move v2, v1

    .line 1267
    :cond_fa
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    .line 1269
    invoke-static {v5}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v8

    .line 1270
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v7

    if-nez v7, :cond_11a

    .line 1271
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v9

    if-ge v7, v9, :cond_11a

    .line 1272
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    move v2, v1

    .line 1278
    :cond_11a
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v7

    if-nez v7, :cond_141

    if-eqz p5, :cond_141

    .line 1279
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p5

    .line 1280
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v7

    if-ne p5, v7, :cond_12e

    if-eqz p4, :cond_141

    .line 1281
    :cond_12e
    invoke-virtual {v5, p5}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 1284
    iget-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne p5, v2, :cond_13e

    .line 1285
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p5

    if-eq v6, p5, :cond_13c

    goto :goto_13e

    :cond_13c
    move v2, v1

    goto :goto_141

    :cond_13e
    :goto_13e
    move p5, v1

    move v2, p5

    goto :goto_142

    :cond_141
    :goto_141
    move p5, v4

    .line 1291
    :goto_142
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v4

    if-ne v4, v3, :cond_150

    .line 1292
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    invoke-virtual {v5, p3}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    goto :goto_151

    :cond_150
    move v1, v2

    .line 1296
    :goto_151
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    if-eqz v1, :cond_21c

    if-nez p4, :cond_21c

    .line 1298
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    const/4 v9, 0x0

    move v6, p2

    move-object v7, p1

    invoke-interface/range {v4 .. v9}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    goto/16 :goto_21c

    .line 1302
    :cond_162
    iget-object v6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/16 v7, 0x1388

    if-ge v6, v7, :cond_22b

    .line 1306
    iget-boolean v6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    if-nez v6, :cond_173

    .line 1307
    invoke-virtual {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->lockChannelsForOEMwithPackagePreferences(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)V

    .line 1312
    :cond_173
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-ltz v6, :cond_223

    .line 1313
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_223

    if-eqz p4, :cond_18f

    if-nez p5, :cond_18f

    .line 1319
    iget p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v6, 0x2

    if-ne p5, v6, :cond_18b

    move p5, v1

    goto :goto_18c

    :cond_18b
    move p5, v4

    :goto_18c
    invoke-virtual {p3, p5}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    :cond_18f
    if-eqz p4, :cond_1a1

    .line 1322
    iget p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    if-eqz v5, :cond_19d

    .line 1324
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p4

    goto :goto_19e

    :cond_19d
    const/4 p4, -0x1

    .line 1323
    :goto_19e
    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 1327
    :cond_1a1
    invoke-virtual {p0, p3}, Lcom/android/server/notification/PreferencesHelper;->clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V

    .line 1330
    iget-boolean p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 1331
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result p4

    if-nez p4, :cond_1be

    .line 1332
    iget-object p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1be

    .line 1333
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 1338
    :cond_1be
    iget-boolean p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-nez p4, :cond_1c9

    iget-boolean p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz p4, :cond_1c7

    goto :goto_1c9

    :cond_1c7
    move p4, v4

    goto :goto_1ca

    :cond_1c9
    :goto_1c9
    move p4, v1

    :goto_1ca
    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 1341
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p4

    if-ne p4, v1, :cond_1d6

    .line 1342
    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 1345
    :cond_1d6
    iget-boolean p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-nez p4, :cond_1dd

    .line 1346
    invoke-virtual {p3, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 1348
    :cond_1dd
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 1351
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1f9

    .line 1352
    iget-object p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1353
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    const-string p5, "Tried to create a conversation channel without a preexisting parent"

    .line 1352
    invoke-static {p4, p5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1357
    :cond_1f9
    iget-object p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p4

    iget-boolean p5, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eq p4, p5, :cond_20b

    move v4, v1

    .line 1361
    :cond_20b
    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1363
    iget-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {p4, p3, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    move p5, v4

    .line 1365
    :cond_21c
    :goto_21c
    monitor-exit v0
    :try_end_21d
    .catchall {:try_start_1d .. :try_end_21d} :catchall_243

    if-eqz p5, :cond_222

    .line 1368
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_222
    return v1

    .line 1314
    :cond_223
    :try_start_223
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid importance level"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1303
    :cond_22b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Limit exceed; cannot create more channels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1230
    :cond_233
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Reserved id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1222
    :cond_23b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_243
    move-exception p0

    .line 1365
    monitor-exit v0
    :try_end_245
    .catchall {:try_start_223 .. :try_end_245} :catchall_243

    throw p0
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .registers 17

    move-object v0, p0

    move-object v7, p3

    .line 1164
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 1170
    :try_start_23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v9

    if-eqz v9, :cond_bc

    const/4 v1, 0x0

    if-eqz p4, :cond_42

    .line 1175
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 1176
    iget-object v3, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x1770

    if-ge v3, v4, :cond_3a

    goto :goto_42

    .line 1177
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Limit exceed; cannot create more groups"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :cond_42
    :goto_42
    iget-object v3, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    if-eqz v3, :cond_7e

    .line 1182
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    if-eqz p4, :cond_6f

    .line 1186
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 1187
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->unlockFields(I)V

    .line 1188
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    goto :goto_7e

    .line 1191
    :cond_6f
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    if-eq v4, v5, :cond_7e

    .line 1192
    invoke-virtual {p3, v2}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    move v10, v2

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v10, v1

    .line 1197
    :goto_7f
    invoke-virtual {p3, v3}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ac

    .line 1199
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1200
    iget-object v4, v0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    if-nez v3, :cond_97

    move v6, v2

    goto :goto_98

    :cond_97
    move v6, v1

    :goto_98
    if-eqz v3, :cond_a2

    .line 1202
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_a2

    move v11, v2

    goto :goto_a3

    :cond_a2
    move v11, v1

    :goto_a3
    move-object v1, v4

    move-object v2, p3

    move v3, p2

    move-object v4, p1

    move v5, v6

    move v6, v11

    .line 1200
    invoke-interface/range {v1 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroup(Landroid/app/NotificationChannelGroup;ILjava/lang/String;ZZ)V

    .line 1204
    :cond_ac
    iget-object v1, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    monitor-exit v8
    :try_end_b6
    .catchall {:try_start_23 .. :try_end_b6} :catchall_c4

    if-eqz v10, :cond_bb

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_bb
    return-void

    .line 1172
    :cond_bc
    :try_start_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_c4
    move-exception v0

    .line 1205
    monitor-exit v8
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_c4

    throw v0
.end method

.method public deleteConversations(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1999
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2000
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-nez v2, :cond_10

    .line 2002
    monitor-exit v1

    return-object v0

    .line 2004
    :cond_10
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_56

    .line 2006
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 2007
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_53

    .line 2008
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v6, 0x1

    .line 2009
    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 2010
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 2011
    invoke-virtual {p0, v5, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/4 v7, 0x2

    .line 2012
    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2014
    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 2015
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v6, v5, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    .line 2017
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 2020
    :cond_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_65

    .line 2021
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_64

    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz p1, :cond_64

    .line 2022
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_64
    return-object v0

    :catchall_65
    move-exception p0

    .line 2020
    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public final deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 762
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    return v2

    .line 767
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result p0

    if-eqz p0, :cond_14

    return v2

    .line 774
    :cond_14
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannel;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    return p1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7

    .line 1539
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1540
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1542
    monitor-exit v0

    return v2

    .line 1544
    :cond_c
    iget-object v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationChannel;

    if-eqz p3, :cond_1f

    .line 1546
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    .line 1547
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z

    move-result p1

    goto :goto_20

    :cond_1f
    move p1, v2

    .line 1549
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_27

    if-eqz v2, :cond_26

    .line 1551
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_26
    return p1

    :catchall_27
    move-exception p0

    .line 1549
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1852
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 1853
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_55

    .line 1857
    :cond_15
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    if-eqz v3, :cond_24

    .line 1859
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v4, v3, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroupDeleted(Landroid/app/NotificationChannelGroup;ILjava/lang/String;)V

    .line 1863
    :cond_24
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2c
    if-ge v4, v3, :cond_4e

    .line 1865
    iget-object v6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1866
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 1867
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v7

    or-int/2addr v5, v7

    .line 1868
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z

    .line 1869
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1872
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_57

    if-eqz v5, :cond_54

    .line 1874
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_54
    return-object v0

    .line 1854
    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v1

    return-object v0

    :catchall_57
    move-exception p0

    .line 1872
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)Z
    .registers 7

    .line 1558
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    .line 1559
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 1561
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x2

    .line 1562
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1563
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1564
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {p0, p1, p3, p2}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    return v0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public didUserEverDemoteInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1066
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1067
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1068
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1069
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 2431
    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v8

    const-wide v3, 0x20b00000002L

    .line 2432
    :try_start_8
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 2434
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_21

    const-wide v3, 0x20b00000003L

    .line 2435
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-void

    :catchall_21
    move-exception v0

    .line 2434
    :try_start_22
    monitor-exit v8
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 2417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "per-package config version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "PackagePreferences:"

    .line 2420
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2421
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2422
    :try_start_22
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 2423
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_3d

    const-string p4, "Restored without uid:"

    .line 2424
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2425
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-void

    :catchall_3d
    move-exception p0

    .line 2423
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 2894
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2895
    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->getPermissionBasedPackageBans(Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object p0

    .line 2896
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 2897
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2898
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_39

    .line 2899
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2900
    :cond_39
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_3e
    const-string/jumbo v3, "userId"

    .line 2902
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "packageName"

    .line 2903
    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p2

    .line 2905
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2907
    :goto_4f
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    :cond_53
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 7

    .line 2953
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2954
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object p0

    .line 2955
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2956
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_2b

    .line 2957
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2958
    :cond_2b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_30
    const-string/jumbo v4, "packageName"

    .line 2960
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channelCount"

    .line 2961
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v1

    .line 2963
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2965
    :goto_44
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    :cond_48
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONObject;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 2794
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2795
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_a
    const-string/jumbo v2, "noUid"

    .line 2797
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_16} :catch_16

    :catch_16
    const/4 v2, 0x0

    if-eqz p2, :cond_1d

    .line 2805
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2808
    :cond_1d
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2809
    :try_start_20
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_28
    const/4 v7, 0x3

    if-ge v6, v4, :cond_10f

    .line 2811
    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz p1, :cond_3d

    .line 2812
    iget-object v9, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10b

    .line 2813
    :cond_3d
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_42
    .catchall {:try_start_20 .. :try_end_42} :catchall_174

    :try_start_42
    const-string/jumbo v10, "userId"

    .line 2815
    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "packageName"

    .line 2816
    iget-object v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2817
    new-instance v10, Landroid/util/Pair;

    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_8a

    .line 2819
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8a

    const-string/jumbo v11, "importance"

    .line 2822
    invoke-virtual {p2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7f

    goto :goto_80

    :cond_7f
    move v7, v5

    .line 2821
    :goto_80
    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2820
    invoke-virtual {v9, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2824
    invoke-interface {v2, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2826
    :cond_8a
    iget v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v7, :cond_98

    const-string/jumbo v10, "priority"

    .line 2828
    invoke-static {v7}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2827
    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2830
    :cond_98
    iget v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/16 v10, -0x3e8

    if-eq v7, v10, :cond_a8

    const-string/jumbo v10, "visibility"

    .line 2832
    invoke-static {v7}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2831
    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2834
    :cond_a8
    iget-boolean v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v10, 0x1

    if-eq v7, v10, :cond_b7

    const-string/jumbo v10, "showBadge"

    .line 2835
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2837
    :cond_b7
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 2838
    iget-object v10, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_da

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannel;

    .line 2839
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c6

    :cond_da
    const-string v10, "channels"

    .line 2841
    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2842
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 2843
    iget-object v8, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ee
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_102

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    .line 2844
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_ee

    :cond_102
    const-string/jumbo v8, "groups"

    .line 2846
    invoke-virtual {v9, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_108
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_108} :catch_108
    .catchall {:try_start_42 .. :try_end_108} :catchall_174

    .line 2850
    :catch_108
    :try_start_108
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_10b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_28

    .line 2853
    :cond_10f
    monitor-exit v3
    :try_end_110
    .catchall {:try_start_108 .. :try_end_110} :catchall_174

    if-eqz v2, :cond_16e

    .line 2857
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_116
    :goto_116
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz p1, :cond_12e

    .line 2858
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 2859
    :cond_12e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_133
    const-string/jumbo v4, "userId"

    .line 2861
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "packageName"

    .line 2862
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "importance"

    .line 2865
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_162

    move v2, v7

    goto :goto_163

    :cond_162
    move v2, v5

    .line 2864
    :goto_163
    invoke-static {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2863
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16a
    .catch Lorg/json/JSONException; {:try_start_133 .. :try_end_16a} :catch_16a

    .line 2870
    :catch_16a
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_116

    :cond_16e
    :try_start_16e
    const-string p0, "PackagePreferencess"

    .line 2876
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_173
    .catch Lorg/json/JSONException; {:try_start_16e .. :try_end_173} :catch_173

    :catch_173
    return-object v0

    :catchall_174
    move-exception p0

    .line 2853
    :try_start_175
    monitor-exit v3
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_174

    throw p0
.end method

.method public final dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    if-eqz v2, :cond_d

    .line 2606
    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 2609
    :goto_e
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_13
    const-wide v10, 0x10500000002L

    const-wide v12, 0x10900000001L

    if-ge v6, v4, :cond_d3

    move-object/from16 v14, p5

    .line 2612
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2613
    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 2614
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2616
    iget-object v9, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2617
    iget v9, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v0, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2618
    new-instance v9, Landroid/util/Pair;

    iget v10, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_70

    .line 2619
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 2621
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_64

    const/4 v5, 0x3

    goto :goto_65

    :cond_64
    const/4 v5, 0x0

    :goto_65
    const-wide v10, 0x11100000003L

    .line 2620
    invoke-virtual {v0, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2623
    invoke-interface {v3, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_70
    const-wide v9, 0x10500000004L

    .line 2625
    iget v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x11100000005L

    .line 2626
    iget v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10800000006L

    .line 2627
    iget-boolean v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2629
    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_98
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    const-wide v10, 0x20b00000007L

    .line 2630
    invoke-virtual {v9, v0, v10, v11}, Landroid/app/NotificationChannel;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_98

    .line 2632
    :cond_ad
    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    const-wide v10, 0x20b00000008L

    .line 2633
    invoke-virtual {v9, v0, v10, v11}, Landroid/app/NotificationChannelGroup;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_b7

    .line 2636
    :cond_cc
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_cf
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    :cond_d3
    if-eqz v3, :cond_12a

    .line 2641
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2642
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_124

    .line 2643
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2644
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2645
    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2647
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_117

    const/4 v4, 0x3

    goto :goto_118

    :cond_117
    const/4 v4, 0x0

    :goto_118
    const-wide v8, 0x11100000003L

    .line 2646
    invoke-virtual {v0, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2649
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_d9

    :cond_124
    const-wide v8, 0x11100000003L

    goto :goto_d9

    :cond_12a
    return-void
.end method

.method public final dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    if-eqz v3, :cond_f

    .line 2448
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    .line 2450
    :goto_10
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_15
    const-string v8, " userSet="

    const-string v10, " importance="

    const-string v12, "UNKNOWN_UID"

    const/16 v13, -0x2710

    const-string v14, " ("

    const-string v15, "  AppSettings: "

    if-ge v7, v5, :cond_244

    move-object/from16 v9, p4

    .line 2452
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2453
    iget-object v11, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23f

    .line 2454
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2456
    iget-object v11, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2457
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2458
    iget v11, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v11, v13, :cond_48

    goto :goto_4c

    :cond_48
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    :goto_4c
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v11, 0x29

    .line 2459
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 2460
    new-instance v11, Landroid/util/Pair;

    iget v12, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x1

    if-eqz v3, :cond_106

    .line 2461
    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_106

    .line 2462
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2464
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_80

    const/16 v16, 0x3

    goto :goto_82

    :cond_80
    const/16 v16, 0x0

    .line 2463
    :goto_82
    invoke-static/range {v16 .. v16}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2466
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2467
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2468
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_101

    .line 2469
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2470
    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v13, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v10, v13, v8}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_101

    const-string v10, " permission [pre-grant=true"

    .line 2471
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2475
    :try_start_bc
    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v13, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bc .. :try_end_c0} :catch_d2

    const/4 v14, 0x0

    :try_start_c1
    invoke-virtual {v10, v13, v14, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 2476
    iget v10, v8, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_c7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c1 .. :try_end_c7} :catch_d3

    and-int/2addr v10, v12

    if-eqz v10, :cond_cc

    move v10, v12

    goto :goto_cd

    :cond_cc
    move v10, v14

    .line 2477
    :goto_cd
    :try_start_cd
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v8
    :try_end_d1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cd .. :try_end_d1} :catch_d4

    goto :goto_ed

    :catch_d2
    const/4 v14, 0x0

    :catch_d3
    move v10, v14

    .line 2479
    :catch_d4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NameNotFoundException pkg "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "NotificationPrefHelper"

    invoke-static {v13, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v14

    :goto_ed
    if-eqz v10, :cond_f4

    const-string v10, " isPreload=true"

    .line 2482
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_f4
    if-eqz v8, :cond_fb

    const-string v8, " isSigned=true"

    .line 2485
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_fb
    const-string v8, "]"

    .line 2487
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_102

    :cond_101
    const/4 v14, 0x0

    .line 2490
    :goto_102
    invoke-interface {v4, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_107

    :cond_106
    const/4 v14, 0x0

    .line 2492
    :goto_107
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v8, :cond_119

    const-string v8, " priority="

    .line 2493
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v8}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2496
    :cond_119
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/16 v10, -0x3e8

    if-eq v8, v10, :cond_12d

    const-string v8, " visibility="

    .line 2497
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2500
    :cond_12d
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-eq v8, v12, :cond_13b

    const-string v8, " showBadge="

    .line 2501
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2505
    :cond_13b
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    if-eqz v8, :cond_149

    const-string v8, " oemLocked="

    .line 2506
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2509
    :cond_149
    iget-object v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_15b

    const-string v8, " futureLockedChannels="

    .line 2510
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2511
    iget-object v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2514
    :cond_15b
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v8, :cond_169

    const-string v8, " defaultAppLocked="

    .line 2515
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2516
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2518
    :cond_169
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz v8, :cond_177

    const-string v8, " fixedImportance="

    .line 2519
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2520
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2522
    :cond_177
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    if-eq v8, v12, :cond_185

    const-string v8, " allowEdgeLighting="

    .line 2524
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2527
    :cond_185
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    if-eqz v8, :cond_193

    const-string v8, " allowSubDisplayNoti="

    .line 2529
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2530
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2532
    :cond_193
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eqz v8, :cond_1a1

    const-string v8, " bubblePreference="

    .line 2534
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2535
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2537
    :cond_1a1
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    if-eq v8, v12, :cond_1af

    const-string v8, " isNotificationAlertsEnabled="

    .line 2539
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2540
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2542
    :cond_1af
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    const/4 v11, -0x1

    if-eq v8, v11, :cond_1be

    const-string v8, " muteByWearable="

    .line 2544
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2545
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2547
    :cond_1be
    iget-object v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->callStackForImportance:Ljava/lang/String;

    if-eqz v8, :cond_1cc

    const-string v8, " callStackForImportance="

    .line 2549
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2550
    iget-object v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->callStackForImportance:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2552
    :cond_1cc
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    if-eqz v8, :cond_1da

    const-string v8, " reminder="

    .line 2553
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2554
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2556
    :cond_1da
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    if-eq v8, v10, :cond_1e8

    const-string v8, " appLockScreenVisibility="

    .line 2557
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2558
    iget v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2560
    :cond_1e8
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    if-eq v8, v12, :cond_1f6

    const-string v8, " isAllowPopup="

    .line 2561
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2562
    iget-boolean v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2564
    :cond_1f6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2565
    iget-object v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_203
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannel;

    .line 2566
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2567
    iget-boolean v11, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const-string v12, "    "

    invoke-virtual {v10, v1, v12, v11}, Landroid/app/NotificationChannel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_203

    .line 2569
    :cond_21a
    iget-object v6, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_224
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_240

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannelGroup;

    .line 2570
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "  "

    .line 2571
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2573
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_224

    :cond_23f
    const/4 v14, 0x0

    :cond_240
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_15

    :cond_244
    const/4 v6, 0x0

    if-eqz v4, :cond_2c3

    .line 2579
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2581
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c0

    .line 2582
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2583
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2584
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2586
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v13, :cond_27d

    move-object v5, v12

    goto :goto_289

    :cond_27d
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_289
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x29

    .line 2587
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 2588
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2a6

    const/4 v7, 0x3

    goto :goto_2a7

    :cond_2a6
    move v7, v6

    .line 2589
    :goto_2a7
    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2594
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_24b

    :cond_2c0
    const/16 v5, 0x29

    goto :goto_24b

    :cond_2c3
    return-void
.end method

.method public final findConversationChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 6

    .line 1505
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    .line 1506
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1507
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p4, :cond_32

    .line 1508
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_32
    return-object p1

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppLockedFields(Ljava/lang/String;I)I
    .registers 4

    .line 987
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 988
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 989
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getAppsBypassingDndCount(I)I
    .registers 10

    .line 3472
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3473
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_49

    .line 3475
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 3476
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_46

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_22

    goto :goto_46

    .line 3480
    :cond_22
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 3481
    invoke-virtual {p0, v4, v6}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    if-eqz v6, :cond_2c

    add-int/lit8 v3, v3, 0x1

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3487
    :cond_49
    monitor-exit v0

    return v3

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public getBlockedAppCount(I)I
    .registers 8

    .line 3510
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3511
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_26

    .line 3513
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 3514
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_23

    iget v4, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v4, :cond_23

    add-int/lit8 v3, v3, 0x1

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3519
    :cond_26
    monitor-exit v0

    return v3

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 7

    .line 2105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2108
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_f

    .line 2110
    monitor-exit v0

    return p1

    .line 2112
    :cond_f
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move v1, p1

    :goto_16
    if-ge p1, p2, :cond_31

    .line 2114
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 2115
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-nez v2, :cond_2e

    add-int/lit8 v1, v1, 0x1

    :cond_2e
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 2119
    :cond_31
    monitor-exit v0

    return v1

    :catchall_33
    move-exception p0

    .line 2120
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public getBubblePreference(Ljava/lang/String;I)I
    .registers 4

    .line 981
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 982
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 983
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4

    .line 3139
    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x35b

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x6

    .line 3142
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v0, 0x35c

    .line 3143
    invoke-virtual {p0, v0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 3147
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4

    .line 3123
    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x358

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x6

    .line 3126
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 3127
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 3131
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x359

    .line 3128
    invoke-virtual {p0, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 3135
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x35a

    .line 3132
    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;
    .registers 8

    .line 1478
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1480
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_f

    .line 1482
    monitor-exit v0

    return-object p2

    :cond_f
    if-nez p3, :cond_14

    const-string/jumbo p3, "miscellaneous"

    :cond_14
    if-eqz p4, :cond_1a

    .line 1490
    invoke-virtual {p0, p1, p3, p4, p6}, Lcom/android/server/notification/PreferencesHelper;->findConversationChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p2

    :cond_1a
    if-nez p2, :cond_32

    if-eqz p5, :cond_32

    .line 1494
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannel;

    if-eqz p0, :cond_32

    if-nez p6, :cond_30

    .line 1495
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p1

    if-nez p1, :cond_32

    .line 1496
    :cond_30
    monitor-exit v0

    return-object p0

    .line 1499
    :cond_32
    monitor-exit v0

    return-object p2

    :catchall_34
    move-exception p0

    .line 1500
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public getConversations(Landroid/util/IntArray;Z)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IntArray;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 1913
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1914
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1916
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v3

    if-ltz v3, :cond_12

    .line 1917
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_32
    if-ge v5, v3, :cond_12

    .line 1919
    iget-object v6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1920
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ac

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_ac

    .line 1921
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v7

    if-nez v7, :cond_ac

    .line 1922
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v7

    if-nez v7, :cond_5a

    if-nez p2, :cond_ac

    .line 1923
    :cond_5a
    new-instance v7, Landroid/service/notification/ConversationChannelWrapper;

    invoke-direct {v7}, Landroid/service/notification/ConversationChannelWrapper;-><init>()V

    .line 1925
    iget-object v8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/service/notification/ConversationChannelWrapper;->setPkg(Ljava/lang/String;)V

    .line 1926
    iget v8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Landroid/service/notification/ConversationChannelWrapper;->setUid(I)V

    .line 1927
    invoke-virtual {v7, v6}, Landroid/service/notification/ConversationChannelWrapper;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1928
    iget-object v8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    if-nez v8, :cond_7c

    const/4 v8, 0x0

    goto :goto_80

    .line 1931
    :cond_7c
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 1929
    :goto_80
    invoke-virtual {v7, v8}, Landroid/service/notification/ConversationChannelWrapper;->setParentChannelLabel(Ljava/lang/CharSequence;)V

    .line 1933
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a6

    .line 1934
    iget-object v8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    if-eqz v6, :cond_a6

    .line 1936
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v8

    if-eqz v8, :cond_9f

    const/4 v6, 0x1

    goto :goto_a7

    .line 1939
    :cond_9f
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/service/notification/ConversationChannelWrapper;->setGroupLabel(Ljava/lang/CharSequence;)V

    :cond_a6
    move v6, v4

    :goto_a7
    if-nez v6, :cond_ac

    .line 1944
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 1951
    :cond_af
    monitor-exit v0

    return-object v1

    :catchall_b1
    move-exception p0

    .line 1952
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_3 .. :try_end_b3} :catchall_b1

    throw p0
.end method

.method public getConversations(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 1956
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1958
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_13

    .line 1960
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p0

    .line 1962
    :cond_13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1963
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_20
    if-ge v2, p2, :cond_91

    .line 1965
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1966
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    .line 1967
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_8e

    .line 1968
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v4

    if-nez v4, :cond_8e

    .line 1969
    new-instance v4, Landroid/service/notification/ConversationChannelWrapper;

    invoke-direct {v4}, Landroid/service/notification/ConversationChannelWrapper;-><init>()V

    .line 1970
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/service/notification/ConversationChannelWrapper;->setPkg(Ljava/lang/String;)V

    .line 1971
    iget v5, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v4, v5}, Landroid/service/notification/ConversationChannelWrapper;->setUid(I)V

    .line 1972
    invoke-virtual {v4, v3}, Landroid/service/notification/ConversationChannelWrapper;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1973
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1974
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1973
    invoke-virtual {v4, v5}, Landroid/service/notification/ConversationChannelWrapper;->setParentChannelLabel(Ljava/lang/CharSequence;)V

    .line 1976
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_88

    .line 1977
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    if-eqz v3, :cond_88

    .line 1979
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    if-eqz v5, :cond_81

    const/4 v3, 0x1

    goto :goto_89

    .line 1982
    :cond_81
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/service/notification/ConversationChannelWrapper;->setGroupLabel(Ljava/lang/CharSequence;)V

    :cond_88
    move v3, v1

    :goto_89
    if-nez v3, :cond_8e

    .line 1987
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1992
    :cond_91
    monitor-exit v0

    return-object p1

    :catchall_93
    move-exception p0

    .line 1993
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_6 .. :try_end_95} :catchall_93

    throw p0
.end method

.method public final getCurrentUser()I
    .registers 3

    .line 2194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2195
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    .line 2196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final getCurrentUserWithManagedProfile()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2203
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 2204
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2205
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->getCurrentUser()I

    move-result p0

    const/4 v4, 0x0

    .line 2206
    invoke-virtual {v2, p0, v4}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p0

    array-length v2, p0

    :goto_1d
    if-ge v4, v2, :cond_2b

    aget v5, p0, v4

    .line 2207
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 2209
    :cond_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 6

    .line 2086
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2089
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_f

    .line 2091
    monitor-exit v0

    return p1

    .line 2093
    :cond_f
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move v1, p1

    :goto_16
    if-ge p1, p2, :cond_2b

    .line 2095
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 2096
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_28

    add-int/lit8 v1, v1, 0x1

    :cond_28
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 2100
    :cond_2b
    monitor-exit v0

    return v1

    :catchall_2d
    move-exception p0

    .line 2101
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public getGroupForChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 5

    .line 1894
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1895
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 1897
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    if-eqz p1, :cond_2f

    .line 1898
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p2

    if-nez p2, :cond_2f

    .line 1899
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2f

    .line 1900
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannelGroup;

    if-eqz p0, :cond_2f

    .line 1902
    monitor-exit v0

    return-object p0

    .line 1907
    :cond_2f
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I
    .registers 4

    .line 3419
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3420
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 3422
    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    monitor-exit v0

    return p0

    :cond_d
    const/16 p0, -0x3e8

    .line 3424
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 3425
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 4

    .line 3324
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3325
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 3327
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    monitor-exit v0

    return p0

    :cond_d
    const/4 p0, 0x1

    .line 3329
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 3330
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 12

    .line 1470
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    .line 1471
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 5

    .line 1792
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1794
    :try_start_6
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    .line 1796
    monitor-exit v0

    return-object p0

    .line 1798
    :cond_f
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannelGroup;

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    .line 1799
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 9

    .line 1769
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1771
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_56

    if-eqz p3, :cond_56

    .line 1772
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_56

    .line 1775
    :cond_17
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object p1

    .line 1776
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 1777
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_32
    if-ge v1, p2, :cond_54

    .line 1779
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    if-nez p4, :cond_44

    .line 1780
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_51

    .line 1781
    :cond_44
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1782
    invoke-virtual {p1, v2}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 1786
    :cond_54
    monitor-exit v0

    return-object p1

    :cond_56
    :goto_56
    const/4 p0, 0x0

    .line 1773
    monitor-exit v0

    return-object p0

    :catchall_59
    move-exception p0

    .line 1787
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1805
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1807
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1808
    :try_start_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_17

    .line 1810
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 1812
    :cond_17
    new-instance p1, Landroid/app/NotificationChannelGroup;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1813
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_7d

    .line 1815
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    if-nez p3, :cond_36

    .line 1816
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 1817
    :cond_36
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_77

    .line 1818
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7a

    .line 1819
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    if-nez v5, :cond_73

    .line 1821
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v5

    .line 1822
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 1823
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    :cond_73
    invoke-virtual {v5, v4}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    goto :goto_7a

    .line 1829
    :cond_77
    invoke-virtual {p1, v4}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    :cond_7a
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_7d
    if-eqz p4, :cond_8c

    .line 1833
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_8c

    .line 1834
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    if-eqz p5, :cond_b6

    .line 1837
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_98
    :goto_98
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    .line 1838
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_98

    .line 1839
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_98

    .line 1843
    :cond_b6
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object p0

    :catchall_c6
    move-exception p0

    .line 1844
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_b .. :try_end_c8} :catchall_c6

    throw p0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1883
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1884
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_10

    .line 1886
    monitor-exit v1

    return-object v0

    .line 1888
    :cond_10
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1889
    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception p0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 2030
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2032
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2033
    :try_start_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_17

    .line 2035
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 2037
    :cond_17
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1e
    if-ge p2, p1, :cond_36

    .line 2039
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    if-nez p3, :cond_30

    .line 2040
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_33

    .line 2041
    :cond_30
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    .line 2044
    :cond_36
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object p0

    :catchall_3d
    move-exception p0

    .line 2045
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public getNotificationChannelsByConversationId(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1517
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1521
    :try_start_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_16

    .line 1523
    monitor-exit v1

    return-object v0

    .line 1525
    :cond_16
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    .line 1526
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 1527
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p2

    if-nez p2, :cond_20

    .line 1528
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1531
    :cond_40
    monitor-exit v1

    return-object v0

    :catchall_42
    move-exception p0

    .line 1532
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_42

    throw p0
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 2053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2054
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2055
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 2056
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2055
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz p1, :cond_3c

    .line 2058
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_20
    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 2059
    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2060
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 2064
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_43

    .line 2065
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_43
    move-exception p0

    .line 2064
    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 2308
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2309
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1e

    .line 2311
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez p0, :cond_f

    goto :goto_1e

    .line 2314
    :cond_f
    iget-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz p2, :cond_1c

    iget-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-nez p2, :cond_18

    goto :goto_1c

    .line 2317
    :cond_18
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 2315
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-object p1

    .line 2312
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-object p1

    :catchall_20
    move-exception p0

    .line 2318
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 14

    .line 682
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    const/16 v6, -0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZIZZ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZIZZ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 15

    .line 694
    invoke-static {p1, p3}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x2710

    if-ne p3, v1, :cond_15

    .line 697
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    goto :goto_1d

    .line 698
    :cond_15
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    :goto_1d
    if-nez v2, :cond_9f

    .line 700
    new-instance v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>(Lcom/android/server/notification/PreferencesHelper$PackagePreferences-IA;)V

    .line 701
    iput-object p1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 702
    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 703
    iput p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 704
    iput p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 705
    iput p6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 706
    iput-boolean p7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 707
    iput p8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 709
    iput-boolean p9, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    .line 711
    iput-boolean p10, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    const/4 p3, 0x0

    .line 713
    iput-boolean p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    const/16 p4, -0x3e8

    .line 715
    iput p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    const/4 p4, 0x1

    .line 717
    iput-boolean p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    .line 719
    iget-object p5, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    invoke-interface {p5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_61

    .line 720
    iget-object p5, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    iget-object p6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {p5, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    if-eqz p5, :cond_5f

    .line 721
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_5c

    goto :goto_5f

    .line 724
    :cond_5c
    iput-object p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    goto :goto_61

    .line 722
    :cond_5f
    :goto_5f
    iput-boolean p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 727
    :cond_61
    :goto_61
    sget-boolean p4, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    if-eqz p4, :cond_71

    iget-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    iget-object p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_71

    .line 728
    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 732
    :cond_71
    :try_start_71
    invoke-virtual {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_8c

    :catch_75
    move-exception p3

    .line 734
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "createDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "NotificationPrefHelper"

    invoke-static {p4, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :goto_8c
    iget p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne p3, v1, :cond_9a

    .line 738
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9f

    .line 740
    :cond_9a
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    :goto_9f
    return-object v2
.end method

.method public getPackageBans()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2914
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2915
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2916
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_2b

    .line 2918
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2919
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_28

    .line 2920
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v4, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2924
    :cond_2b
    monitor-exit v0

    return-object v2

    :catchall_2d
    move-exception p0

    .line 2925
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final getPackageChannels()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2972
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2973
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 2974
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 2975
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move v5, v2

    move v6, v5

    .line 2977
    :goto_1c
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_37

    .line 2978
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_34

    add-int/lit8 v6, v6, 0x1

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 2982
    :cond_37
    iget-object v4, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2984
    :cond_43
    monitor-exit v1

    return-object v0

    :catchall_45
    move-exception p0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_a .. :try_end_47} :catchall_45

    throw p0
.end method

.method public final getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 3

    .line 675
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 676
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    return-object p0
.end method

.method public getPackagePriority(Ljava/lang/String;I)I
    .registers 4

    .line 1150
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1151
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1152
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getPackageVisibility(Ljava/lang/String;I)I
    .registers 4

    .line 1156
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1157
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1158
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getPermissionBasedPackageBans(Landroid/util/ArrayMap;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2932
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p1, :cond_37

    .line 2934
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2935
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2936
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_37
    return-object p0
.end method

.method public getWearableAppMuted(ILjava/lang/String;)I
    .registers 4

    .line 3358
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3359
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 3361
    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    monitor-exit v0

    return p0

    :cond_d
    const/4 p0, -0x1

    .line 3363
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 3364
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getWearableMutedAppList(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3374
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3375
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3376
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_59

    .line 3378
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 3379
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p1, :cond_56

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_56

    .line 3380
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "NotificationPrefHelper"

    .line 3381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getWearableMutedAppList userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3384
    :cond_59
    monitor-exit v0

    return-object v1

    :catchall_5b
    move-exception p0

    .line 3385
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public final hasNotificationChannelsBypassingDnd(Ljava/lang/String;I)Z
    .registers 6

    .line 3492
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3493
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 3494
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3493
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz p1, :cond_36

    .line 3496
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 3497
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 p0, 0x1

    .line 3498
    monitor-exit v0

    return p0

    .line 3502
    :cond_36
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public hasSentInvalidMsg(Ljava/lang/String;I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1050
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1051
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1052
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1053
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public hasSentValidBubble(Ljava/lang/String;I)Z
    .registers 4

    .line 1121
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1122
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1123
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1124
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public hasSentValidMsg(Ljava/lang/String;I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1058
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1059
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1060
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1061
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackagePreferences"
        }
    .end annotation

    .line 645
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 646
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    if-eqz v0, :cond_a

    move p0, v1

    goto :goto_21

    :cond_20
    move p0, v2

    :goto_21
    if-nez p0, :cond_29

    .line 651
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :cond_29
    :goto_29
    return v1
.end method

.method public hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 5

    .line 1015
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1016
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1017
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_10

    iget-boolean p0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 1018
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final initConfigCSCSet()V
    .registers 3

    .line 1636
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1639
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1642
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1644
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    const-string v1, ","

    .line 1645
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1647
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_37
    return-void
.end method

.method public isAllowNotificationPopUpForPackage(Ljava/lang/String;I)Z
    .registers 3

    .line 3438
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 3440
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 6

    .line 2376
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2377
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2379
    invoke-virtual {p0, p3, p4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isValidDelegate(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 2381
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final isDeletionOk(Landroid/app/NotificationChannel;)Z
    .registers 7

    .line 663
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    .line 666
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x9a7ec800L

    sub-long/2addr v1, v3

    .line 668
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide p0

    cmp-long p0, p0, v1

    if-gtz p0, :cond_1c

    const/4 p0, 0x0

    return p0

    :cond_1c
    return v0
.end method

.method public isEdgeLightingAllowed(Ljava/lang/String;I)Z
    .registers 4

    .line 1074
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1075
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1076
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 1139
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1140
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1141
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannelGroup;

    if-nez p0, :cond_17

    .line 1143
    monitor-exit v1

    return v0

    .line 1145
    :cond_17
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_1d
    move-exception p0

    .line 1146
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public isImportanceLocked(Ljava/lang/String;I)Z
    .registers 4

    .line 1128
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1129
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1130
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-nez p1, :cond_12

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1131
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isInInvalidMsgState(Ljava/lang/String;I)Z
    .registers 4

    .line 1008
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1009
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1010
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    if-eqz p1, :cond_11

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 1011
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public isMediaNotificationFilteringEnabled()Z
    .registers 1

    .line 3162
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    return p0
.end method

.method public isReminderEnabled(Ljava/lang/String;I)Z
    .registers 4

    .line 3391
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3392
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 3394
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    monitor-exit v0

    return p0

    :cond_d
    const/4 p0, 0x0

    .line 3396
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 3397
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final isShortcutOk(Landroid/app/NotificationChannel;)Z
    .registers 5

    .line 656
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 657
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":placeholder_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    move p1, v1

    goto :goto_17

    :cond_16
    move p1, v2

    .line 659
    :goto_17
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowInvalidShortcuts:Z

    if-nez p0, :cond_21

    if-nez p0, :cond_20

    if-nez p1, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :cond_21
    :goto_21
    return v1
.end method

.method public isSubDisplayNotificationAllowed(Ljava/lang/String;I)Z
    .registers 4

    .line 1098
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1099
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1100
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public lockChannelsForOEM([Ljava/lang/String;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 1694
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_9c

    aget-object v3, p1, v2

    .line 1695
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, ":"

    .line 1696
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_98

    .line 1697
    array-length v4, v3

    if-lez v4, :cond_98

    .line 1698
    aget-object v4, v3, v1

    .line 1699
    array-length v5, v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_25

    aget-object v3, v3, v7

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 1701
    :goto_26
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1703
    :try_start_29
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v1

    :cond_34
    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1704
    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    if-nez v3, :cond_66

    .line 1708
    iput-boolean v7, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 1709
    iget-object v8, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_56
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_78

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 1710
    invoke-virtual {v9, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_56

    .line 1713
    :cond_66
    iget-object v8, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    if-eqz v8, :cond_73

    .line 1715
    invoke-virtual {v8, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 1719
    :cond_73
    iget-object v8, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_78
    move v8, v7

    goto :goto_34

    :cond_7a
    if-nez v8, :cond_93

    .line 1724
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1725
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v3, :cond_8e

    .line 1727
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1729
    :cond_8e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    :cond_93
    monitor-exit v5

    goto :goto_98

    :catchall_95
    move-exception p0

    monitor-exit v5
    :try_end_97
    .catchall {:try_start_29 .. :try_end_97} :catchall_95

    throw p0

    :cond_98
    :goto_98
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_9c
    return-void
.end method

.method public final lockChannelsForOEMwithPackagePreferences(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)V
    .registers 10

    .line 1653
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->initConfigCSCSet()V

    .line 1657
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_82

    .line 1658
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1659
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1660
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_26
    if-ge v2, v0, :cond_82

    aget-object v3, p0, v2

    .line 1661
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, ":"

    .line 1662
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7f

    .line 1663
    array-length v4, v3

    if-lez v4, :cond_7f

    .line 1664
    aget-object v4, v3, v1

    .line 1665
    array-length v5, v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_45

    aget-object v3, v3, v7

    goto :goto_46

    :cond_45
    const/4 v3, 0x0

    .line 1666
    :goto_46
    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    if-nez v3, :cond_6c

    .line 1669
    iput-boolean v7, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 1670
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1671
    invoke-virtual {v4, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_5c

    .line 1674
    :cond_6c
    iget-object v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    if-eqz v4, :cond_7a

    .line 1676
    invoke-virtual {v4, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_7f

    .line 1680
    :cond_7a
    iget-object v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_82
    return-void
.end method

.method public lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2386
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    .line 2387
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2389
    :cond_e
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    if-eq p0, v0, :cond_1c

    const/4 p0, 0x2

    .line 2390
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2392
    :cond_1c
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eq p0, v0, :cond_2a

    const/4 p0, 0x4

    .line 2393
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2395
    :cond_2a
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    if-ne p0, v0, :cond_3e

    .line 2396
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    if-eq p0, v0, :cond_43

    :cond_3e
    const/16 p0, 0x8

    .line 2397
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2399
    :cond_43
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    const/16 p0, 0x20

    .line 2400
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2402
    :cond_56
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 2403
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    if-eq p0, v0, :cond_73

    :cond_6e
    const/16 p0, 0x10

    .line 2404
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2406
    :cond_73
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    if-eq p0, v0, :cond_82

    const/16 p0, 0x80

    .line 2407
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 2409
    :cond_82
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p1

    if-eq p0, p1, :cond_91

    const/16 p0, 0x100

    .line 2410
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_91
    return-void
.end method

.method public onLocaleChanged(Landroid/content/Context;I)V
    .registers 9

    .line 3001
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3002
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_43

    .line 3004
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 3005
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_40

    .line 3006
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3008
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 3010
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040419

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3009
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3015
    :cond_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)Z
    .registers 15

    const/4 v0, 0x0

    if-eqz p3, :cond_ef

    .line 3020
    array-length v1, p3

    if-nez v1, :cond_8

    goto/16 :goto_ef

    :cond_8
    const/4 v1, 0x1

    if-eqz p1, :cond_35

    .line 3026
    array-length p1, p3

    array-length v2, p4

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v2, v0

    :goto_12
    if-ge v0, p1, :cond_e9

    .line 3028
    aget-object v2, p3, v0

    .line 3029
    aget v3, p4, v0

    .line 3030
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 3031
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3032
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_32

    .line 3033
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_12

    :catchall_32
    move-exception p0

    .line 3032
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0

    .line 3037
    :cond_35
    array-length p1, p3

    move p4, v0

    move v2, p4

    :goto_38
    if-ge p4, p1, :cond_e9

    aget-object v3, p3, p4

    .line 3039
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 3040
    invoke-static {v3, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz v4, :cond_c7

    .line 3043
    :try_start_4a
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 3044
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v3, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_60} :catch_ae

    .line 3046
    :try_start_60
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v7, v8}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3047
    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_ab

    .line 3048
    :try_start_6e
    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_70} :catch_ae

    if-eqz v5, :cond_a9

    .line 3050
    :try_start_72
    new-instance v5, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 3051
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v8, :cond_82

    move v8, v1

    goto :goto_83

    :cond_82
    move v8, v0

    .line 3053
    :goto_83
    invoke-virtual {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;IZZ)V

    .line 3054
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8f} :catch_90

    goto :goto_a9

    :catch_90
    move-exception v5

    :try_start_91
    const-string v6, "NotificationPrefHelper"

    .line 3056
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not migrate setting for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a9} :catch_ae

    :cond_a9
    :goto_a9
    move v2, v1

    goto :goto_c7

    :catchall_ab
    move-exception v6

    .line 3047
    :try_start_ac
    monitor-exit v5
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    :try_start_ad
    throw v6
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception v5

    const-string v6, "NotificationPrefHelper"

    .line 3061
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not restore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3066
    :cond_c7
    :goto_c7
    :try_start_c7
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v4
    :try_end_ca
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c7 .. :try_end_ca} :catch_e5

    .line 3067
    :try_start_ca
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 3068
    invoke-virtual {v5, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    .line 3067
    invoke-virtual {p0, v3, v5}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v3

    if-eqz v3, :cond_e0

    .line 3070
    invoke-virtual {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 3071
    invoke-virtual {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 3073
    :cond_e0
    monitor-exit v4

    goto :goto_e5

    :catchall_e2
    move-exception v3

    monitor-exit v4
    :try_end_e4
    .catchall {:try_start_ca .. :try_end_e4} :catchall_e2

    :try_start_e4
    throw v3
    :try_end_e5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e4 .. :try_end_e5} :catch_e5

    :catch_e5
    :goto_e5
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_38

    :cond_e9
    if-eqz v2, :cond_ee

    .line 3080
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_ee
    return v2

    :cond_ef
    :goto_ef
    return v0
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 2989
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2990
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_25

    .line 2992
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2993
    iget v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_22

    .line 2994
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2997
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 4

    .line 2075
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2076
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 2077
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1d

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo p1, "miscellaneous"

    .line 2078
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 2079
    monitor-exit v0

    return p2

    :cond_1d
    const/4 p0, 0x0

    .line 2081
    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    .line 2082
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1573
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1576
    :try_start_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_11

    .line 1578
    monitor-exit v0

    return-void

    .line 1580
    :cond_11
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
    .registers 5

    .line 1586
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1588
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_e

    .line 1590
    monitor-exit v0

    return-void

    .line 1592
    :cond_e
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_16
    if-ltz p1, :cond_31

    .line 1594
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string/jumbo v1, "miscellaneous"

    .line 1595
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1596
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    add-int/lit8 p1, p1, -0x1

    goto :goto_16

    .line 1599
    :cond_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public pullPackageChannelGroupPreferencesStats(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 2766
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 2768
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_7c

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_12

    goto :goto_7c

    .line 2772
    :cond_12
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2773
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    add-int/lit8 v2, v2, 0x1

    if-le v2, v3, :cond_35

    goto :goto_79

    .line 2777
    :cond_35
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    const/16 v8, 0x2759

    .line 2778
    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    .line 2779
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    const/4 v8, 0x1

    .line 2780
    invoke-virtual {v7, v8, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2781
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2782
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2783
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2784
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2785
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2786
    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_79
    :goto_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2789
    :cond_7c
    :goto_7c
    monitor-exit v0

    return-void

    :catchall_7e
    move-exception p0

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_5 .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public pullPackageChannelPreferencesStats(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 2731
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2733
    :goto_6
    :try_start_6
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_9f

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_14

    goto/16 :goto_9f

    .line 2737
    :cond_14
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2738
    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    add-int/lit8 v3, v3, 0x1

    if-le v3, v4, :cond_37

    goto :goto_9b

    .line 2742
    :cond_37
    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v8}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v8

    const/16 v9, 0x2758

    .line 2743
    invoke-virtual {v8, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v8

    .line 2744
    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v8, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    const/4 v9, 0x1

    .line 2745
    invoke-virtual {v8, v9, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2746
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2747
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2748
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2749
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2750
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2751
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2752
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_81

    goto :goto_82

    :cond_81
    move v9, v1

    :goto_82
    invoke-virtual {v8, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2753
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2754
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2755
    invoke-virtual {v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_9b
    :goto_9b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 2758
    :cond_9f
    :goto_9f
    monitor-exit v0

    return-void

    :catchall_a1
    move-exception p0

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_6 .. :try_end_a3} :catchall_a1

    throw p0
.end method

.method public pullPackagePreferencesStats(Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 2662
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 2665
    :goto_8
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 2666
    :goto_e
    :try_start_e
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x3

    const/16 v7, 0x2757

    const/16 v8, 0x3e8

    const/4 v9, 0x1

    if-ge v3, v5, :cond_8a

    if-le v4, v8, :cond_1f

    goto :goto_8a

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    .line 2671
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v5}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    .line 2672
    invoke-virtual {v5, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v5

    .line 2673
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2674
    iget v8, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v5, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2675
    invoke-virtual {v5, v9, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2684
    new-instance v8, Landroid/util/Pair;

    iget v9, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_6e

    .line 2685
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 2686
    invoke-virtual {p2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 2687
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_61

    goto :goto_62

    :cond_61
    move v6, v2

    .line 2690
    :goto_62
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2692
    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_6e
    move v6, v2

    move v9, v6

    .line 2694
    :goto_70
    invoke-virtual {v5, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2696
    iget v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v5, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2697
    iget v6, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    invoke-virtual {v5, v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2698
    invoke-virtual {v5, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2699
    invoke-virtual {v5}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2701
    :cond_8a
    :goto_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_e .. :try_end_8b} :catchall_f2

    if-eqz p2, :cond_f1

    .line 2705
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_91
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-le v4, v8, :cond_a0

    goto :goto_f1

    :cond_a0
    add-int/lit8 v4, v4, 0x1

    .line 2710
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v3}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v3

    .line 2711
    invoke-virtual {v3, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v3

    .line 2712
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2713
    invoke-virtual {v3, v9, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2714
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_cc

    move v5, v6

    goto :goto_cd

    :cond_cc
    move v5, v2

    :goto_cd
    invoke-virtual {v3, v5}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    const/16 v5, -0x3e8

    .line 2718
    invoke-virtual {v3, v5}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2719
    invoke-virtual {v3, v2}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2720
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2721
    invoke-virtual {v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    :cond_f1
    :goto_f1
    return-void

    :catchall_f2
    move-exception p0

    .line 2701
    :try_start_f3
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw p0
.end method

.method public readXml(Landroid/util/TypedXmlPullParser;ZI)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 314
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    const/4 v11, 0x2

    if-eq v1, v11, :cond_c

    return-void

    .line 316
    :cond_c
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ranking"

    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    const-string/jumbo v1, "version"

    const/4 v2, -0x1

    const/4 v12, 0x0

    .line 319
    invoke-interface {v0, v12, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 320
    sget-boolean v2, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    const/4 v13, 0x0

    if-eqz v2, :cond_4a

    const-string/jumbo v2, "hide_content_version"

    .line 321
    invoke-interface {v0, v12, v2, v13}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v10, Lcom/android/server/notification/PreferencesHelper;->mHideContentXmlVersion:I

    const-string v2, "NotificationPrefHelper"

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readXml, mHideContentXmlVersion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/android/server/notification/PreferencesHelper;->mHideContentXmlVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const/4 v14, 0x1

    if-ne v1, v14, :cond_4f

    move v15, v14

    goto :goto_50

    :cond_4f
    move v15, v13

    :goto_50
    const/4 v9, 0x3

    if-ge v1, v9, :cond_56

    move/from16 v16, v14

    goto :goto_58

    :cond_56
    move/from16 v16, v13

    .line 326
    :goto_58
    iget-boolean v2, v10, Lcom/android/server/notification/PreferencesHelper;->mShowReviewPermissionsNotification:Z

    if-eqz v2, :cond_6b

    const/4 v2, 0x4

    if-ge v1, v2, :cond_6b

    .line 331
    iget-object v1, v10, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "review_permissions_notification_state"

    invoke-static {v1, v2, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    :cond_6b
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 336
    iget-object v8, v10, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 337
    :cond_73
    :goto_73
    :try_start_73
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    if-eq v1, v14, :cond_135

    .line 338
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v9, :cond_8a

    const-string/jumbo v3, "ranking"

    .line 339
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    goto/16 :goto_135

    :cond_8a
    if-ne v1, v11, :cond_73

    const-string/jumbo v1, "silent_status_icons"

    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    if-eqz p2, :cond_9a

    if-eqz p3, :cond_9a

    goto :goto_73

    :cond_9a
    const-string/jumbo v1, "hide_gentle"

    .line 347
    invoke-interface {v0, v12, v1, v13}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v10, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    goto :goto_73

    :cond_a4
    const-string/jumbo v1, "package"

    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string/jumbo v1, "name"

    .line 350
    invoke-interface {v0, v12, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 351
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12b

    .line 354
    iget-object v1, v10, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fixed_delete_reminder"

    invoke-static {v1, v2, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_ca

    move v1, v14

    goto :goto_cb

    :cond_ca
    move v1, v13

    :goto_cb
    if-eqz v1, :cond_112

    const-string v1, "NotificationPrefHelper"

    const-string/jumbo v2, "need Delete Reminder"

    .line 357
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 359
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object v2, v10, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 363
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 364
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f0

    .line 366
    :cond_104
    iget-object v1, v10, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "fixed_delete_reminder"

    invoke-static {v1, v3, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_10f
    .catchall {:try_start_73 .. :try_end_10f} :catchall_17d

    move-object/from16 v18, v2

    goto :goto_114

    :cond_112
    move-object/from16 v18, v12

    :goto_114
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move v6, v15

    move/from16 v7, v16

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    move/from16 v20, v9

    move-object/from16 v9, v18

    .line 369
    :try_start_127
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/PreferencesHelper;->restorePackage(Landroid/util/TypedXmlPullParser;ZILjava/lang/String;ZZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_12f

    :cond_12b
    move-object/from16 v19, v8

    move/from16 v20, v9

    :goto_12f
    move-object/from16 v8, v19

    move/from16 v9, v20

    goto/16 :goto_73

    :cond_135
    :goto_135
    move-object/from16 v19, v8

    .line 376
    monitor-exit v19
    :try_end_138
    .catchall {:try_start_127 .. :try_end_138} :catchall_182

    if-eqz v16, :cond_17c

    const-string v0, "NotificationPrefHelper"

    const-string v1, "Should migration after pregrant"

    .line 379
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iput-boolean v14, v10, Lcom/android/server/notification/PreferencesHelper;->mShouldMigratePerm:Z

    .line 382
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_147
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    if-eqz p2, :cond_15c

    .line 385
    :try_start_156
    iget-object v0, v10, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermissionForRestore(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V

    goto :goto_147

    .line 388
    :cond_15c
    iget-object v0, v10, Lcom/android/server/notification/PreferencesHelper;->mPkgPerms:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_161} :catch_162

    goto :goto_147

    :catch_162
    move-exception v0

    const-string v3, "NotificationPrefHelper"

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not migrate setting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_147

    :cond_17c
    return-void

    :catchall_17d
    move-exception v0

    move-object/from16 v19, v8

    .line 376
    :goto_180
    :try_start_180
    monitor-exit v19
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_182

    throw v0

    :catchall_182
    move-exception v0

    goto :goto_180
.end method

.method public removeAllReminderSetting(I)V
    .registers 8

    .line 3405
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3406
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_26

    .line 3408
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 3409
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p1, :cond_23

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    if-eqz v5, :cond_23

    .line 3410
    iput-boolean v2, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3413
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public resetDefaultAllowEdgeLighting()V
    .registers 6

    .line 1086
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1087
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 1089
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    const/4 v4, 0x1

    .line 1090
    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1092
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final restoreChannel(Landroid/util/TypedXmlPullParser;ZLcom/android/server/notification/PreferencesHelper$PackagePreferences;ZZ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackagePreferences"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "id"

    const/4 v1, 0x0

    .line 600
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "name"

    .line 601
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "importance"

    const/16 v4, -0x3e8

    .line 602
    invoke-interface {p1, v1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 604
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_93

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_93

    .line 605
    new-instance v3, Landroid/app/NotificationChannel;

    invoke-direct {v3, v0, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz p2, :cond_36

    .line 608
    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1, p2}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    if-eqz p4, :cond_39

    .line 610
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    goto :goto_39

    .line 613
    :cond_36
    invoke-virtual {v3, p1}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 615
    :cond_39
    :goto_39
    iget-boolean p1, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    const/4 p2, 0x1

    if-nez p1, :cond_45

    iget-boolean p1, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz p1, :cond_43

    goto :goto_45

    :cond_43
    const/4 p1, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    move p1, p2

    :goto_46
    invoke-virtual {v3, p1}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 619
    iget-boolean p1, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v3, p1}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 620
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result p1

    if-nez p1, :cond_63

    .line 621
    iget-object p1, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 622
    invoke-virtual {v3, p2}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    :cond_63
    if-eqz p5, :cond_68

    .line 629
    invoke-virtual {v3, p2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 633
    :cond_68
    invoke-virtual {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->isShortcutOk(Landroid/app/NotificationChannel;)Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-virtual {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->isDeletionOk(Landroid/app/NotificationChannel;)Z

    move-result p0

    if-eqz p0, :cond_93

    .line 634
    iget-object p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_7a

    goto :goto_93

    :catch_7a
    move-exception p0

    .line 638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "could not restore channel for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationPrefHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_93
    :goto_93
    return-void
.end method

.method public final restorePackage(Landroid/util/TypedXmlPullParser;ZILjava/lang/String;ZZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 37
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackagePreferences"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "ZI",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/PermissionHelper$PackagePermission;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p8

    const-string v14, "allow_sub_display_noti"

    const-string v15, "allow_edge_lighting"

    const-string/jumbo v11, "show_badge"

    const-string/jumbo v10, "visibility"

    const-string/jumbo v9, "priority"

    const-string/jumbo v8, "uid"

    const-string v7, "NotificationPrefHelper"

    const/16 v6, -0x2710

    const/4 v5, 0x0

    .line 423
    :try_start_1b
    invoke-interface {v0, v5, v8, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_2e9

    if-eqz p2, :cond_2c

    .line 426
    :try_start_21
    iget-object v2, v12, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_23} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_23} :catch_2e9

    move/from16 v3, p3

    move-object/from16 v4, p4

    :try_start_27
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_2b} :catch_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2e9

    goto :goto_30

    :catch_2c
    :cond_2c
    move/from16 v3, p3

    move-object/from16 v4, p4

    :catch_30
    :goto_30
    move v2, v1

    const/4 v1, 0x0

    if-eqz p5, :cond_4c

    if-eq v2, v6, :cond_4c

    .line 435
    :try_start_36
    iget-object v6, v12, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v17, 0x18

    const/16 v20, 0x0

    const-string v21, "check-notif-bubble"

    move-object/from16 v16, v6

    move/from16 v18, v2

    move-object/from16 v19, p4

    invoke-virtual/range {v16 .. v21}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4c

    const/4 v6, 0x1

    goto :goto_4d

    :cond_4c
    move v6, v1

    :goto_4d
    if-eqz v6, :cond_52

    const/16 v16, 0x1

    goto :goto_5a

    :cond_52
    const-string v6, "allow_bubble"

    .line 441
    invoke-interface {v0, v5, v6, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move/from16 v16, v6

    :goto_5a
    const-string/jumbo v6, "importance"

    const/16 v1, -0x3e8

    .line 442
    invoke-interface {v0, v5, v6, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const/4 v1, 0x0

    .line 447
    invoke-interface {v0, v5, v9, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    const/16 v1, -0x3e8

    .line 448
    invoke-interface {v0, v5, v10, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    const/4 v1, 0x1

    .line 449
    invoke-interface {v0, v5, v11, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v20

    .line 452
    invoke-interface {v0, v5, v15, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v21

    const/4 v1, 0x0

    .line 455
    invoke-interface {v0, v5, v14, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_7c} :catch_2e9

    move v12, v1

    move-object/from16 v1, p0

    move/from16 v22, v2

    move-object/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, v22

    move-object v13, v5

    move v5, v6

    move/from16 v23, v6

    move/from16 v6, v18

    move-object/from16 v24, v7

    move/from16 v7, v19

    move-object/from16 v25, v8

    move/from16 v8, v20

    move-object/from16 v18, v14

    move-object v14, v9

    move/from16 v9, v16

    move-object/from16 v26, v10

    move/from16 v10, v21

    move-object/from16 v27, v11

    move/from16 v11, v17

    .line 444
    :try_start_a2
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZIZZ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v7

    .line 457
    invoke-interface {v0, v13, v14, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    move-object/from16 v1, v26

    const/16 v2, -0x3e8

    .line 458
    invoke-interface {v0, v13, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eqz p2, :cond_be

    if-nez v1, :cond_be

    .line 462
    iput v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/4 v8, 0x1

    goto :goto_bf

    :cond_be
    move v8, v12

    :goto_bf
    move-object/from16 v1, v27

    const/4 v2, 0x1

    .line 466
    invoke-interface {v0, v13, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const-string v1, "app_user_locked_fields"

    .line 467
    invoke-interface {v0, v13, v1, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    const-string/jumbo v1, "sent_invalid_msg"

    .line 469
    invoke-interface {v0, v13, v1, v12}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    const-string/jumbo v1, "sent_valid_msg"

    .line 471
    invoke-interface {v0, v13, v1, v12}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    const-string/jumbo v1, "user_demote_msg_app"

    .line 472
    invoke-interface {v0, v13, v1, v12}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    const/4 v1, 0x1

    .line 475
    invoke-interface {v0, v13, v15, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    move-object/from16 v1, v18

    .line 478
    invoke-interface {v0, v13, v1, v12}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    const-string/jumbo v1, "notification_alerts_enabled"

    const/4 v2, 0x1

    .line 481
    invoke-interface {v0, v13, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    const-string/jumbo v1, "mute_for_wearable_app"

    const/4 v3, -0x1

    .line 484
    invoke-interface {v0, v13, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    const-string v1, "callstack_for_importance"

    .line 487
    invoke-interface {v0, v13, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->callStackForImportance:Ljava/lang/String;

    const-string v1, "enable_reminder"

    .line 490
    invoke-interface {v0, v13, v1, v12}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    move-object/from16 v1, p8

    move-object v9, v13

    if-eqz v1, :cond_15e

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readxml reminder pkg - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_137} :catch_2e5

    move-object/from16 v10, v24

    :try_start_139
    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v3, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_160

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readxml not launcher pkg - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iput-boolean v12, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    goto :goto_160

    :cond_15e
    move-object/from16 v10, v24

    .line 500
    :cond_160
    :goto_160
    sget-boolean v1, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    if-eqz v1, :cond_195

    move-object/from16 v11, p0

    move v13, v2

    iget v1, v11, Lcom/android/server/notification/PreferencesHelper;->mHideContentXmlVersion:I

    if-nez v1, :cond_198

    iget v1, v11, Lcom/android/server/notification/PreferencesHelper;->mDeviceFirstApiLevel:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_198

    iget-object v1, v11, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    iget-object v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 503
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_198

    .line 504
    iput v12, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore appLockScreenVisibility pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a2

    :cond_195
    move-object/from16 v11, p0

    move v13, v2

    :cond_198
    const-string v1, "app_lockscreen_visibility"

    const/16 v2, -0x3e8

    .line 507
    invoke-interface {v0, v9, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    :goto_1a2
    const-string v1, "allow_popup"

    .line 511
    invoke-interface {v0, v9, v1, v13}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    .line 513
    iget-object v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v11, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->hasNotificationChannelsBypassingDnd(Ljava/lang/String;I)Z

    move-result v14

    .line 514
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v15

    move/from16 v16, v12

    move/from16 v17, v16

    .line 516
    :goto_1ba
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    if-eq v1, v13, :cond_29f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1c9

    .line 518
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_29f

    :cond_1c9
    if-eq v1, v2, :cond_295

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d0

    goto/16 :goto_295

    .line 523
    :cond_1d0
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v1, "channelGroup"

    .line 525
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_1da} :catch_2e3

    const-string/jumbo v5, "name"

    if-eqz v1, :cond_222

    .line 526
    :try_start_1df
    iget-object v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x1770

    if-lt v1, v2, :cond_204

    if-nez v16, :cond_295

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping further groups for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v13

    goto :goto_1ba

    :cond_204
    const-string/jumbo v1, "id"

    .line 533
    invoke-interface {v0, v9, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-interface {v0, v9, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_222

    .line 536
    new-instance v3, Landroid/app/NotificationChannelGroup;

    invoke-direct {v3, v1, v2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 538
    invoke-virtual {v3, v0}, Landroid/app/NotificationChannelGroup;->populateFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 539
    iget-object v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_222
    const-string v1, "channel"

    .line 543
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f

    .line 544
    iget-object v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x1388

    if-lt v1, v2, :cond_250

    if-nez v17, :cond_295

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping further channels for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v13

    goto/16 :goto_1ba

    :cond_250
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v7

    move-object v12, v5

    move v5, v8

    move-object v13, v6

    move v6, v14

    .line 551
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->restoreChannel(Landroid/util/TypedXmlPullParser;ZLcom/android/server/notification/PreferencesHelper$PackagePreferences;ZZ)V

    goto :goto_261

    :cond_25f
    move-object v12, v5

    move-object v13, v6

    :goto_261
    const-string v1, "delegate"

    .line 556
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_295

    move-object/from16 v1, v25

    const/16 v2, -0x2710

    .line 557
    invoke-interface {v0, v9, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 558
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enabled"

    const/4 v6, 0x1

    .line 559
    invoke-interface {v0, v9, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    const-string v12, "allowed"

    .line 561
    invoke-interface {v0, v9, v12, v6}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eq v3, v2, :cond_291

    .line 564
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_291

    .line 565
    new-instance v6, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v6, v4, v3, v5, v12}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object v5, v6

    goto :goto_292

    :cond_291
    move-object v5, v9

    .line 567
    :goto_292
    iput-object v5, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_294} :catch_2e3

    goto :goto_299

    :cond_295
    :goto_295
    move-object/from16 v1, v25

    const/16 v2, -0x2710

    :goto_299
    move-object/from16 v25, v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1ba

    :cond_29f
    const/16 v2, -0x2710

    .line 573
    :try_start_2a1
    invoke-virtual {v11, v7}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_2a4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a1 .. :try_end_2a4} :catch_2a5
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2a4} :catch_2e3

    goto :goto_2bb

    :catch_2a5
    move-exception v0

    move-object v1, v0

    .line 575
    :try_start_2a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2bb
    if-eqz p6, :cond_2f0

    move/from16 v1, v23

    .line 579
    iput v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/4 v1, 0x1

    .line 580
    iput-boolean v1, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    .line 581
    iget v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-eq v0, v2, :cond_2f0

    .line 583
    new-instance v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    iget-object v3, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 584
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v4, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v4, :cond_2d5

    goto :goto_2d6

    :cond_2d5
    const/4 v1, 0x0

    .line 586
    :goto_2d6
    invoke-virtual {v11, v7}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;IZZ)V

    move-object/from16 v1, p7

    .line 587
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e2
    .catch Ljava/lang/Exception; {:try_start_2a7 .. :try_end_2e2} :catch_2e3

    goto :goto_2f0

    :catch_2e3
    move-exception v0

    goto :goto_2eb

    :catch_2e5
    move-exception v0

    move-object/from16 v10, v24

    goto :goto_2eb

    :catch_2e9
    move-exception v0

    move-object v10, v7

    :goto_2eb
    const-string v1, "Failed to restore pkg"

    .line 591
    invoke-static {v10, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f0
    :goto_2f0
    return-void
.end method

.method public revokeNotificationDelegate(Ljava/lang/String;I)V
    .registers 4

    .line 2341
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2342
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_11

    .line 2343
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz p1, :cond_11

    .line 2344
    iput-boolean p2, p1, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    const/4 p2, 0x1

    .line 2347
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    if-eqz p2, :cond_17

    .line 2349
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_17
    return-void

    :catchall_18
    move-exception p0

    .line 2347
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public setAllowEdgeLighting(Ljava/lang/String;IZ)V
    .registers 5

    .line 1080
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1081
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    .line 1082
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public setAllowNotificationPopUpForPackage(Ljava/lang/String;IZ)V
    .registers 5

    .line 3446
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3447
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iput-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    .line 3448
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 3449
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    :catchall_e
    move-exception p0

    .line 3448
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setAllowSubDisplayNotification(Ljava/lang/String;IZ)V
    .registers 5

    .line 1104
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1105
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    .line 1106
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public setAppBypassDnd(Ljava/lang/String;IZ)V
    .registers 5

    .line 3459
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3460
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 3461
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationChannel;

    .line 3462
    invoke-virtual {p2, p3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    goto :goto_11

    .line 3464
    :cond_21
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eq p1, p3, :cond_28

    .line 3465
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    .line 3467
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public setAppImportanceLocked(Ljava/lang/String;I)V
    .registers 5

    .line 2292
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2293
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 2294
    iget p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_f

    .line 2295
    monitor-exit v0

    return-void

    :cond_f
    or-int/lit8 p2, p2, 0x1

    .line 2298
    iput p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 2300
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    .line 2301
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    :catchall_18
    move-exception p0

    .line 2300
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public setBubblesAllowed(Ljava/lang/String;II)V
    .registers 5

    .line 961
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 962
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 963
    iget p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eq p2, p3, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    .line 964
    :goto_e
    iput p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 965
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 966
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1d

    if-eqz p2, :cond_1c

    .line 968
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_1c
    return-void

    :catchall_1d
    move-exception p0

    .line 966
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setChannelsBypassingDndForLifeStyle(Z)V
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_7f

    .line 2246
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-nez p1, :cond_8b

    .line 2249
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getAppsToBypassDndForEnabledLifeStyle()Ljava/util/ArrayList;

    move-result-object p1

    .line 2250
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2251
    :try_start_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2252
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2a

    goto :goto_1a

    :cond_2a
    const-string v7, ":"

    .line 2254
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2255
    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_35

    goto :goto_1a

    :cond_35
    move v8, v0

    .line 2256
    :goto_36
    iget-object v9, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_1a

    .line 2257
    iget-object v9, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2258
    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    aget-object v11, v7, v0

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6d

    iget v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2259
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    aget-object v11, v7, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v10, v11, :cond_6d

    .line 2260
    iget-object v10, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget v9, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v10, v9}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v9

    if-nez v9, :cond_6c

    .line 2261
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_6c
    move v4, v6

    :cond_6d
    :goto_6d
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 2268
    :cond_70
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2269
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_10 .. :try_end_74} :catchall_7c

    if-eqz v4, :cond_8b

    .line 2272
    iput-boolean v6, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 2273
    invoke-virtual {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    goto :goto_8b

    :catchall_7c
    move-exception p0

    .line 2269
    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p0

    .line 2277
    :cond_7f
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz p1, :cond_8b

    .line 2278
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 2279
    invoke-virtual {p0, v0}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    .line 2280
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    :cond_8b
    :goto_8b
    return-void
.end method

.method public final setHideContentAllowList([Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 3529
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    .line 3530
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .registers 2

    .line 1607
    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return-void
.end method

.method public setInvalidMessageSent(Ljava/lang/String;I)Z
    .registers 4

    .line 1029
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1030
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1031
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    const/4 p2, 0x1

    if-nez p1, :cond_e

    move p1, p2

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 1032
    :goto_f
    iput-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 1034
    monitor-exit v0

    return p1

    :catchall_13
    move-exception p0

    .line 1035
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .registers 5

    .line 1022
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1023
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1024
    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 1025
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public setLockScreenNotificationVisibilityForPackage(Ljava/lang/String;II)V
    .registers 5

    .line 3429
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3430
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iput p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    .line 3431
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 3432
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    :catchall_e
    move-exception p0

    .line 3431
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 5

    .line 3334
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3335
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 3337
    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    const-string p1, "NotificationPrefHelper"

    .line 3338
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Set a isNotificationAlertsEnabled : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8

    .line 2326
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2327
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    .line 2329
    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v1, 0x1

    if-eqz p2, :cond_13

    iget-boolean p2, p2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz p2, :cond_11

    goto :goto_13

    :cond_11
    const/4 p2, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    move p2, v1

    .line 2330
    :goto_14
    new-instance v2, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v2, p3, p4, v1, p2}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    .line 2331
    iput-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 2332
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    .line 2333
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    :catchall_20
    move-exception p0

    .line 2332
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public setReminderEnabled(Ljava/lang/String;IZ)V
    .registers 5

    .line 3400
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3401
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 3402
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 5

    .line 1001
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1002
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iput-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 1003
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 1004
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    :catchall_e
    move-exception p0

    .line 1003
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setValidBubbleSent(Ljava/lang/String;I)Z
    .registers 4

    .line 1112
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1113
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1114
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    const/4 p2, 0x1

    if-nez p1, :cond_e

    move p1, p2

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 1115
    :goto_f
    iput-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    .line 1116
    monitor-exit v0

    return p1

    :catchall_13
    move-exception p0

    .line 1117
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setValidMessageSent(Ljava/lang/String;I)Z
    .registers 4

    .line 1039
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1040
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    .line 1041
    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    const/4 p2, 0x1

    if-nez p1, :cond_e

    move p1, p2

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 1042
    :goto_f
    iput-boolean p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 1044
    monitor-exit v0

    return p1

    :catchall_13
    move-exception p0

    .line 1045
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setWearableAppMuted(ILjava/lang/String;I)V
    .registers 5

    .line 3368
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3369
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iput p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    .line 3370
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 748
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 749
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 750
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 751
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p1, 0x1a

    if-lt p0, p1, :cond_16

    return v1

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public shouldHideSilentStatusIcons()Z
    .registers 1

    .line 1603
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return p0
.end method

.method public startPermMigrationIfNeeded()V
    .registers 6

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPermMigrationIfNeeded, migration ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mShouldMigratePerm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPrefHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mShouldMigratePerm:Z

    if-eqz v0, :cond_63

    .line 408
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPkgPerms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPermMigrationIfNeeded pkg ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", grant = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , userset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V

    goto :goto_23

    :cond_60
    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mShouldMigratePerm:Z

    :cond_63
    return-void
.end method

.method public final syncChannelsBypassingDnd()V
    .registers 3

    .line 2128
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 2131
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    return-void
.end method

.method public toggleNotificationDelegate(Ljava/lang/String;IZ)V
    .registers 5

    .line 2358
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2359
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2360
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz p1, :cond_11

    .line 2361
    iput-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 2364
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    if-eqz p1, :cond_18

    .line 2366
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_18
    return-void

    :catchall_19
    move-exception p0

    .line 2364
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public unlockAllNotificationChannels()V
    .registers 7

    .line 3299
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_32

    .line 3302
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 3303
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x4

    .line 3304
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->unlockFields(I)V

    goto :goto_1e

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3307
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public unlockNotificationChannelImportance(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 1379
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1381
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 1386
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannel;

    if-eqz p0, :cond_22

    .line 1387
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, 0x4

    .line 1390
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 1391
    monitor-exit v0

    return-void

    .line 1388
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Channel does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1383
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_32
    move-exception p0

    .line 1391
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public updateBadgingEnabled()V
    .registers 9

    .line 3166
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3167
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3171
    :goto_e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 3172
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3173
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 3174
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_badging"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_34

    move v5, v7

    goto :goto_35

    :cond_34
    move v5, v0

    .line 3177
    :goto_35
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move v7, v0

    :goto_3e
    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_42
    if-eqz v2, :cond_47

    .line 3181
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_47
    return-void
.end method

.method public updateBubblesEnabled()V
    .registers 9

    .line 3201
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3202
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3206
    :goto_e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 3207
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3208
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 3209
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_bubbles"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v7, :cond_34

    move v5, v7

    goto :goto_35

    :cond_34
    move v5, v0

    .line 3212
    :goto_35
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move v7, v0

    :goto_3e
    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_42
    if-eqz v2, :cond_47

    .line 3216
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_47
    return-void
.end method

.method public final updateChannelsBypassingDnd()V
    .registers 11

    .line 2139
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2142
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->getCurrentUserWithManagedProfile()Ljava/util/List;

    move-result-object v1

    .line 2143
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2144
    :try_start_c
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_14
    if-ge v5, v3, :cond_64

    .line 2146
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2148
    iget v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_61

    .line 2152
    :cond_2f
    iget-object v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 2153
    invoke-virtual {p0, v6, v8}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 2154
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v6, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_61
    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 2159
    :cond_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_c .. :try_end_65} :catchall_9a

    .line 2180
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_6b
    if-ltz v1, :cond_89

    .line 2181
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2182
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v3

    if-nez v3, :cond_86

    .line 2183
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_86
    add-int/lit8 v1, v1, -0x1

    goto :goto_6b

    .line 2186
    :cond_89
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_90

    move v4, v2

    .line 2187
    :cond_90
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eq v0, v4, :cond_99

    .line 2188
    iput-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 2189
    invoke-virtual {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    :cond_99
    return-void

    :catchall_9a
    move-exception p0

    .line 2159
    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw p0
.end method

.method public final updateConfig()V
    .registers 1

    .line 3311
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void
.end method

.method public updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1740
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1741
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1742
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_d

    if-eqz p2, :cond_d

    .line 1743
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    .line 1744
    iput-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1745
    iget-boolean v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-nez v4, :cond_d

    .line 1746
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1747
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    goto :goto_3c

    :cond_4c
    if-eqz p3, :cond_8b

    .line 1754
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 1755
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 1757
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1755
    invoke-virtual {p0, p3, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p2

    const/4 p3, 0x1

    .line 1758
    iput-boolean p3, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1759
    iget-object p2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 1760
    invoke-virtual {v1, p3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    goto :goto_7b

    .line 1764
    :cond_8b
    monitor-exit v0

    return-void

    :catchall_8d
    move-exception p0

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method public updateFixedImportance(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1611
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1612
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    const-wide/32 v2, 0x100000

    .line 1613
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 1614
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1612
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v1

    .line 1615
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1616
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1617
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1616
    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1619
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1620
    :try_start_4a
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v4, v2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    const/4 v4, 0x1

    .line 1622
    iput-boolean v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    .line 1623
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1624
    invoke-virtual {v5, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    goto :goto_61

    .line 1626
    :cond_71
    monitor-exit v3

    goto :goto_29

    :catchall_73
    move-exception p0

    monitor-exit v3
    :try_end_75
    .catchall {:try_start_4a .. :try_end_75} :catchall_73

    throw p0

    :cond_76
    return-void
.end method

.method public updateLockScreenPrivateNotifications()V
    .registers 10

    .line 3236
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3237
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 3241
    :cond_b
    sget-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2d

    .line 3242
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->getCurrentUser()I

    move-result v0

    .line 3243
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3245
    iget v4, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotificationsValue:I

    if-eq v4, v0, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    move v4, v2

    :goto_29
    or-int/2addr v4, v2

    .line 3246
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotificationsValue:I

    goto :goto_2e

    :cond_2d
    move v4, v2

    :goto_2e
    move v0, v2

    .line 3250
    :goto_2f
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_60

    .line 3251
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 3252
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 3253
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v1, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_51

    move v7, v3

    goto :goto_52

    :cond_51
    move v7, v2

    .line 3255
    :goto_52
    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v6, v7, :cond_5b

    move v5, v3

    goto :goto_5c

    :cond_5b
    move v5, v2

    :goto_5c
    or-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_60
    if-eqz v4, :cond_65

    .line 3259
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_65
    return-void
.end method

.method public updateLockScreenShowNotifications()V
    .registers 9

    .line 3264
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 3265
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3269
    :goto_e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 3270
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3271
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 3272
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lock_screen_show_notifications"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_34

    move v5, v7

    goto :goto_35

    :cond_34
    move v5, v0

    .line 3274
    :goto_35
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move v7, v0

    :goto_3e
    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_42
    if-eqz v2, :cond_47

    .line 3278
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_47
    return-void
.end method

.method public updateMediaNotificationFilteringEnabled()V
    .registers 4

    .line 3152
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "qs_media_controls"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 3154
    :goto_12
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    if-eq v2, v0, :cond_1b

    .line 3155
    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    .line 3156
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_1b
    return-void
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 17

    move-object v0, p0

    move-object v4, p1

    move-object v7, p3

    .line 1398
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 1402
    :try_start_10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    if-eqz v1, :cond_106

    .line 1406
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/app/NotificationChannel;

    if-eqz v9, :cond_fe

    .line 1407
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_fe

    .line 1410
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_37

    const/16 v2, -0x3e8

    .line 1411
    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    :cond_37
    if-eqz p4, :cond_44

    .line 1415
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1416
    invoke-virtual {p0, v9, p3}, Lcom/android/server/notification/PreferencesHelper;->lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    goto :goto_4b

    .line 1418
    :cond_44
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 1421
    :goto_4b
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_96

    .line 1422
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    if-nez v2, :cond_96

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2
    :try_end_5c
    .catchall {:try_start_10 .. :try_end_5c} :catchall_10e

    if-eqz v2, :cond_96

    .line 1426
    :try_start_5e
    iget-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    .line 1427
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1426
    invoke-virtual {v2, p1, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1428
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_96

    const-string v3, "com.samsung.android.notification.blockable"

    .line 1429
    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_96

    .line 1430
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->setImportance(I)V
    :try_end_7d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5e .. :try_end_7d} :catch_7e
    .catchall {:try_start_5e .. :try_end_7d} :catchall_10e

    goto :goto_96

    :catch_7e
    :try_start_7e
    const-string v2, "NotificationPrefHelper"

    .line 1433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NameNotFoundException pkg "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_96
    :goto_96
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 1442
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_ad

    const/4 v2, 0x2

    goto :goto_ae

    :cond_ad
    move v2, v11

    .line 1443
    :goto_ae
    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1444
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1445
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 1448
    :cond_bc
    invoke-virtual {v9, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 1450
    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    if-eqz p4, :cond_ca

    move v2, v10

    goto :goto_cb

    :cond_ca
    move v2, v11

    .line 1451
    :goto_cb
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1450
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1452
    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 1453
    invoke-static {v9}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v5

    move-object v2, p3

    move v3, p2

    move-object v4, p1

    move/from16 v6, p4

    .line 1452
    invoke-interface/range {v1 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    .line 1456
    :cond_e0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    iget-boolean v2, v0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v1, v2, :cond_f4

    .line 1457
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-eq v1, v2, :cond_f3

    goto :goto_f4

    :cond_f3
    move v10, v11

    .line 1460
    :cond_f4
    :goto_f4
    monitor-exit v8
    :try_end_f5
    .catchall {:try_start_7e .. :try_end_f5} :catchall_10e

    if-eqz v10, :cond_fa

    .line 1462
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd()V

    .line 1464
    :cond_fa
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    return-void

    .line 1408
    :cond_fe
    :try_start_fe
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1404
    :cond_106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_10e
    move-exception v0

    .line 1460
    monitor-exit v8
    :try_end_110
    .catchall {:try_start_fe .. :try_end_110} :catchall_10e

    throw v0
.end method

.method public updateZenPolicy(Z)V
    .registers 12

    .line 2229
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 2230
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v9, Landroid/app/NotificationManager$Policy;

    iget v2, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2234
    iget v7, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 2236
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    invoke-direct/range {v1 .. v8}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIILjava/util/List;)V

    .line 2230
    invoke-virtual {p0, v9}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method public writeXml(Landroid/util/TypedXmlSerializer;ZI)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string/jumbo v3, "ranking"

    const/4 v4, 0x0

    .line 824
    invoke-interface {v1, v4, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "version"

    .line 825
    iget v5, v0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    invoke-interface {v1, v4, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 826
    sget-boolean v3, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_20

    const-string/jumbo v3, "hide_content_version"

    .line 827
    invoke-interface {v1, v4, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 829
    :cond_20
    iget-boolean v3, v0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    if-eqz v3, :cond_3c

    if-eqz p2, :cond_28

    if-nez v2, :cond_3c

    :cond_28
    const-string/jumbo v3, "silent_status_icons"

    .line 831
    invoke-interface {v1, v4, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "hide_gentle"

    .line 832
    iget-boolean v6, v0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    invoke-interface {v1, v4, v3, v6}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "silent_status_icons"

    .line 833
    invoke-interface {v1, v4, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 835
    :cond_3c
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p2, :cond_49

    .line 837
    iget-object v3, v0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/notification/PermissionHelper;->getNotificationPermissionValues(I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 840
    :cond_49
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 841
    :try_start_4c
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_54
    const/4 v10, 0x3

    if-ge v9, v7, :cond_1c4

    .line 843
    iget-object v11, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz p2, :cond_6b

    .line 844
    iget v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-eq v12, v2, :cond_6b

    goto/16 :goto_1c0

    :cond_6b
    const-string/jumbo v12, "package"

    .line 847
    invoke-interface {v1, v4, v12}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "name"

    .line 848
    iget-object v13, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {v1, v4, v12, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 849
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    const/16 v13, -0x3e8

    if-nez v12, :cond_ac

    .line 850
    new-instance v12, Landroid/util/Pair;

    iget v14, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v12, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 851
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    const-string/jumbo v15, "importance"

    if-eqz v14, :cond_a4

    .line 853
    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_a4

    goto :goto_a5

    :cond_a4
    move v10, v8

    .line 852
    :goto_a5
    invoke-interface {v1, v4, v15, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b6

    .line 857
    :cond_ac
    iget v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eq v10, v13, :cond_b6

    const-string/jumbo v12, "importance"

    .line 858
    invoke-interface {v1, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 861
    :cond_b6
    :goto_b6
    iget v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v10, :cond_c0

    const-string/jumbo v12, "priority"

    .line 862
    invoke-interface {v1, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 864
    :cond_c0
    iget v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v10, v13, :cond_ca

    const-string/jumbo v12, "visibility"

    .line 865
    invoke-interface {v1, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 867
    :cond_ca
    iget v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eqz v10, :cond_d3

    const-string v12, "allow_bubble"

    .line 868
    invoke-interface {v1, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d3
    const-string/jumbo v10, "show_badge"

    .line 870
    iget-boolean v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "app_user_locked_fields"

    .line 871
    iget v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "sent_invalid_msg"

    .line 873
    iget-boolean v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "sent_valid_msg"

    .line 875
    iget-boolean v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "user_demote_msg_app"

    .line 877
    iget-boolean v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "allow_edge_lighting"

    .line 880
    iget-boolean v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "allow_sub_display_noti"

    .line 883
    iget-boolean v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "notification_alerts_enabled"

    .line 886
    iget-boolean v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 889
    iget v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    const/4 v12, -0x1

    if-eq v10, v12, :cond_11b

    const-string/jumbo v12, "mute_for_wearable_app"

    .line 890
    invoke-interface {v1, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 893
    :cond_11b
    iget-boolean v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    if-eqz v10, :cond_124

    const-string v12, "enable_reminder"

    .line 894
    invoke-interface {v1, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 897
    :cond_124
    iget v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    if-eq v10, v13, :cond_12d

    const-string v12, "app_lockscreen_visibility"

    .line 898
    invoke-interface {v1, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 901
    :cond_12d
    iget-boolean v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    if-eq v10, v5, :cond_136

    const-string v12, "allow_popup"

    .line 902
    invoke-interface {v1, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_136
    if-nez p2, :cond_140

    const-string/jumbo v10, "uid"

    .line 905
    iget v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 908
    :cond_140
    iget-object v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v10, :cond_178

    const-string v10, "delegate"

    .line 909
    invoke-interface {v1, v4, v10}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "name"

    .line 911
    iget-object v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v12, v12, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "uid"

    .line 912
    iget-object v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget v12, v12, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-interface {v1, v4, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 913
    iget-object v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v10, v10, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eq v10, v5, :cond_168

    const-string v12, "enabled"

    .line 914
    invoke-interface {v1, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 916
    :cond_168
    iget-object v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v10, v10, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eq v10, v5, :cond_173

    const-string v12, "allowed"

    .line 917
    invoke-interface {v1, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_173
    const-string v10, "delegate"

    .line 919
    invoke-interface {v1, v4, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 922
    :cond_178
    iget-object v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_182
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_192

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationChannelGroup;

    .line 923
    invoke-virtual {v12, v1}, Landroid/app/NotificationChannelGroup;->writeXml(Landroid/util/TypedXmlSerializer;)V

    goto :goto_182

    .line 926
    :cond_192
    iget-object v10, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_19c
    :goto_19c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1ba

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannel;

    if-eqz p2, :cond_1b6

    .line 928
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v12

    if-nez v12, :cond_19c

    .line 929
    iget-object v12, v0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v1, v12}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_19c

    .line 932
    :cond_1b6
    invoke-virtual {v11, v1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_19c

    :cond_1ba
    const-string/jumbo v10, "package"

    .line 936
    invoke-interface {v1, v4, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1c0
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_54

    .line 938
    :cond_1c4
    monitor-exit v6
    :try_end_1c5
    .catchall {:try_start_4c .. :try_end_1c5} :catchall_216

    .line 940
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20f

    .line 941
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const-string/jumbo v5, "package"

    .line 942
    invoke-interface {v1, v4, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "name"

    .line 943
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v4, v5, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "importance"

    .line 945
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_204

    move v2, v10

    goto :goto_205

    :cond_204
    move v2, v8

    .line 944
    :goto_205
    invoke-interface {v1, v4, v5, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "package"

    .line 946
    invoke-interface {v1, v4, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1d3

    :cond_20f
    const-string/jumbo v0, "ranking"

    .line 949
    invoke-interface {v1, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :catchall_216
    move-exception v0

    .line 938
    :try_start_217
    monitor-exit v6
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    throw v0
.end method
