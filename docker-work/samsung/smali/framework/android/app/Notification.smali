.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Colors;,
        Landroid/app/Notification$StandardTemplateParams;,
        Landroid/app/Notification$TemplateBindResult;,
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$TvExtender;,
        Landroid/app/Notification$CarExtender;,
        Landroid/app/Notification$WearableExtender;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$BubbleMetadata;,
        Landroid/app/Notification$DecoratedMediaCustomViewStyle;,
        Landroid/app/Notification$DecoratedCustomViewStyle;,
        Landroid/app/Notification$CallStyle;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$MessagingStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;,
        Landroid/app/Notification$GroupAlertBehavior;,
        Landroid/app/Notification$NotificationVisibilityOverride;,
        Landroid/app/Notification$Visibility;,
        Landroid/app/Notification$Priority;,
        Landroid/app/Notification$NotificationFlags;,
        Landroid/app/Notification$ServiceNotificationPolicy;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

.field public static final whitelist BADGE_ICON_LARGE:I = 0x2

.field public static final whitelist BADGE_ICON_NONE:I = 0x0

.field public static final whitelist BADGE_ICON_SMALL:I = 0x1

.field public static final whitelist CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final whitelist CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final whitelist CATEGORY_CAR_EMERGENCY:Ljava/lang/String; = "car_emergency"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_CAR_INFORMATION:Ljava/lang/String; = "car_information"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_CAR_WARNING:Ljava/lang/String; = "car_warning"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final whitelist CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final whitelist CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final whitelist CATEGORY_LOCATION_SHARING:Ljava/lang/String; = "location_sharing"

.field public static final whitelist CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final whitelist CATEGORY_MISSED_CALL:Ljava/lang/String; = "missed_call"

.field public static final whitelist CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final whitelist CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final whitelist CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final whitelist CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final whitelist CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final whitelist CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final whitelist CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final whitelist CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist CATEGORY_STOPWATCH:Ljava/lang/String; = "stopwatch"

.field public static final whitelist CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final whitelist CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final whitelist CATEGORY_WORKOUT:Ljava/lang/String; = "workout"

.field public static final whitelist COLOR_DEFAULT:I = 0x0

.field public static final greylist-max-o COLOR_INVALID:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_ALL:I = -0x1

.field public static final whitelist DEFAULT_LIGHTS:I = 0x4

.field public static final whitelist DEFAULT_SOUND:I = 0x1

.field public static final whitelist DEFAULT_VIBRATE:I = 0x2

.field public static final whitelist EXTRA_ALLOW_DURING_SETUP:Ljava/lang/String; = "android.allowDuringSetup"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ANSWER_COLOR:Ljava/lang/String; = "android.answerColor"

.field public static final whitelist EXTRA_ANSWER_INTENT:Ljava/lang/String; = "android.answerIntent"

.field public static final whitelist EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final whitelist EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final whitelist EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final greylist-max-o EXTRA_BUILDER_APPLICATION_INFO:Ljava/lang/String; = "android.appInfo"

.field public static final whitelist EXTRA_CALL_IS_VIDEO:Ljava/lang/String; = "android.callIsVideo"

.field public static final whitelist EXTRA_CALL_PERSON:Ljava/lang/String; = "android.callPerson"

.field public static final blacklist EXTRA_CALL_TYPE:Ljava/lang/String; = "android.callType"

.field public static final whitelist EXTRA_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_GROUP_ID"

.field public static final whitelist EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_ID"

.field public static final whitelist EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final whitelist EXTRA_COLORIZED:Ljava/lang/String; = "android.colorized"

.field public static final whitelist EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final greylist-max-o EXTRA_CONTAINS_CUSTOM_VIEW:Ljava/lang/String; = "android.contains.customView"

.field public static final blacklist EXTRA_CONVERSATION_ICON:Ljava/lang/String; = "android.conversationIcon"

.field public static final whitelist EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final blacklist EXTRA_CONVERSATION_UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "android.conversationUnreadMessageCount"

.field public static final whitelist EXTRA_DECLINE_COLOR:Ljava/lang/String; = "android.declineColor"

.field public static final whitelist EXTRA_DECLINE_INTENT:Ljava/lang/String; = "android.declineIntent"

.field public static final greylist-max-o EXTRA_FOREGROUND_APPS:Ljava/lang/String; = "android.foregroundApps"

.field public static final whitelist EXTRA_HANG_UP_INTENT:Ljava/lang/String; = "android.hangUpIntent"

.field public static final greylist-max-o EXTRA_HIDE_SMART_REPLIES:Ljava/lang/String; = "android.hideSmartReplies"

.field public static final whitelist EXTRA_HISTORIC_MESSAGES:Ljava/lang/String; = "android.messages.historic"

.field public static final whitelist EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final whitelist EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String; = "android.isGroupConversation"

.field public static final whitelist EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final blacklist EXTRA_MEDIA_REMOTE_DEVICE:Ljava/lang/String; = "android.mediaRemoteDevice"

.field public static final blacklist EXTRA_MEDIA_REMOTE_ICON:Ljava/lang/String; = "android.mediaRemoteIcon"

.field public static final blacklist EXTRA_MEDIA_REMOTE_INTENT:Ljava/lang/String; = "android.mediaRemoteIntent"

.field public static final whitelist EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final whitelist EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final whitelist EXTRA_MESSAGING_PERSON:Ljava/lang/String; = "android.messagingUser"

.field public static final whitelist EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_ID"

.field public static final whitelist EXTRA_NOTIFICATION_TAG:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_TAG"

.field public static final whitelist EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final whitelist EXTRA_PEOPLE_LIST:Ljava/lang/String; = "android.people.list"

.field public static final whitelist EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final whitelist EXTRA_PICTURE_CONTENT_DESCRIPTION:Ljava/lang/String; = "android.pictureContentDescription"

.field public static final whitelist EXTRA_PICTURE_ICON:Ljava/lang/String; = "android.pictureIcon"

.field public static final whitelist EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final whitelist EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final whitelist EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final greylist-max-o EXTRA_REDUCED_IMAGES:Ljava/lang/String; = "android.reduced.images"

.field public static final whitelist EXTRA_REMOTE_INPUT_DRAFT:Ljava/lang/String; = "android.remoteInputDraft"

.field public static final whitelist EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final blacklist EXTRA_REMOTE_INPUT_HISTORY_ITEMS:Ljava/lang/String; = "android.remoteInputHistoryItems"

.field public static final whitelist EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final whitelist EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED:Ljava/lang/String; = "android.showBigPictureWhenCollapsed"

.field public static final whitelist EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final greylist-max-o EXTRA_SHOW_REMOTE_INPUT_SPINNER:Ljava/lang/String; = "android.remoteInputSpinner"

.field public static final whitelist EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final whitelist EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUBSTITUTE_APP_NAME:Ljava/lang/String; = "android.substName"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final whitelist EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final whitelist EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final whitelist EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final whitelist EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final whitelist EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final whitelist EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final whitelist EXTRA_VERIFICATION_ICON:Ljava/lang/String; = "android.verificationIcon"

.field public static final whitelist EXTRA_VERIFICATION_TEXT:Ljava/lang/String; = "android.verificationText"

.field public static final whitelist FLAG_AUTOGROUP_SUMMARY:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_AUTO_CANCEL:I = 0x10

.field public static final whitelist FLAG_BUBBLE:I = 0x1000

.field public static final greylist-max-o FLAG_CAN_COLORIZE:I = 0x800

.field public static final whitelist FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final whitelist FLAG_GROUP_SUMMARY:I = 0x200

