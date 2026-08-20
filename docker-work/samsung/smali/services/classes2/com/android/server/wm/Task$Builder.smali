.class public Lcom/android/server/wm/Task$Builder;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mActivityOptions:Landroid/app/ActivityOptions;

.field public mActivityType:I

.field public mAffinity:Ljava/lang/String;

.field public mAffinityIntent:Landroid/content/Intent;

.field public mAskedCompatMode:Z

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mAutoRemoveRecents:Z

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingUid:I

.field public mCreatedByOrganizer:Z

.field public mDeferTaskAppear:Z

.field public mEffectiveUid:I

.field public mHasBeenVisible:Z

.field public mIntent:Landroid/content/Intent;

.field public mLastDescription:Ljava/lang/String;

.field public mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field public mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public mLastTimeMoved:J

.field public mLaunchCookie:Landroid/os/IBinder;

.field public mLaunchFlags:I

.field public mMinHeight:I

.field public mMinWidth:I

.field public mNeverRelinquishIdentity:Z

.field public mNextAffiliateTaskId:I

.field public mOnTop:Z

.field public mOrigActivity:Landroid/content/ComponentName;

.field public mParent:Lcom/android/server/wm/WindowContainer;

.field public mPrevAffiliateTaskId:I

.field public mRealActivity:Landroid/content/ComponentName;

.field public mRealActivitySuspended:Z

.field public mRemoveWithTaskOrganizer:Z

.field public mResizeMode:I

.field public mRootAffinity:Ljava/lang/String;

.field public mRootWasReset:Z

.field public mSourceTask:Lcom/android/server/wm/Task;

.field public mStageType:I

.field public mSupportsPictureInPicture:Z

.field public mTaskAffiliation:I

.field public mTaskId:I

.field public mUserId:I

.field public mUserSetupComplete:Z

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field public mWindowingMode:I


