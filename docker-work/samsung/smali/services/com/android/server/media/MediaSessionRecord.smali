.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/media/MediaSessionRecordImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field public static final ALWAYS_PRIORITY_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ART_URIS:[Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "MediaSessionRecord"

.field public static final TRANSITION_PRIORITY_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAudioAttrs:Landroid/media/AudioAttributes;

.field public mAudioManager:Landroid/media/AudioManager;

.field public final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field public final mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentVolume:I

.field public mDestroyed:Z

.field public mDuration:J

.field public mExtras:Landroid/os/Bundle;

.field public mFlags:J

.field public final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field public mIsActive:Z

.field public mLaunchIntent:Landroid/app/PendingIntent;

.field public final mLock:Ljava/lang/Object;

.field public mMaxVolume:I

.field public mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

.field public mMetadata:Landroid/media/MediaMetadata;

.field public mMetadataDescription:Ljava/lang/String;

.field public mOptimisticVolume:I

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mPlaybackState:Landroid/media/session/PlaybackState;

.field public mPolicies:I

.field public mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public mQueueTitle:Ljava/lang/CharSequence;

.field public mRatingType:I

.field public final mService:Lcom/android/server/media/MediaSessionService;

.field public final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field public final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field public final mSessionInfo:Landroid/os/Bundle;

.field public final mSessionToken:Landroid/media/session/MediaSession$Token;

.field public final mTag:Ljava/lang/String;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUserId:I

.field public final mVolumeAdjustmentForRemoteGroupSessions:Z

.field public mVolumeControlId:Ljava/lang/String;

.field public mVolumeControlType:I

.field public mVolumeType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmController(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmControllerCallbackHolders(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentVolume(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExtras(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlags(Lcom/android/server/media/MediaSessionRecord;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLaunchIntent(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetadata(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOptimisticVolume(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPlaybackState(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicies(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQueue(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQueueTitle(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRatingType(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionInfo(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUgmInternal(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/uri/UriGrantsManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeType(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAudioAttrs(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentVolume(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDuration(Lcom/android/server/media/MediaSessionRecord;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmExtras(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFlags(Lcom/android/server/media/MediaSessionRecord;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsActive(Lcom/android/server/media/MediaSessionRecord;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLaunchIntent(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxVolume(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaButtonReceiverHolder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMetadata(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMetadataDescription(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOptimisticVolume(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPlaybackState(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQueue(Lcom/android/server/media/MediaSessionRecord;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQueueTitle(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRatingType(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVolumeControlId(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVolumeControlType(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVolumeType(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetControllerHolderIndexForCb(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetStateWithUpdatedPosition(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetVolumeAttributes(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpushEvent(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushExtrasUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushMetadataUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushPlaybackStateUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushQueueTitleUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushQueueUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushSessionDestroyed(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushVolumeUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVolumeTo(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetALWAYS_PRIORITY_STATES()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetART_URIS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/media/MediaSessionRecord;->ART_URIS:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTRANSITION_PRIORITY_STATES()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smcomponentNameExists(Landroid/content/ComponentName;Landroid/content/Context;I)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->componentNameExists(Landroid/content/ComponentName;Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 6

    const-string v0, "android.media.metadata.ALBUM_ART_URI"

    const-string v1, "android.media.metadata.ART_URI"

    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    .line 88
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->ART_URIS:[Ljava/lang/String;

    const-string v0, "MediaSessionRecord"

    const/4 v1, 0x3

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Integer;

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x5

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/16 v0, 0x9

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const/16 v0, 0xa

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 104
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    new-array v0, v1, [Ljava/lang/Integer;

    const/4 v2, 0x6

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const/16 v2, 0x8

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 113
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    .line 118
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 119
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    .line 171
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v0, 0x2

    .line 172
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 174
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    const/4 v1, -0x1

    .line 175
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 179
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 180
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    const-wide/16 v1, -0x1

    .line 182
    iput-wide v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 904
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$3;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$3;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    .line 191
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 192
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 193
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 194
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 195
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 196
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    .line 197
    new-instance p1, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 198
    new-instance p3, Landroid/media/session/MediaSession$Token;

    invoke-direct {p3, p2, p1}, Landroid/media/session/MediaSession$Token;-><init>(ILandroid/media/session/ISessionController;)V

    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 199
    new-instance p1, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$SessionStub-IA;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 200
    new-instance p1, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {p1, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 201
    iput-object p8, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 202
    invoke-virtual {p8}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 203
    new-instance p3, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-direct {p3, p0, p9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const-string p3, "audio"

    .line 204
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 205
    sget-object p3, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 206
    iput p10, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    .line 207
    const-class p3, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 208
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110203

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeAdjustmentForRemoteGroupSessions:Z

    .line 212
    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->-$$Nest$fgetmCb(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public static componentNameExists(Landroid/content/ComponentName;Landroid/content/Context;I)Z
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.INTERACT_ACROSS_USERS"
    .end annotation

    .line 918
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 919
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 920
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 922
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 923
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 926
    invoke-virtual {p1, v0, p2, p0}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 928
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getVolumeStream(Landroid/media/AudioAttributes;)I
    .registers 2

    if-nez p0, :cond_9

    .line 123
    sget-object p0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result p0

    return p0

    .line 125
    :cond_9
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result p0

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_17

    .line 127
    sget-object p0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result p0

    :cond_17
    return p0
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    .registers 21

    move-object v0, p0

    move/from16 v7, p6

    and-int/lit8 v9, p7, 0x4

    const/4 v1, 0x1

    .line 305
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_16

    :cond_13
    move/from16 v8, p7

    goto :goto_19

    :cond_16
    :goto_16
    and-int/lit8 v2, p7, -0x5

    move v8, v2

    .line 308
    :goto_19
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    if-eq v2, v1, :cond_dc

    .line 309
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->shouldNotSendKeyToAppCastingSession()Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_dc

    .line 315
    :cond_25
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const-string v9, "MediaSessionRecord"

    if-nez v1, :cond_36

    .line 316
    sget-boolean v1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v1, :cond_d6

    const-string v1, "Session does not support volume adjustment"

    .line 317
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d6

    :cond_36
    const/16 v1, 0x65

    if-eq v7, v1, :cond_d1

    const/16 v1, -0x64

    if-eq v7, v1, :cond_d1

    const/16 v1, 0x64

    if-ne v7, v1, :cond_44

    goto/16 :goto_d1

    .line 324
    :cond_44
    sget-boolean v10, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v10, :cond_70

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjusting volume, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", asSystemService="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dir="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :cond_70
    move-object v2, p1

    move/from16 v11, p5

    .line 328
    :goto_73
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v2, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(Ljava/lang/String;IIZI)V

    .line 330
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v1, :cond_86

    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    :cond_86
    add-int v2, v1, v7

    .line 331
    iput v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    const/4 v3, 0x0

    .line 332
    iget v4, v0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 333
    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v1, v2, :cond_ae

    .line 336
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    :cond_ae
    if-eqz v10, :cond_d6

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusted optimistic volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    :cond_d1
    :goto_d1
    const-string v1, "Muting remote playback is not supported"

    .line 322
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_d6
    :goto_d6
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1, v8, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    goto :goto_f3

    :cond_dc
    :goto_dc
    move/from16 v11, p5

    .line 311
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v1

    move-object v0, p0

    move/from16 v2, p6

    move v3, v8

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p8

    .line 312
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V

    :goto_f3
    return-void
.end method

.method public binderDied()V
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void
.end method

.method public canHandleVolumeKey()Z
    .registers 7

    .line 488
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackTypeLocal()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5e

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeAdjustmentForRemoteGroupSessions:Z

    if-eqz v0, :cond_c

    goto :goto_5e

    .line 491
    :cond_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object v0

    .line 492
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 493
    invoke-virtual {v0, v2}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RoutingSessionInfo;

    .line 497
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 499
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_3d

    move v0, v1

    move v3, v0

    goto :goto_40

    :cond_3d
    move v3, v1

    goto :goto_1e

    :cond_3f
    move v0, v2

    :goto_40
    if-nez v3, :cond_5b

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No routing session for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaSessionRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5b
    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_5e
    :goto_5e
    return v1
.end method

.method public checkPlaybackActiveState(Z)Z
    .registers 3

    .line 420
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 423
    :cond_6
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result p0

    if-ne p0, p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public close()V
    .registers 4

    .line 447
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 449
    monitor-exit v0

    return-void

    .line 451
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->-$$Nest$fgetmCb(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x1

    .line 452
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    const/4 v1, 0x0

    .line 453
    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 454
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 455
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ownerPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ownerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "launchIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mediaButtonReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rating type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "controllers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_115
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_140

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_11b

    .line 546
    :cond_140
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 547
    monitor-exit v0
    :try_end_144
    .catchall {:try_start_115 .. :try_end_144} :catchall_1fe

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v1, :cond_158

    const/4 v1, 0x0

    goto :goto_15c

    :cond_158
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_15c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audioAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "volumeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", controlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "queueTitle="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", size="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez p0, :cond_1ef

    const/4 p0, 0x0

    goto :goto_1f3

    :cond_1ef
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_1f3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 554
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_1fe
    move-exception p0

    .line 547
    :try_start_1ff
    monitor-exit v0
    :try_end_200
    .catchall {:try_start_1ff .. :try_end_200} :catchall_1fe

    throw p0
.end method

.method public final getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .registers 4

    .line 876
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 877
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_28

    .line 878
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    return v0

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_28
    const/4 p0, -0x1

    return p0
.end method

.method public getFlags()J
    .registers 3

    .line 1855
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public getMediaButtonReceiver()Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object p0
.end method

.method public getSessionPolicies()I
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_3
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 517
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method public final getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .registers 15

    .line 843
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 845
    monitor-exit v0

    return-object v2

    .line 847
    :cond_a
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 848
    iget-wide v3, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 849
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_6d

    if-eqz v1, :cond_68

    .line 852
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_26

    .line 853
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_26

    .line 854
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_68

    .line 855
    :cond_26
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v5

    .line 856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-lez p0, :cond_68

    .line 858
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result p0

    sub-long v5, v12, v5

    long-to-float v0, v5

    mul-float/2addr p0, v0

    float-to-long v5, p0

    .line 859
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v9

    add-long/2addr v5, v9

    cmp-long p0, v3, v7

    if-ltz p0, :cond_4c

    cmp-long p0, v5, v3

    if-lez p0, :cond_4c

    move-wide v9, v3

    goto :goto_53

    :cond_4c
    cmp-long p0, v5, v7

    if-gez p0, :cond_52

    move-wide v9, v7

    goto :goto_53

    :cond_52
    move-wide v9, v5

    .line 865
    :goto_53
    new-instance p0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p0, v1}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 866
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v8

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v11

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 868
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    :cond_68
    if-nez v2, :cond_6b

    goto :goto_6c

    :cond_6b
    move-object v1, v2

    :goto_6c
    return-object v1

    :catchall_6d
    move-exception p0

    .line 849
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public getUid()I
    .registers 1

    .line 259
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 269
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return p0
.end method

.method public final getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .registers 10

    .line 888
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_3
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x2

    if-ne v2, v1, :cond_23

    .line 890
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    goto :goto_10

    :cond_e
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    :goto_10
    move v6, v1

    .line 891
    new-instance v1, Landroid/media/session/MediaController$PlaybackInfo;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    .line 895
    :cond_23
    iget-object v6, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 896
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_3f

    .line 897
    invoke-static {v6}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 898
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 899
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 900
    new-instance p0, Landroid/media/session/MediaController$PlaybackInfo;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    return-object p0

    :catchall_3f
    move-exception p0

    .line 896
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public hasFlag(I)Z
    .registers 4

    .line 1859
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    int-to-long p0, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isActive()Z
    .registers 2

    .line 407
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isClosed()Z
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 462
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isPlaybackTypeLocal()Z
    .registers 2

    .line 433
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSystemPriority()Z
    .registers 5

    .line 280
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V
    .registers 5

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", callback package="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSessionRecord"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V
    .registers 22

    move-object v1, p0

    move/from16 v0, p7

    .line 567
    sget-boolean v2, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v2, :cond_3a

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjusting local volume, stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dir="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", asSystemService="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", useSuggested="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MediaSessionRecord"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_3a
    move v3, p1

    move v4, p2

    move/from16 v5, p8

    :goto_3e
    if-eqz v0, :cond_50

    .line 576
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e8

    .line 578
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    move v7, v2

    move v8, v6

    move-object v6, v0

    goto :goto_56

    :cond_50
    move-object/from16 v6, p4

    move/from16 v8, p5

    move/from16 v7, p6

    .line 584
    :goto_56
    iget-object v10, v1, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v11, Lcom/android/server/media/MediaSessionRecord$2;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p8

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;III)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 792
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 794
    monitor-exit v0

    return-void

    .line 796
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_46

    const/4 v0, 0x0

    .line 798
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 800
    :try_start_1d
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1d .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_11

    :catch_25
    move-exception v3

    const-string/jumbo v4, "unexpected exception in pushEvent"

    .line 808
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_11

    :catch_2d
    move-exception v3

    if-nez v0, :cond_35

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 805
    :cond_35
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v4, "Removing dead callback in pushEvent"

    .line 806
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_11

    :cond_3e
    if-eqz v0, :cond_45

    .line 812
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_45
    return-void

    :catchall_46
    move-exception p0

    .line 796
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final pushExtrasUpdate()V
    .registers 7

    .line 739
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 741
    monitor-exit v0

    return-void

    .line 743
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    .line 744
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_48

    const/4 v0, 0x0

    .line 746
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 748
    :try_start_1f
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_26} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_13

    :catch_27
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushExtrasUpdate"

    .line 756
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_13

    :catch_2f
    move-exception v4

    if-nez v0, :cond_37

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 753
    :cond_37
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushExtrasUpdate"

    .line 754
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_13

    :cond_40
    if-eqz v0, :cond_47

    .line 760
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_47
    return-void

    :catchall_48
    move-exception p0

    .line 744
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public final pushMetadataUpdate()V
    .registers 7

    .line 650
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 652
    monitor-exit v0

    return-void

    .line 654
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 655
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_48

    const/4 v0, 0x0

    .line 657
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 659
    :try_start_1f
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_26} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_13

    :catch_27
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushMetadataUpdate"

    .line 667
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_13

    :catch_2f
    move-exception v4

    if-nez v0, :cond_37

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    :cond_37
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushMetadataUpdate"

    .line 665
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_13

    :cond_40
    if-eqz v0, :cond_47

    .line 671
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_47
    return-void

    :catchall_48
    move-exception p0

    .line 655
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public final pushPlaybackStateUpdate()V
    .registers 7

    .line 622
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 624
    monitor-exit v0

    return-void

    .line 626
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 627
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_48

    const/4 v0, 0x0

    .line 629
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 631
    :try_start_1f
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_26} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_13

    :catch_27
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushPlaybackStateUpdate"

    .line 640
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_13

    :catch_2f
    move-exception v4

    if-nez v0, :cond_37

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 636
    :cond_37
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushPlaybackStateUpdate"

    .line 637
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_13

    :cond_40
    if-eqz v0, :cond_47

    .line 644
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_47
    return-void

    :catchall_48
    move-exception p0

    .line 627
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public final pushQueueTitleUpdate()V
    .registers 7

    .line 712
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 714
    monitor-exit v0

    return-void

    .line 716
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    .line 717
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_48

    const/4 v0, 0x0

    .line 719
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 721
    :try_start_1f
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_26} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_13

    :catch_27
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushQueueTitleUpdate"

    .line 729
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_13

    :catch_2f
    move-exception v4

    if-nez v0, :cond_37

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 726
    :cond_37
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushQueueTitleUpdate"

    .line 727
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_13

    :cond_40
    if-eqz v0, :cond_47

    .line 733
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_47
    return-void

    :catchall_48
    move-exception p0

    .line 717
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public final pushQueueUpdate()V
    .registers 8

    .line 677
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 679
    monitor-exit v0

    return-void

    .line 681
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    move-object v1, v2

    goto :goto_17

    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 682
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_61

    .line 684
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v2

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    if-eqz v1, :cond_37

    .line 687
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v6, 0x1

    .line 690
    invoke-virtual {v5, v6}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    goto :goto_38

    :cond_37
    move-object v5, v2

    .line 694
    :goto_38
    :try_start_38
    invoke-static {v4}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_3f
    .catch Landroid/os/DeadObjectException; {:try_start_38 .. :try_end_3f} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40

    goto :goto_1f

    :catch_40
    move-exception v5

    const-string/jumbo v6, "unexpected exception in pushQueueUpdate"

    .line 702
    invoke-virtual {p0, v6, v4, v5}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_1f

    :catch_48
    move-exception v5

    if-nez v3, :cond_50

    .line 697
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 699
    :cond_50
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v6, "Removing dead callback in pushQueueUpdate"

    .line 700
    invoke-virtual {p0, v6, v4, v5}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_1f

    :cond_59
    if-eqz v3, :cond_60

    .line 706
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_60
    return-void

    :catchall_61
    move-exception p0

    .line 682
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final pushSessionDestroyed()V
    .registers 6

    .line 817
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v1, :cond_9

    .line 821
    monitor-exit v0

    return-void

    .line 823
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_50

    .line 824
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 826
    :try_start_1c
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmDeathMonitor(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 827
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_33
    .catch Ljava/util/NoSuchElementException; {:try_start_1c .. :try_end_33} :catch_43
    .catch Landroid/os/DeadObjectException; {:try_start_1c .. :try_end_33} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_33} :catch_34

    goto :goto_10

    :catch_34
    move-exception v2

    const-string/jumbo v3, "unexpected exception in pushSessionDestroyed"

    .line 833
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_10

    :catch_3c
    move-exception v2

    const-string v3, "Removing dead callback in pushSessionDestroyed"

    .line 831
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_10

    :catch_43
    move-exception v2

    const-string v3, "error unlinking to binder death"

    .line 829
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_10

    .line 837
    :cond_4a
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void

    :catchall_50
    move-exception p0

    .line 823
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final pushVolumeUpdate()V
    .registers 7

    .line 766
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 768
    monitor-exit v0

    return-void

    .line 770
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    .line 771
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_4a

    const/4 v0, 0x0

    .line 773
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 775
    :try_start_21
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_21 .. :try_end_28} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_15

    :catch_29
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushVolumeUpdate"

    .line 783
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_15

    :catch_31
    move-exception v4

    if-nez v0, :cond_39

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    :cond_39
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushVolumeUpdate"

    .line 781
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_15

    :cond_42
    if-eqz v0, :cond_49

    .line 787
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_49
    return-void

    :catchall_4a
    move-exception p0

    .line 771
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .registers 16

    .line 482
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public setSessionPolicies(I)V
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_3
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    .line 524
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final setVolumeTo(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 16

    .line 354
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 355
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v2

    .line 357
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v8, Lcom/android/server/media/MediaSessionRecord$1;

    move-object v0, v8

    move-object v1, p0

    move v3, p5

    move v4, p6

    move-object v5, p2

    move v6, p4

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;IIILjava/lang/String;II)V

    invoke-virtual {p1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_90

    .line 371
    :cond_1d
    iget p2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v0, 0x2

    const-string v1, "MediaSessionRecord"

    if-eq p2, v0, :cond_2e

    .line 372
    sget-boolean p1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz p1, :cond_8b

    const-string p1, "Session does not support setting volume"

    .line 373
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 376
    :cond_2e
    iget p2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p5, 0x0

    invoke-static {p5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 377
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(Ljava/lang/String;III)V

    .line 379
    iget p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez p1, :cond_44

    iget p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 380
    :cond_44
    iget p3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 381
    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 p4, 0x3e8

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    iget p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq p1, p2, :cond_67

    .line 384
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 387
    :cond_67
    sget-boolean p1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz p1, :cond_8b

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Set optimistic volume to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " max is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_8b
    :goto_8b
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, p6, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    :goto_90
    return-void
.end method

.method public final shouldNotSendKeyToAppCastingSession()Z
    .registers 3

    .line 1863
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-boolean v0, v0, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1868
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget p0, p0, Lcom/android/server/media/MediaSessionService;->mAppCastingUid:I

    if-ne v0, p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