.field public static final whitelist FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_INSISTENT:I = 0x4

.field public static final whitelist FLAG_LOCAL_ONLY:I = 0x100

.field public static final whitelist FLAG_NO_CLEAR:I = 0x20

.field public static final whitelist FLAG_ONGOING_EVENT:I = 0x2

.field public static final whitelist FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final whitelist FLAG_SHOW_LIGHTS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_DEFAULT:I = 0x0

.field public static final whitelist FOREGROUND_SERVICE_DEFERRED:I = 0x2

.field public static final whitelist FOREGROUND_SERVICE_IMMEDIATE:I = 0x1

.field public static final whitelist GROUP_ALERT_ALL:I = 0x0

.field public static final whitelist GROUP_ALERT_CHILDREN:I = 0x2

.field public static final whitelist GROUP_ALERT_SUMMARY:I = 0x1

.field public static final whitelist INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field public static final blacklist MAX_ACTION_BUTTONS:I = 0x3

.field private static final greylist-max-o MAX_CHARSEQUENCE_LENGTH:I = 0x400

.field private static final blacklist MAX_LARGE_ICON_ASPECT_RATIO:F = 1.7777778f

.field private static final greylist-max-o MAX_REPLY_HISTORY:I = 0x5

.field private static final blacklist PLATFORM_STYLE_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist PRIORITY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_HIGH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_LOW:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_MAX:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_MIN:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SEM_FLAG_BRIEF:I = 0x2000

.field public static final blacklist SEM_FLAG_DISABLE_CALL_EDGE_LIGHTING:I = 0x1000

.field public static final whitelist SEM_FLAG_DISABLE_EDGE_LIGHTING:I = 0x20

.field public static final blacklist SEM_FLAG_DISABLE_HEADS_UP:I = 0x8

.field public static final whitelist SEM_FLAG_DISABLE_SIMPLE_COVER_SCREEN_NOTIFICATION:I = 0x100

.field public static final blacklist SEM_FLAG_HALF_BRIEF:I = 0x4000

.field public static final blacklist SEM_FLAG_SNOOZED:I = 0x80

.field public static final whitelist SEM_PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist SEM_PRIORITY_HIGH:I = 0xa

.field public static final whitelist SEM_PRIORITY_MAX:I = 0x14

.field private static final greylist-max-o STANDARD_LAYOUTS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STREAM_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Notification"

.field public static final whitelist VISIBILITY_PRIVATE:I = 0x0

.field public static final whitelist VISIBILITY_PUBLIC:I = 0x1

.field public static final whitelist VISIBILITY_SECRET:I = -0x1

.field public static blacklist processAllowlistToken:Landroid/os/IBinder;