# direct methods
.method public static bridge synthetic -$$Nest$msetAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetAffinityIntent(Lcom/android/server/wm/Task$Builder;Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAffinityIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetAskedCompatMode(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAskedCompatMode(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetAutoRemoveRecents(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAutoRemoveRecents(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetCallingFeatureId(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetCallingPackage(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetCallingUid(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingUid(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetLastDescription(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastDescription(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetLastSnapshotData(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetLastTaskDescription(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetLastTimeMoved(Lcom/android/server/wm/Task$Builder;J)Lcom/android/server/wm/Task$Builder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task$Builder;->setLastTimeMoved(J)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetNeverRelinquishIdentity(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setNeverRelinquishIdentity(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetNextAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setNextAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetOrigActivity(Lcom/android/server/wm/Task$Builder;Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setOrigActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetPrevAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setPrevAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetRealActivitySuspended(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRealActivitySuspended(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetResizeMode(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setResizeMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetRootAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRootAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetRootWasReset(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRootWasReset(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetSupportsPictureInPicture(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setSupportsPictureInPicture(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetTaskAffiliation(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setTaskAffiliation(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetUserId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setUserId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetUserSetupComplete(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setUserSetupComplete(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetVoiceInteractor(Lcom/android/server/wm/Task$Builder;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 8030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7992
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    .line 7993
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    .line 8001
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    .line 8002
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    const/4 v0, 0x0

    .line 8008
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 8031
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/Task;
    .registers 7

    .line 8337
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_d

    instance-of v1, v0, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_d

    .line 8338
    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task$Builder;->validateRootTask(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 8341
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1f

    .line 8342
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 8343
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8346
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    .line 8347
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    .line 8348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    const/4 v0, 0x1

    .line 8349
    iput-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    .line 8350
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    .line 8351
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    .line 8352
    iget v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v2, p0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    .line 8353
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    .line 8354
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_58

    .line 8355
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getRemoveWithTaskOranizer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    .line 8358
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 8359
    iget-boolean v2, p0, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    invoke-static {v1, v2}, Lcom/android/server/wm/Task;->-$$Nest$fputmHasBeenVisible(Lcom/android/server/wm/Task;Z)V

    .line 8363
    iget v2, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-eqz v2, :cond_68

    .line 8364
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 8367
    :cond_68
    iget-object v2, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_95

    .line 8368
    instance-of v3, v2, Lcom/android/server/wm/Task;

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-eqz v3, :cond_8c

    .line 8369
    check-cast v2, Lcom/android/server/wm/Task;

    .line 8370
    iget-boolean v3, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    if-eqz v3, :cond_7c

    goto :goto_7d

    :cond_7c
    move v4, v5

    :goto_7d
    iget-object v3, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_87

    move v3, v0

    goto :goto_88

    :cond_87
    const/4 v3, 0x0

    :goto_88
    invoke-static {v2, v1, v4, v3}, Lcom/android/server/wm/Task;->-$$Nest$maddChild(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;IZ)V

    goto :goto_95

    .line 8373
    :cond_8c
    iget-boolean v3, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    if-eqz v3, :cond_91

    goto :goto_92

    :cond_91
    move v4, v5

    :goto_92
    invoke-virtual {v2, v1, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 8378
    :cond_95
    :goto_95
    iget v2, p0, Lcom/android/server/wm/Task$Builder;->mStageType:I

    if-eqz v2, :cond_9c

    .line 8380
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->setStageType(I)V

    .line 8385
    :cond_9c
    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    if-eqz p0, :cond_a3

    .line 8386
    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    :cond_a3
    return-object v1
.end method

.method public buildInner()Lcom/android/server/wm/Task;
    .registers 45
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 8394
    new-instance v41, Lcom/android/server/wm/Task;

    move-object/from16 v1, v41

    iget-object v2, v0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iget-object v4, v0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    iget-object v9, v0, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    iget-boolean v10, v0, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    iget-boolean v11, v0, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    iget-boolean v12, v0, Lcom/android/server/wm/Task$Builder;->mAskedCompatMode:Z

    iget v13, v0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    iget v14, v0, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    iget-object v15, v0, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    move-object/from16 v42, v1

    move-object/from16 v43, v2

    iget-wide v1, v0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    move-wide/from16 v16, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    move-object/from16 v20, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    move/from16 v23, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    move/from16 v24, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    move-object/from16 v26, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    move/from16 v27, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    move/from16 v28, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    move/from16 v29, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    move/from16 v30, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    move/from16 v31, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    move/from16 v32, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v35, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    move/from16 v36, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    move-object/from16 v37, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    move/from16 v38, v1

    iget-boolean v0, v0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    move/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct/range {v1 .. v40}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZLcom/android/server/wm/Task-IA;)V

    return-object v41
.end method

.method public getActivityType()I
    .registers 1

    .line 8100
    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    return p0
.end method

.method public getCreatedByOrganizer()Z
    .registers 1

    .line 8118
    iget-boolean p0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    return p0
.end method

.method public getWindowingMode()I
    .registers 1

    .line 8109
    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    return p0
.end method

.method public setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8080
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8085
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public setActivityType(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8095
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    return-object p0
.end method

.method public final setAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8254
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public final setAffinityIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8249
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final setAskedCompatMode(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8244
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mAskedCompatMode:Z

    return-object p0
.end method

.method public final setAutoRemoveRecents(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8239
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    return-object p0
.end method

.method public final setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8204
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public final setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8169
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final setCallingUid(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8164
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    return-object p0
.end method

.method public setCreatedByOrganizer(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8113
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    return-object p0
.end method

.method public setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8122
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    return-object p0
.end method

.method public setEffectiveUid(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8065
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    return-object p0
.end method

.method public setHasBeenVisible(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8137
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8055
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final setLastDescription(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8214
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8224
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    return-object p0
.end method

.method public final setLastTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8219
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public final setLastTimeMoved(J)Lcom/android/server/wm/Task$Builder;
    .registers 3

    .line 8154
    iput-wide p1, p0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    return-object p0
.end method

.method public setLaunchCookie(Landroid/os/IBinder;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8127
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    return-object p0
.end method

.method public setLaunchFlags(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8045
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    return-object p0
.end method

.method public setMinHeight(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8075
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    return-object p0
.end method

.method public setMinWidth(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8070
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    return-object p0
.end method

.method public final setNeverRelinquishIdentity(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8159
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    return-object p0
.end method

.method public final setNextAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8199
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    return-object p0
.end method

.method public setOnTop(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8132
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    return-object p0
.end method

.method public final setOrigActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8229
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8035
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public final setPrevAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8194
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    return-object p0
.end method

.method public setRealActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8060
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final setRealActivitySuspended(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8209
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    return-object p0
.end method

.method public final setResizeMode(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8174
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    return-object p0
.end method

.method public final setRootAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8259
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public final setRootWasReset(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8234
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    return-object p0
.end method

.method public setSourceTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8040
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public setStageType(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8143
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mStageType:I

    return-object p0
.end method

.method public final setSupportsPictureInPicture(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8179
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    return-object p0
.end method

.method public final setTaskAffiliation(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8189
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    return-object p0
.end method

.method public setTaskId(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8050
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    return-object p0
.end method

.method public final setUserId(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8149
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    return-object p0
.end method

.method public final setUserSetupComplete(Z)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8184
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    return-object p0
.end method

.method public final setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8264
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    return-object p0
.end method

.method public setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8090
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    return-object p0
.end method

.method public setWindowingMode(I)Lcom/android/server/wm/Task$Builder;
    .registers 2

    .line 8104
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    return-object p0
.end method

.method public final validateRootTask(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 11

    .line 8269
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-nez v0, :cond_b

    .line 8273
    iput v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 8276
    :cond_b
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_47

    if-eqz v0, :cond_47

    .line 8281
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_47

    .line 8283
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " of activityType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " already on display="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Can\'t have multiple."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8289
    :cond_47
    :goto_47
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iget-object v3, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-boolean v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    invoke-static {v0, v4, v5, v3}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZ)Z

    move-result v0

    if-nez v0, :cond_93

    .line 8294
    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_7a

    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_7a

    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mStageType:I

    .line 8296
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 8297
    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowEnableController;->deviceSupportsMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "ActivityTaskManager"

    const-string v3, "Although MW feature is disable, force support to create root stage task."

    .line 8298
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 8301
    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t create root task for unsupported windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8306
    :cond_93
    :goto_93
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a5

    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-ne v4, v1, :cond_9d

    goto :goto_a5

    .line 8308
    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Root task with pinned windowing mode cannot with non-standard activity type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    :goto_a5
    if-ne v0, v3, :cond_b4

    .line 8313
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 8315
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->dismissPip()V

    .line 8318
    :cond_b4
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_c1

    .line 8319
    iget v1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    .line 8323
    :cond_c1
    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_c7

    const/4 v0, 0x0

    goto :goto_d6

    .line 8324
    :cond_c7
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iget v5, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    iget-object v6, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v7, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    iget v8, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_d6
    if-eqz v0, :cond_dc

    .line 8329
    iput v2, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 8330
    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 8333
    :cond_dc
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    return-void
.end method