# instance fields
.field public whitelist actions:[Landroid/app/Notification$Action;

.field public greylist allPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist audioAttributes:Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist bigContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist category:Ljava/lang/String;

.field public whitelist color:I

.field public whitelist contentIntent:Landroid/app/PendingIntent;

.field public whitelist contentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o creationTime:J

.field public whitelist defaults:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist deleteIntent:Landroid/app/PendingIntent;

.field public whitelist extras:Landroid/os/Bundle;

.field public whitelist flags:I

.field public whitelist fullScreenIntent:Landroid/app/PendingIntent;

.field public whitelist headsUpContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist iconLevel:I

.field public whitelist largeIcon:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledARGB:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledOffMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledOnMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mAllowSystemGeneratedContextualActions:Z

.field private blacklist mAllowlistToken:Landroid/os/IBinder;

.field private greylist-max-o mBadgeIcon:I

.field private blacklist mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

.field private greylist mChannelId:Ljava/lang/String;

.field private blacklist mFgsDeferBehavior:I

.field private greylist-max-o mGroupAlertBehavior:I

.field private greylist mGroupKey:Ljava/lang/String;

.field private greylist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLocusId:Landroid/content/LocusId;

.field private greylist-max-o mSettingsText:Ljava/lang/CharSequence;

.field private greylist-max-o mShortcutId:Ljava/lang/String;

.field private greylist mSmallIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mSortKey:Ljava/lang/String;

.field private greylist-max-o mTimeout:J

.field private greylist-max-o mUsesStandardHeader:Z

.field public whitelist number:I

.field public blacklist parcelDataSize:I

.field public whitelist priority:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist publicVersion:Landroid/app/Notification;

.field public blacklist semBadgeTarget:Landroid/content/ComponentName;

.field public whitelist semFlags:I

.field public whitelist semMissedCount:I

.field public whitelist semPriority:I

.field public whitelist sound:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist tickerText:Ljava/lang/CharSequence;

.field public whitelist tickerView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist vibrate:[J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist visibility:I

.field public whitelist when:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcreationTime(Landroid/app/Notification;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsesStandardHeader(Landroid/app/Notification;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Notification;->mUsesStandardHeader:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputcreationTime(Landroid/app/Notification;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/Notification;->creationTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowSystemGeneratedContextualActions(Landroid/app/Notification;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBadgeIcon(Landroid/app/Notification;I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification;->mBadgeIcon:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBubbleMetadata(Landroid/app/Notification;Landroid/app/Notification$BubbleMetadata;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFgsDeferBehavior(Landroid/app/Notification;I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupAlertBehavior(Landroid/app/Notification;I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupKey(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocusId(Landroid/app/Notification;Landroid/content/LocusId;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSettingsText(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShortcutId(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmallIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSortKey(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeout(Landroid/app/Notification;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/Notification;->mTimeout:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Notification;->mUsesStandardHeader:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPLATFORM_STYLE_CLASSES()Ljava/util/List;
    .registers 1

    sget-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTANDARD_LAYOUTS()Landroid/util/ArraySet;
    .registers 1

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/Notification;->buildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetFontScaledHeight(Landroid/content/Context;I)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetFontScaledMarginHeight(Landroid/content/Context;I)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification;->getFontScaledMarginHeight(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/Notification;->getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvisitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 453
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    .line 455
    const v1, 0x10900ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 456
    const v1, 0x10900d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 457
    const v1, 0x10900cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 458
    const v1, 0x10900d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 459
    const v1, 0x10900d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 460
    const v1, 0x10900d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 461
    const v1, 0x10900da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 462
    const v1, 0x10900d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 463
    const v1, 0x10900d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 464
    const v1, 0x10900d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 465
    const v1, 0x10900d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 466
    const v1, 0x10900d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 467
    const v1, 0x10900d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 468
    const v1, 0x10900cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 518
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 519
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 709
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Notification$BigTextStyle;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Notification$BigPictureStyle;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-class v4, Landroid/app/Notification$InboxStyle;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-class v4, Landroid/app/Notification$MediaStyle;

    aput-object v4, v0, v3

    const-class v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    aput-object v3, v0, v1

    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-class v2, Landroid/app/Notification$MessagingStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Landroid/app/Notification$CallStyle;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/List;

    .line 3307
    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 2506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 511
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 527
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 810
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1055
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1605
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1623
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1628
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->when:J

    .line 2508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->creationTime:J

    .line 2509
    iput v0, p0, Landroid/app/Notification;->priority:I

    .line 2510
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;J)V
    .registers 7
    .param p1, "icon"    # I
    .param p2, "tickerText"    # Ljava/lang/CharSequence;
    .param p3, "when"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 511
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 527
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 810
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1055
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1605
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1623
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1628
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2545
    iput p1, p0, Landroid/app/Notification;->icon:I

    .line 2546
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2547
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    .line 2548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->creationTime:J

    .line 2549
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "tickerText"    # Ljava/lang/CharSequence;
    .param p4, "when"    # J
    .param p6, "contentTitle"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "contentIntent"    # Landroid/content/Intent;

    .line 2518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 511
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 527
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 810
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1055
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1605
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1623
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1628
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2519
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2520
    invoke-virtual {v1, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2521
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2522
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2523
    invoke-virtual {v1, p6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2524
    invoke-virtual {v1, p7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2525
    const/high16 v2, 0x2000000

    invoke-static {p1, v0, p8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2527
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    .line 2528
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 511
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 527
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 810
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1055
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1605
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1623
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1628
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2558
    invoke-direct {p0, p1}, Landroid/app/Notification;->readFromParcelImpl(Landroid/os/Parcel;)V

    .line 2560
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 2561
    return-void
.end method

.method public static greylist-max-o addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;

    .line 3506
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 3507
    return-void
.end method

.method public static greylist-max-o addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V
    .registers 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "notification"    # Landroid/app/Notification;

    .line 3513
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3514
    return-void
.end method

.method public static greylist-max-o areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z
    .registers 12
    .param p0, "first"    # Landroid/app/Notification;
    .param p1, "second"    # Landroid/app/Notification;

    .line 3325
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3326
    .local v0, "firstAs":[Landroid/app/Notification$Action;
    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3327
    .local v1, "secondAs":[Landroid/app/Notification$Action;
    const/4 v2, 0x1

    if-nez v0, :cond_9

    if-nez v1, :cond_d

    :cond_9
    if-eqz v0, :cond_e

    if-nez v1, :cond_e

    .line 3328
    :cond_d
    return v2

    .line 3330
    :cond_e
    const/4 v3, 0x0

    if-eqz v0, :cond_71

    if-eqz v1, :cond_71

    .line 3331
    array-length v4, v0

    array-length v5, v1

    if-eq v4, v5, :cond_18

    .line 3332
    return v2

    .line 3334
    :cond_18
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, v0

    if-ge v4, v5, :cond_71

    .line 3335
    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v4

    iget-object v6, v6, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 3336
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3335
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 3337
    return v2

    .line 3339
    :cond_33
    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 3340
    .local v5, "firstRs":[Landroid/app/RemoteInput;
    aget-object v6, v1, v4

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    .line 3341
    .local v6, "secondRs":[Landroid/app/RemoteInput;
    if-nez v5, :cond_43

    .line 3342
    new-array v5, v3, [Landroid/app/RemoteInput;

    .line 3344
    :cond_43
    if-nez v6, :cond_47

    .line 3345
    new-array v6, v3, [Landroid/app/RemoteInput;

    .line 3347
    :cond_47
    array-length v7, v5

    array-length v8, v6

    if-eq v7, v8, :cond_4c

    .line 3348
    return v2

    .line 3350
    :cond_4c
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4d
    array-length v8, v5

    if-ge v7, v8, :cond_6e

    .line 3351
    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v6, v7

    .line 3352
    invoke-virtual {v9}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3351
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b

    .line 3353
    return v2

    .line 3350
    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 3334
    .end local v5    # "firstRs":[Landroid/app/RemoteInput;
    .end local v6    # "secondRs":[Landroid/app/RemoteInput;
    .end local v7    # "j":I
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3358
    .end local v4    # "i":I
    :cond_71
    return v3
.end method

.method public static greylist-max-o areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z
    .registers 5
    .param p0, "first"    # Landroid/app/Notification$Builder;
    .param p1, "second"    # Landroid/app/Notification$Builder;

    .line 3378
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 3379
    return v1

    .line 3382
    :cond_18
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3383
    return v1

    .line 3385
    :cond_2b
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3386
    return v1

    .line 3388
    :cond_3e
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3389
    return v1

    .line 3392
    :cond_51
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .registers 6
    .param p0, "first"    # Landroid/widget/RemoteViews;
    .param p1, "second"    # Landroid/widget/RemoteViews;

    .line 3396
    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 3397
    return v0

    .line 3399
    :cond_6
    const/4 v1, 0x1

    if-nez p0, :cond_b

    if-nez p1, :cond_f

    :cond_b
    if-eqz p0, :cond_10

    if-nez p1, :cond_10

    .line 3400
    :cond_f
    return v1

    .line 3403
    :cond_10
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 3404
    return v1

    .line 3407
    :cond_27
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 3408
    return v1

    .line 3411
    :cond_3e
    return v0
.end method

.method public static greylist-max-o areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z
    .registers 4
    .param p0, "first"    # Landroid/app/Notification$Builder;
    .param p1, "second"    # Landroid/app/Notification$Builder;

    .line 3365
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 3366
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1

    .line 3368
    :cond_10
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    if-nez v0, :cond_17

    .line 3369
    return v1

    .line 3371
    :cond_17
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z

    move-result v0

    return v0
.end method

.method private static blacklist buildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "template"    # Landroid/widget/RemoteViews;
    .param p2, "customContent"    # Landroid/widget/RemoteViews;
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p4, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 7295
    const/4 v0, -0x1

    .line 7296
    .local v0, "childIndex":I
    const v1, 0x102044f

    if-eqz p2, :cond_3e

    .line 7299
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 7300
    iget-boolean v2, p3, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    .line 7301
    const v2, 0x102045f

    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeFromParent(I)V

    .line 7306
    invoke-static {p0, p1, p3, v3}, Landroid/app/Notification$Builder;->-$$Nest$smsetHeaderlessVerticalMargins(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    goto :goto_30

    .line 7309
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 7310
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v4, p4, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v5, 0x1050260

    .line 7311
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 7312
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    .line 7310
    invoke-virtual {v4, p1, v1, v5}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;IF)V

    .line 7314
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_30
    const v2, 0x102000d

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    .line 7315
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;I)V

    .line 7316
    invoke-virtual {p1, v3}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 7317
    const/4 v0, 0x0

    .line 7319
    :cond_3e
    const v2, 0x102044b

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 7322
    return-void
.end method

.method private greylist-max-o fixDuplicateExtra(Landroid/os/Parcelable;Ljava/lang/String;)V
    .registers 4
    .param p1, "original"    # Landroid/os/Parcelable;
    .param p2, "extraName"    # Ljava/lang/String;

    .line 3435
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3436
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3438
    :cond_f
    return-void
.end method

.method private greylist-max-o fixDuplicateExtras()V
    .registers 3

    .line 3425
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 3426
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.largeIcon"

    invoke-direct {p0, v0, v1}, Landroid/app/Notification;->fixDuplicateExtra(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 3428
    :cond_b
    return-void
.end method

.method private static blacklist getFontScaledHeight(Landroid/content/Context;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimenId"    # I

    .line 13284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13285
    .local v0, "dimensionPixelSize":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 13286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 13287
    .local v1, "factor":F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private static blacklist getFontScaledMarginHeight(Landroid/content/Context;I)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimenId"    # I

    .line 13275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13276
    .local v0, "dimensionPixelSize":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 13277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 13278
    .local v1, "factor":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 13279
    .end local v1    # "factor":F
    .local v3, "factor":F
    int-to-float v1, v0

    mul-float/2addr v1, v3

    float-to-int v1, v1

    return v1
.end method

.method public static greylist getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "templateClass"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .line 7284
    sget-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 7285
    .local v1, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 7286
    return-object v1

    .line 7288
    .end local v1    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1d
    goto :goto_6

    .line 7289
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 12487
    .local p2, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 12488
    .local v0, "array":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 12489
    .local v1, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    if-nez v0, :cond_16

    goto :goto_2c

    .line 12492
    :cond_16
    array-length v2, v0

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    .line 12493
    .local v2, "typedArray":[Landroid/os/Parcelable;, "[TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    array-length v4, v0

    if-ge v3, v4, :cond_28

    .line 12494
    aget-object v4, v0, v3

    aput-object v4, v2, v3

    .line 12493
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 12496
    .end local v3    # "i":I
    :cond_28
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 12497
    return-object v2

    .line 12490
    .end local v2    # "typedArray":[Landroid/os/Parcelable;, "[TT;"
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method private greylist-max-o hasColorizedPermission()Z
    .registers 2

    .line 7206
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o hasLargeIcon()Z
    .registers 2

    .line 7235
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static greylist-max-o priorityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "pri"    # I

    .line 3654
    packed-switch p0, :pswitch_data_30

    .line 3666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3664
    :pswitch_21
    const-string v0, "MAX"

    return-object v0

    .line 3662
    :pswitch_24
    const-string v0, "HIGH"

    return-object v0

    .line 3660
    :pswitch_27
    const-string v0, "DEFAULT"

    return-object v0

    .line 3658
    :pswitch_2a
    const-string v0, "LOW"

    return-object v0

    .line 3656
    :pswitch_2d
    const-string v0, "MIN"

    return-object v0

    :pswitch_data_30
    .packed-switch -0x2
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private greylist-max-o readFromParcelImpl(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2567
    .local v0, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2568
    if-nez v1, :cond_10

    .line 2569
    sget-object v1, Landroid/app/Notification;->processAllowlistToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2572
    :cond_10
    const-class v1, Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2574
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->when:J

    .line 2575
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->creationTime:J

    .line 2576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_42

    .line 2577
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2578
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_42

    .line 2579
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->icon:I

    .line 2582
    :cond_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->number:I

    .line 2583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_58

    .line 2584
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2586
    :cond_58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_68

    .line 2587
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 2589
    :cond_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_78

    .line 2590
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2592
    :cond_78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_88

    .line 2593
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 2595
    :cond_88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_98

    .line 2596
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2598
    :cond_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a8

    .line 2599
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2601
    :cond_a8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->defaults:I

    .line 2602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->flags:I

    .line 2603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c4

    .line 2604
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2607
    :cond_c4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 2608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_da

    .line 2609
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2611
    :cond_da
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->vibrate:[J

    .line 2612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledARGB:I

    .line 2613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOnMS:I

    .line 2614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOffMS:I

    .line 2615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->iconLevel:I

    .line 2617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_108

    .line 2618
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 2621
    :cond_108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->priority:I

    .line 2623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 2625
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 2627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 2632
    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification$Action;

    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 2635
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2636
    invoke-direct {p0}, Landroid/app/Notification;->fixDuplicateExtras()V

    .line 2638
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_148

    .line 2639
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2642
    :cond_148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_158

    .line 2643
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2646
    :cond_158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->visibility:I

    .line 2648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16e

    .line 2649
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 2652
    :cond_16e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->color:I

    .line 2654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_180

    .line 2655
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    .line 2657
    :cond_180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->mTimeout:J

    .line 2659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_192

    .line 2660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    .line 2663
    :cond_192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a2

    .line 2664
    sget-object v1, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    iput-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    .line 2667
    :cond_1a2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 2669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b8

    .line 2670
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    .line 2673
    :cond_1b8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 2674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1ce

    .line 2675
    sget-object v1, Landroid/app/Notification$BubbleMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$BubbleMetadata;

    iput-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 2678
    :cond_1ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2680
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    .line 2685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->semMissedCount:I

    .line 2686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->semFlags:I

    .line 2687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->semPriority:I

    .line 2688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1fc

    .line 2689
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    .line 2692
    :cond_1fc
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->parcelDataSize:I

    .line 2696
    return-void
.end method

.method private greylist-max-o reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V
    .registers 7
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isLowRam"    # Z

    .line 7089
    if-eqz p1, :cond_23

    .line 7090
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7091
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz p3, :cond_c

    .line 7092
    const v1, 0x1050267

    goto :goto_f

    .line 7093
    :cond_c
    const v1, 0x1050266

    .line 7091
    :goto_f
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 7094
    .local v1, "maxWidth":I
    if-eqz p3, :cond_19

    .line 7095
    const v2, 0x1050265

    goto :goto_1c

    .line 7096
    :cond_19
    const v2, 0x1050264

    .line 7094
    :goto_1c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 7097
    .local v2, "maxHeight":I
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->reduceImageSizes(II)V

    .line 7099
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    :cond_23
    return-void
.end method

.method private static greylist-max-o removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 16
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 3034
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_69

    .line 3035
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 3036
    .local v0, "ss":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 3037
    .local v1, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3038
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    array-length v4, v1

    :goto_1c
    if-ge v3, v4, :cond_68

    aget-object v5, v1, v3

    .line 3039
    .local v5, "span":Ljava/lang/Object;
    move-object v6, v5

    .line 3040
    .local v6, "resultSpan":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_2c

    .line 3041
    move-object v7, v5

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 3043
    :cond_2c
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_4c

    .line 3044
    move-object v7, v6

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    .line 3045
    .local v7, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    new-instance v14, Landroid/text/style/TextAppearanceSpan;

    .line 3046
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    .line 3047
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v10

    const/4 v11, -0x1

    .line 3049
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 3050
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v13

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v6, v14

    .line 3051
    .end local v7    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    goto :goto_56

    :cond_4c
    instance-of v7, v6, Landroid/text/style/RelativeSizeSpan;

    if-nez v7, :cond_65

    instance-of v7, v6, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_55

    .line 3053
    goto :goto_65

    .line 3055
    :cond_55
    move-object v6, v5

    .line 3057
    :goto_56
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 3058
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 3057
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3038
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "resultSpan":Ljava/lang/Object;
    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 3060
    :cond_68
    return-object v2

    .line 3062
    .end local v0    # "ss":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_69
    return-object p0
.end method

.method public static greylist-max-o safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3003
    if-nez p0, :cond_3

    return-object p0

    .line 3004
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_10

    .line 3005
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 3007
    :cond_10
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_40

    .line 3008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3012
    :cond_40
    invoke-static {p0}, Landroid/app/Notification;->removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist secSafeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3020
    if-nez p0, :cond_3

    return-object p0

    .line 3021
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_10

    .line 3022
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 3024
    :cond_10
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_40

    .line 3025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3029
    :cond_40
    invoke-static {p0}, Landroid/app/Notification;->removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o visibilityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "vis"    # I

    .line 3638
    packed-switch p0, :pswitch_data_2a

    .line 3646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3642
    :pswitch_21
    const-string v0, "PUBLIC"

    return-object v0

    .line 3640
    :pswitch_24
    const-string v0, "PRIVATE"

    return-object v0

    .line 3644
    :pswitch_27
    const-string v0, "SECRET"

    return-object v0

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private static blacklist visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    .line 2836
    .local p0, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    if-nez p1, :cond_3

    return-void

    .line 2837
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    .line 2838
    .local v0, "iconType":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 2839
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2841
    :cond_14
    return-void
.end method

.method private greylist-max-o writeToParcelImpl(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3110
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3112
    iget-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3113
    iget-wide v1, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3114
    iget-wide v1, p0, Landroid/app/Notification;->creationTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3115
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_23

    iget v1, p0, Landroid/app/Notification;->icon:I

    if-eqz v1, :cond_23

    .line 3117
    const-string v2, ""

    invoke-static {v2, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 3119
    :cond_23
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 3120
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3121
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_34

    .line 3123
    :cond_31
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3125
    :goto_34
    iget v1, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3126
    iget-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_46

    .line 3127
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3128
    iget-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_49

    .line 3130
    :cond_46
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3132
    :goto_49
    iget-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_56

    .line 3133
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3134
    iget-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_59

    .line 3136
    :cond_56
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3138
    :goto_59
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_66

    .line 3139
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3140
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_69

    .line 3142
    :cond_66
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3144
    :goto_69
    iget-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_76

    .line 3145
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3146
    iget-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_79

    .line 3148
    :cond_76
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3150
    :goto_79
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_86

    .line 3151
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3152
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_89

    .line 3154
    :cond_86
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3156
    :goto_89
    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_97

    iget-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_97

    .line 3158
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3160
    :cond_97
    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_a4

    .line 3161
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3162
    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a7

    .line 3164
    :cond_a4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3167
    :goto_a7
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3168
    iget v1, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3170
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_be

    .line 3171
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3172
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v1, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c1

    .line 3174
    :cond_be
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3176
    :goto_c1
    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3178
    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v1, :cond_d3

    .line 3179
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3180
    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d6

    .line 3182
    :cond_d3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3185
    :goto_d6
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3186
    iget v1, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3187
    iget v1, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3188
    iget v1, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3189
    iget v1, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3191
    iget-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_fc

    .line 3192
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3193
    iget-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_ff

    .line 3195
    :cond_fc
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3198
    :goto_ff
    iget v1, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3200
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3202
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3204
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3209
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3212
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3214
    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_12a

    .line 3215
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3216
    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12d

    .line 3218
    :cond_12a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3221
    :goto_12d
    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_13a

    .line 3222
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3223
    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13d

    .line 3225
    :cond_13a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3228
    :goto_13d
    iget v1, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3230
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_14f

    .line 3231
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3232
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1, p1, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_152

    .line 3234
    :cond_14f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3237
    :goto_152
    iget v1, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3239
    iget-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    if-eqz v1, :cond_164

    .line 3240
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3241
    iget-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_167

    .line 3243
    :cond_164
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3245
    :goto_167
    iget-wide v3, p0, Landroid/app/Notification;->mTimeout:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3247
    iget-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    if-eqz v1, :cond_179

    .line 3248
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3249
    iget-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_17c

    .line 3251
    :cond_179
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3254
    :goto_17c
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_189

    .line 3255
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3256
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v1, p1, v2}, Landroid/content/LocusId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18c

    .line 3258
    :cond_189
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3261
    :goto_18c
    iget v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
    iget-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_19e

    .line 3264
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3265
    iget-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1a1

    .line 3267
    :cond_19e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3270
    :goto_1a1
    iget v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3272
    iget-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v1, :cond_1b3

    .line 3273
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3274
    iget-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    invoke-virtual {v1, p1, v2}, Landroid/app/Notification$BubbleMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b6

    .line 3276
    :cond_1b3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3279
    :goto_1b6
    iget-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3281
    iget v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3288
    iget v1, p0, Landroid/app/Notification;->semMissedCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3289
    iget v1, p0, Landroid/app/Notification;->semFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3290
    iget v1, p0, Landroid/app/Notification;->semPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3291
    iget-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    if-eqz v1, :cond_1dc

    .line 3292
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3293
    iget-object v0, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    goto :goto_1df

    .line 3295
    :cond_1dc
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3298
    :goto_1df
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->parcelDataSize:I

    .line 3302
    return-void
.end method


# virtual methods
.method public blacklist clearAllowlistToken()V
    .registers 2

    .line 3496
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 3497
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_a

    .line 3498
    invoke-virtual {v0}, Landroid/app/Notification;->clearAllowlistToken()V

    .line 3500
    :cond_a
    return-void
.end method

.method public whitelist clone()Landroid/app/Notification;
    .registers 3

    .line 2700
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 2701
    .local v0, "that":Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 2702
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o cloneInto(Landroid/app/Notification;Z)V
    .registers 7
    .param p1, "that"    # Landroid/app/Notification;
    .param p2, "heavy"    # Z

    .line 2711
    iget-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    iput-object v0, p1, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2712
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    iput-wide v0, p1, Landroid/app/Notification;->when:J

    .line 2713
    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    iput-wide v0, p1, Landroid/app/Notification;->creationTime:J

    .line 2714
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p1, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2715
    iget v0, p0, Landroid/app/Notification;->number:I

    iput v0, p1, Landroid/app/Notification;->number:I

    .line 2718
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2719
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 2720
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 2722
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2a

    .line 2723
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2725
    :cond_2a
    if-eqz p2, :cond_36

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_36

    .line 2726
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 2728
    :cond_36
    if-eqz p2, :cond_42

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_42

    .line 2729
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2731
    :cond_42
    if-eqz p2, :cond_4a

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_4a

    .line 2732
    iput-object v0, p1, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2734
    :cond_4a
    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    iput v0, p1, Landroid/app/Notification;->iconLevel:I

    .line 2735
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2736
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    iput v0, p1, Landroid/app/Notification;->audioStreamType:I

    .line 2737
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_65

    .line 2738
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1, v0}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2741
    :cond_65
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 2742
    .local v0, "vibrate":[J
    if-eqz v0, :cond_72

    .line 2743
    array-length v1, v0

    .line 2744
    .local v1, "N":I
    new-array v2, v1, [J

    iput-object v2, p1, Landroid/app/Notification;->vibrate:[J

    .line 2745
    .local v2, "vib":[J
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2748
    .end local v1    # "N":I
    .end local v2    # "vib":[J
    :cond_72
    iget v1, p0, Landroid/app/Notification;->ledARGB:I

    iput v1, p1, Landroid/app/Notification;->ledARGB:I

    .line 2749
    iget v1, p0, Landroid/app/Notification;->ledOnMS:I

    iput v1, p1, Landroid/app/Notification;->ledOnMS:I

    .line 2750
    iget v1, p0, Landroid/app/Notification;->ledOffMS:I

    iput v1, p1, Landroid/app/Notification;->ledOffMS:I

    .line 2751
    iget v1, p0, Landroid/app/Notification;->defaults:I

    iput v1, p1, Landroid/app/Notification;->defaults:I

    .line 2753
    iget v1, p0, Landroid/app/Notification;->flags:I

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 2755
    iget v1, p0, Landroid/app/Notification;->priority:I

    iput v1, p1, Landroid/app/Notification;->priority:I

    .line 2757
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 2759
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 2761
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 2763
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_c3

    .line 2765
    :try_start_9a
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2767
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I
    :try_end_a6
    .catch Landroid/os/BadParcelableException; {:try_start_9a .. :try_end_a6} :catch_a7

    .line 2771
    goto :goto_c3

    .line 2768
    :catch_a7
    move-exception v1

    .line 2769
    .local v1, "e":Landroid/os/BadParcelableException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not unparcel extras from notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Notification"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2770
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2774
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_c3
    :goto_c3
    iget-object v1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 2775
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p1, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 2778
    :cond_d4
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_f2

    .line 2779
    array-length v1, v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 2780
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_de
    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v2

    if-ge v1, v3, :cond_f2

    .line 2781
    aget-object v2, v2, v1

    if-eqz v2, :cond_ef

    .line 2782
    iget-object v3, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v2}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v2

    aput-object v2, v3, v1

    .line 2780
    :cond_ef
    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    .line 2787
    .end local v1    # "i":I
    :cond_f2
    if-eqz p2, :cond_fe

    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_fe

    .line 2788
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2791
    :cond_fe
    if-eqz p2, :cond_10a

    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_10a

    .line 2792
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2795
    :cond_10a
    iget v1, p0, Landroid/app/Notification;->visibility:I

    iput v1, p1, Landroid/app/Notification;->visibility:I

    .line 2797
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_11e

    .line 2798
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 2799
    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, v1, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 2802
    :cond_11e
    iget v1, p0, Landroid/app/Notification;->color:I

    iput v1, p1, Landroid/app/Notification;->color:I

    .line 2804
    iget-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    .line 2805
    iget-wide v1, p0, Landroid/app/Notification;->mTimeout:J

    iput-wide v1, p1, Landroid/app/Notification;->mTimeout:J

    .line 2806
    iget-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    .line 2807
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    iput-object v1, p1, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    .line 2808
    iget v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    iput v1, p1, Landroid/app/Notification;->mBadgeIcon:I

    .line 2809
    iget-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    .line 2810
    iget v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v1, p1, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 2811
    iget v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    iput v1, p1, Landroid/app/Notification;->mFgsDeferBehavior:I

    .line 2812
    iget-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    iput-object v1, p1, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 2813
    iget-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    iput-boolean v1, p1, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2815
    if-nez p2, :cond_14f

    .line 2816
    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    .line 2822
    :cond_14f
    iget v1, p0, Landroid/app/Notification;->semMissedCount:I

    iput v1, p1, Landroid/app/Notification;->semMissedCount:I

    .line 2823
    iget v1, p0, Landroid/app/Notification;->semFlags:I

    iput v1, p1, Landroid/app/Notification;->semFlags:I

    .line 2824
    iget v1, p0, Landroid/app/Notification;->semPriority:I

    iput v1, p1, Landroid/app/Notification;->semPriority:I

    .line 2825
    iget-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    if-eqz v1, :cond_165

    .line 2826
    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    .line 2829
    :cond_165
    iget v1, p0, Landroid/app/Notification;->parcelDataSize:I

    iput v1, p1, Landroid/app/Notification;->parcelDataSize:I

    .line 2833
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 3066
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3520
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3521
    .local v0, "token":J
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3522
    iget-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3523
    const-wide v4, 0x10500000003L

    iget v2, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3524
    const-wide v4, 0x10500000004L

    iget v2, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3525
    const-wide v4, 0x10900000005L

    iget-object v2, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3526
    const-wide v4, 0x10900000006L

    iget-object v2, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3527
    const-wide v4, 0x10900000007L

    iget-object v2, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3528
    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v2, :cond_5f

    .line 3529
    const-wide v4, 0x10500000008L

    array-length v2, v2

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3531
    :cond_5f
    iget v2, p0, Landroid/app/Notification;->visibility:I

    const/4 v4, -0x1

    if-lt v2, v4, :cond_6e

    if-gt v2, v3, :cond_6e

    .line 3532
    const-wide v3, 0x10e00000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3534
    :cond_6e
    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v2, :cond_7a

    .line 3535
    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3537
    :cond_7a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3538
    return-void
.end method

.method public whitelist findRemoteInputActionPair(Z)Landroid/util/Pair;
    .registers 14
    .param p1, "requiresFreeform"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair<",
            "Landroid/app/RemoteInput;",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 3853
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3854
    return-object v1

    .line 3856
    :cond_6
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_35

    aget-object v5, v0, v4

    .line 3857
    .local v5, "action":Landroid/app/Notification$Action;
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_14

    .line 3858
    goto :goto_32

    .line 3860
    :cond_14
    const/4 v6, 0x0

    .line 3861
    .local v6, "resultRemoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1b
    if-ge v9, v8, :cond_2b

    aget-object v10, v7, v9

    .line 3862
    .local v10, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v10}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    if-nez v11, :cond_27

    if-nez p1, :cond_28

    .line 3863
    :cond_27
    move-object v6, v10

    .line 3861
    .end local v10    # "remoteInput":Landroid/app/RemoteInput;
    :cond_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 3866
    :cond_2b
    if-eqz v6, :cond_32

    .line 3867
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 3856
    .end local v5    # "action":Landroid/app/Notification$Action;
    .end local v6    # "resultRemoteInput":Landroid/app/RemoteInput;
    :cond_32
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 3870
    :cond_35
    return-object v1
.end method

.method public whitelist getAllowSystemGeneratedContextualActions()Z
    .registers 2

    .line 3781
    iget-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    return v0
.end method

.method public whitelist getBadgeIconType()I
    .registers 2

    .line 3719
    iget v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    return v0
.end method

.method public whitelist getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;
    .registers 2

    .line 3765
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object v0
.end method

.method public greylist getChannel()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3689
    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChannelId()Ljava/lang/String;
    .registers 2

    .line 3696
    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContextualActions()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 3878
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3880
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3881
    .local v0, "contextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 3882
    .local v4, "action":Landroid/app/Notification$Action;
    invoke-virtual {v4}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 3883
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3881
    .end local v4    # "action":Landroid/app/Notification$Action;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3886
    :cond_22
    return-object v0
.end method

.method public whitelist getGroup()Ljava/lang/String;
    .registers 2

    .line 1026
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroupAlertBehavior()I
    .registers 2

    .line 3756
    iget v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return v0
.end method

.method public whitelist getLargeIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 3811
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .registers 2

    .line 3740
    iget-object v0, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public greylist-max-o getNotificationStyle()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .line 7172
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7174
    .local v0, "templateClass":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 7175
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 7177
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSettingsText()Ljava/lang/CharSequence;
    .registers 2

    .line 3747
    iget-object v0, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getShortcutId()Ljava/lang/String;
    .registers 2

    .line 3729
    iget-object v0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmallIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 3793
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getSortKey()Ljava/lang/String;
    .registers 2

    .line 1044
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTimeout()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3702
    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public whitelist getTimeoutAfter()J
    .registers 3

    .line 3710
    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public greylist-max-o hasCompletedProgress()Z
    .registers 5

    .line 3675
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3676
    const-string v3, "android.progressMax"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2f

    .line 3680
    :cond_16
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 3681
    return v2

    .line 3683
    :cond_1f
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2e

    const/4 v2, 0x1

    :cond_2e
    return v2

    .line 3677
    :cond_2f
    :goto_2f
    return v2
.end method

.method public whitelist hasImage()Z
    .registers 7

    .line 7258
    const-class v0, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_49

    .line 7259
    const-string v2, "android.messages"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 7260
    .local v0, "messages":[Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 7261
    nop

    .line 7262
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    .line 7261
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    .line 7263
    .local v3, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 7264
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 7265
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 7266
    return v1

    .line 7268
    .end local v3    # "m":Landroid/app/Notification$MessagingStyle$Message;
    :cond_47
    goto :goto_22

    .line 7270
    .end local v0    # "messages":[Landroid/os/Parcelable;
    :cond_48
    goto :goto_5b

    :cond_49
    invoke-direct {p0}, Landroid/app/Notification;->hasLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 7271
    return v1

    .line 7272
    :cond_50
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.backgroundImageUri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 7273
    return v1

    .line 7275
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBubbleNotification()Z
    .registers 2

    .line 7231
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isColorized()Z
    .registers 3

    .line 7197
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7198
    invoke-direct {p0}, Landroid/app/Notification;->hasColorizedPermission()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 7197
    :goto_19
    return v0
.end method

.method public blacklist isForegroundDisplayForceDeferred()Z
    .registers 3

    .line 7164
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o isForegroundService()Z
    .registers 2

    .line 7106
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist isGroupChild()Z
    .registers 2

    .line 3827
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist isGroupSummary()Z
    .registers 2

    .line 3819
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o isMediaNotification()Z
    .registers 8

    .line 7215
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    .line 7216
    .local v0, "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    const-class v1, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_19

    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 7217
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    move v1, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v3

    .line 7219
    .local v1, "isMediaStyle":Z
    :goto_1a
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v5, Landroid/media/session/MediaSession$Token;

    const-string v6, "android.mediaSession"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    move v4, v2

    .line 7222
    .local v4, "hasMediaSession":Z
    :goto_29
    if-eqz v1, :cond_2e

    if-eqz v4, :cond_2e

    move v2, v3

    :cond_2e
    return v2
.end method

.method public blacklist isStyle(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;)Z"
        }
    .end annotation

    .line 7185
    .local p1, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7186
    .local v0, "templateClass":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method synthetic blacklist lambda$writeToParcel$0$android-app-Notification(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "out"    # Landroid/os/Parcel;
    .param p4, "outFlags"    # I

    .line 3084
    if-ne p1, p3, :cond_18

    .line 3085
    monitor-enter p0

    .line 3086
    :try_start_3
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v0, :cond_e

    .line 3087
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 3089
    :cond_e
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3090
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0

    .line 3092
    :cond_18
    :goto_18
    return-void
.end method

.method public final greylist-max-o lightenPayload()V
    .registers 8

    .line 2971
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 2972
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2973
    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2974
    iput-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2975
    iput-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2976
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 2977
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2978
    .local v0, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 2979
    .local v1, "N":I
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 2980
    .local v2, "keys":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v1, :cond_55

    .line 2981
    aget-object v4, v2, v3

    .line 2982
    .local v4, "key":Ljava/lang/String;
    const-string v5, "android.tv.EXTENSIONS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 2983
    goto :goto_52

    .line 2985
    :cond_35
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2986
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_52

    instance-of v6, v5, Landroid/os/Parcelable;

    if-nez v6, :cond_4d

    instance-of v6, v5, [Landroid/os/Parcelable;

    if-nez v6, :cond_4d

    instance-of v6, v5, Landroid/util/SparseArray;

    if-nez v6, :cond_4d

    instance-of v6, v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_52

    .line 2991
    :cond_4d
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2980
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_52
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 2995
    .end local v0    # "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "N":I
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_55
    return-void
.end method

.method greylist-max-o reduceImageSizes(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 7052
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.reduced.images"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7053
    return-void

    .line 7055
    :cond_b
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 7057
    .local v0, "isLowRam":Z
    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    .line 7059
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    if-eq v2, v3, :cond_23

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 7060
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3a

    .line 7061
    :cond_23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 7062
    .local v2, "resources":Landroid/content/res/Resources;
    nop

    .line 7063
    if-eqz v0, :cond_2e

    const v4, 0x10502a4

    goto :goto_31

    .line 7064
    :cond_2e
    const v4, 0x10502a3

    .line 7062
    :goto_31
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 7065
    .local v4, "maxSize":I
    iget-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 7068
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "maxSize":I
    :cond_3a
    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_42

    iget-object v2, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_68

    .line 7069
    :cond_42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 7070
    .restart local v2    # "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v4

    .line 7071
    .local v4, "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-eqz v0, :cond_50

    .line 7072
    const v5, 0x10502a0

    goto :goto_53

    .line 7073
    :cond_50
    const v5, 0x105029f

    .line 7071
    :goto_53
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 7074
    .local v5, "maxSize":I
    iget-object v6, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_5e

    .line 7075
    invoke-virtual {v6, v5, v5}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 7077
    :cond_5e
    iget-object v6, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_68

    .line 7078
    invoke-static {v6, v5, v5}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7081
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    .end local v5    # "maxSize":I
    :cond_68
    iget-object v2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 7082
    iget-object v2, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 7083
    iget-object v2, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 7084
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7085
    return-void
.end method

.method public whitelist semDisableEdgeLighting()V
    .registers 2

    .line 13261
    iget v0, p0, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/app/Notification;->semFlags:I

    .line 13262
    return-void
.end method

.method public blacklist setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V
    .registers 2
    .param p1, "data"    # Landroid/app/Notification$BubbleMetadata;

    .line 3773
    iput-object p1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 3774
    return-void
.end method

.method public greylist setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3462
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_17

    .line 3463
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Notification"

    const-string/jumbo v2, "setLatestEventInfo() is deprecated and you should feel deprecated."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3467
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_29

    .line 3468
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "android.showWhen"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3472
    :cond_29
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3475
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-eqz p2, :cond_33

    .line 3476
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3478
    :cond_33
    if-eqz p3, :cond_38

    .line 3479
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3481
    :cond_38
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3483
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 3484
    return-void
.end method

.method public greylist setSmallIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 3802
    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 3803
    return-void
.end method

.method public blacklist shouldShowForegroundImmediately()Z
    .registers 5

    .line 7137
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 7138
    return v1

    .line 7142
    :cond_6
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_b

    .line 7143
    return v3

    .line 7148
    :cond_b
    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 7149
    const-string v2, "call"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 7150
    const-string/jumbo v2, "navigation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_2e

    array-length v0, v0

    if-lez v0, :cond_2e

    goto :goto_2f

    .line 7156
    :cond_2e
    return v3

    .line 7152
    :cond_2f
    :goto_2f
    return v1
.end method

.method public greylist-max-o showsChronometer()Z
    .registers 5

    .line 7251
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public greylist-max-o showsTime()Z
    .registers 5

    .line 7243
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public greylist-max-o suppressAlertingDueToGrouping()Z
    .registers 4

    .line 3834
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 3835
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    .line 3836
    return v1

    .line 3837
    :cond_f
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3838
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 3839
    return v1

    .line 3841
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 3542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3543
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Notification(channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3544
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3545
    const-string v1, " shortcut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3547
    const-string v1, " contentView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_43

    .line 3549
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3551
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 3553
    :cond_43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3555
    :goto_46
    const-string v1, " vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3556
    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x2

    const-string v3, "default"

    const/4 v4, 0x1

    if-eqz v1, :cond_58

    .line 3557
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    .line 3558
    :cond_58
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v1, :cond_85

    .line 3559
    array-length v1, v1

    sub-int/2addr v1, v4

    .line 3560
    .local v1, "N":I
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3561
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_64
    if-ge v5, v1, :cond_75

    .line 3562
    iget-object v6, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v6, v6, v5

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3563
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3561
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 3565
    .end local v5    # "i":I
    :cond_75
    const/4 v5, -0x1

    if-eq v1, v5, :cond_7f

    .line 3566
    iget-object v5, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v5, v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3568
    :cond_7f
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3569
    .end local v1    # "N":I
    goto :goto_88

    .line 3570
    :cond_85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3572
    :goto_88
    const-string v1, " sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_96

    .line 3574
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 3575
    :cond_96
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_a2

    .line 3576
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 3578
    :cond_a2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3580
    :goto_a5
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_ae

    .line 3581
    const-string v1, " tick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3583
    :cond_ae
    const-string v1, " defaults=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3584
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3585
    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3586
    iget v1, p0, Landroid/app/Notification;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3587
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/app/Notification;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, " color=0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3588
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v1, :cond_ec

    .line 3589
    const-string v1, " category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3590
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    :cond_ec
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v1, :cond_fa

    .line 3593
    const-string v1, " groupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3594
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3596
    :cond_fa
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    if-eqz v1, :cond_108

    .line 3597
    const-string v1, " sortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3598
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3600
    :cond_108
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_117

    .line 3601
    const-string v1, " actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3602
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3604
    :cond_117
    const-string v1, " vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3605
    iget v1, p0, Landroid/app/Notification;->visibility:I

    invoke-static {v1}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3606
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_137

    .line 3607
    const-string v1, " publicVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3608
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3610
    :cond_137
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_145

    .line 3611
    const-string v1, " locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3617
    :cond_145
    const-string v1, " semFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3618
    iget v1, p0, Landroid/app/Notification;->semFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3619
    const-string v1, " semPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3620
    iget v1, p0, Landroid/app/Notification;->semPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3621
    const-string v1, " semMissedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3622
    iget v1, p0, Landroid/app/Notification;->semMissedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3623
    iget-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    if-eqz v1, :cond_179

    .line 3624
    const-string v1, " semBadgeTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3625
    iget-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3630
    :cond_179
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3631
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2851
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_7

    .line 2852
    invoke-virtual {v0, p1}, Landroid/app/Notification;->visitUris(Ljava/util/function/Consumer;)V

    .line 2855
    :cond_7
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2857
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 2858
    :cond_13
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 2859
    :cond_1a
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 2860
    :cond_21
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 2862
    :cond_28
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2863
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2865
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_42

    .line 2866
    array-length v1, v0

    const/4 v2, 0x0

    :goto_38
    if-ge v2, v1, :cond_42

    aget-object v3, v0, v2

    .line 2867
    .local v3, "action":Landroid/app/Notification$Action;
    invoke-static {v3, p1}, Landroid/app/Notification$Action;->-$$Nest$mvisitUris(Landroid/app/Notification$Action;Ljava/util/function/Consumer;)V

    .line 2866
    .end local v3    # "action":Landroid/app/Notification$Action;
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 2871
    :cond_42
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1a8

    .line 2872
    const-class v1, Landroid/graphics/drawable/Icon;

    const-string v2, "android.largeIcon.big"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2873
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v1, Landroid/graphics/drawable/Icon;

    const-string v2, "android.pictureIcon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2879
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.audioContents"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2880
    .local v0, "audioContentsUri":Ljava/lang/Object;
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_75

    .line 2881
    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_83

    .line 2882
    :cond_75
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_83

    .line 2883
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2886
    :cond_83
    :goto_83
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.backgroundImageUri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 2887
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2890
    :cond_9a
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v2, Landroid/app/Person;

    const-string v3, "android.people.list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2892
    .local v1, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v1, :cond_c4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c4

    .line 2893
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 2894
    .local v3, "p":Landroid/app/Person;
    invoke-virtual {v3}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2895
    .end local v3    # "p":Landroid/app/Person;
    goto :goto_b0

    .line 2898
    :cond_c4
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v3, Landroid/app/RemoteInputHistoryItem;

    const-string v4, "android.remoteInputHistoryItems"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/RemoteInputHistoryItem;

    .line 2901
    .local v2, "history":[Landroid/app/RemoteInputHistoryItem;
    if-eqz v2, :cond_e8

    .line 2902
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d3
    array-length v4, v2

    if-ge v3, v4, :cond_e8

    .line 2903
    aget-object v4, v2, v3

    .line 2904
    .local v4, "item":Landroid/app/RemoteInputHistoryItem;
    invoke-virtual {v4}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_e5

    .line 2905
    invoke-virtual {v4}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2902
    .end local v4    # "item":Landroid/app/RemoteInputHistoryItem;
    :cond_e5
    add-int/lit8 v3, v3, 0x1

    goto :goto_d3

    .line 2912
    .end local v3    # "i":I
    :cond_e8
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v4, Landroid/app/Person;

    const-string v5, "android.messagingUser"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 2913
    .local v3, "person":Landroid/app/Person;
    if-eqz v3, :cond_fd

    .line 2914
    invoke-virtual {v3}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2917
    :cond_fd
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v5, Landroid/os/Parcelable;

    const-string v6, "android.messages"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    .line 2919
    .local v4, "messages":[Landroid/os/Parcelable;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_139

    .line 2920
    nop

    .line 2921
    invoke-static {v4}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v5

    .line 2920
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_118
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_139

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 2922
    .local v6, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2924
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    .line 2925
    .local v7, "senderPerson":Landroid/app/Person;
    if-eqz v7, :cond_138

    .line 2926
    invoke-virtual {v7}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2928
    .end local v6    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v7    # "senderPerson":Landroid/app/Person;
    :cond_138
    goto :goto_118

    .line 2931
    :cond_139
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v6, Landroid/os/Parcelable;

    const-string v7, "android.messages.historic"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Parcelable;

    .line 2933
    .local v5, "historic":[Landroid/os/Parcelable;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_175

    .line 2934
    nop

    .line 2935
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v6

    .line 2934
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_154
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_175

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$MessagingStyle$Message;

    .line 2936
    .local v7, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2938
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    .line 2939
    .local v8, "senderPerson":Landroid/app/Person;
    if-eqz v8, :cond_174

    .line 2940
    invoke-virtual {v8}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2942
    .end local v7    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v8    # "senderPerson":Landroid/app/Person;
    :cond_174
    goto :goto_154

    .line 2945
    :cond_175
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v7, Landroid/graphics/drawable/Icon;

    const-string v8, "android.conversationIcon"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v6}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2948
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v7, Landroid/app/Person;

    const-string v8, "android.callPerson"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    .line 2949
    .local v6, "callPerson":Landroid/app/Person;
    if-eqz v6, :cond_199

    .line 2950
    invoke-virtual {v6}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2952
    :cond_199
    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v8, Landroid/graphics/drawable/Icon;

    const-string v9, "android.verificationIcon"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v7}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2955
    .end local v0    # "audioContentsUri":Ljava/lang/Object;
    .end local v1    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    .end local v2    # "history":[Landroid/app/RemoteInputHistoryItem;
    .end local v3    # "person":Landroid/app/Person;
    .end local v4    # "messages":[Landroid/os/Parcelable;
    .end local v5    # "historic":[Landroid/os/Parcelable;
    .end local v6    # "callPerson":Landroid/app/Person;
    :cond_1a8
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v0, :cond_1b3

    .line 2956
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2959
    :cond_1b3
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1c7

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 2960
    new-instance v0, Landroid/app/Notification$WearableExtender;

    invoke-direct {v0, p0}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 2961
    .local v0, "extender":Landroid/app/Notification$WearableExtender;
    invoke-static {v0, p1}, Landroid/app/Notification$WearableExtender;->-$$Nest$mvisitUris(Landroid/app/Notification$WearableExtender;Ljava/util/function/Consumer;)V

    .line 2963
    .end local v0    # "extender":Landroid/app/Notification$WearableExtender;
    :cond_1c7
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3080
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 3081
    .local v0, "collectPendingIntents":Z
    :goto_7
    if-eqz v0, :cond_11

    .line 3082
    new-instance v1, Landroid/app/Notification$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/Notification$$ExternalSyntheticLambda0;-><init>(Landroid/app/Notification;Landroid/os/Parcel;)V

    invoke-static {v1}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3097
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-direct {p0, p1, p2}, Landroid/app/Notification;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 3098
    monitor-enter p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_25

    .line 3100
    :try_start_16
    iget-object v2, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 3101
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_22

    .line 3103
    if-eqz v0, :cond_21

    .line 3104
    invoke-static {v1}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3107
    :cond_21
    return-void

    .line 3101
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local v0    # "collectPendingIntents":Z
    .end local p0    # "this":Landroid/app/Notification;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p2    # "flags":I
    :try_start_24
    throw v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 3103
    .restart local v0    # "collectPendingIntents":Z
    .restart local p0    # "this":Landroid/app/Notification;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    .restart local p2    # "flags":I
    :catchall_25
    move-exception v2

    if-eqz v0, :cond_2b

    .line 3104
    invoke-static {v1}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3106
    :cond_2b
    throw v2
.end method
