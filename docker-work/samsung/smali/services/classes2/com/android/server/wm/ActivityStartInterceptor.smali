.class public Lcom/android/server/wm/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "ActivityStartInterceptor.java"


# instance fields
.field public mAInfo:Landroid/content/pm/ActivityInfo;

.field public mActivityOptions:Landroid/app/ActivityOptions;

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingPid:I

.field public mCallingUid:I

.field public mInTask:Lcom/android/server/wm/Task;

.field public mIntent:Landroid/content/Intent;

.field public mIsInterceptedForAliasActivity:Z

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public mRInfo:Landroid/content/pm/ResolveInfo;

.field public mRealCallingPid:I

.field public mRealCallingUid:I

.field public mResolvedType:Ljava/lang/String;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mServiceContext:Landroid/content/Context;

.field public mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field public mStartFlags:I

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mUserId:I

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$CQoegV_BvLALVAGLKJoR6DxH3Ac(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStartInterceptor;->lambda$interceptMultiWindowAliasActivityIfNeeded$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 5

    .line 145
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/RootWindowContainer;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/RootWindowContainer;Landroid/content/Context;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 152
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 153
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 154
    iput-object p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic lambda$interceptMultiWindowAliasActivityIfNeeded$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 4

    .line 637
    iget-wide v0, p1, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iget-wide p0, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final createCarlifeHomeIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 211
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.carlink.action.HOME"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10800000

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.carlink"

    const-string v1, "com.samsung.android.carlink.carlife.CarLifeStartHomeActivity"

    .line 214
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    .line 215
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.PACKAGE_NAME"

    .line 216
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;
    .registers 16

    .line 222
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;

    move-result-object v12

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v1, 0x1

    new-array v9, v1, [Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v4, v9, v6

    new-array v10, v1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    aput-object p0, v10, v6

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p1

    move v11, p2

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object p0

    .line 228
    new-instance p1, Landroid/content/IntentSender;

    invoke-direct {p1, p0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object p1
.end method

.method public final deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;
    .registers 3

    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCrossProfileAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 332
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 333
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_12
    return-object v1
.end method

.method public final getActualDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .registers 3

    .line 794
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-nez p1, :cond_12

    .line 796
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    :cond_12
    return-object p1
.end method

.method public final getActualDisplayId()I
    .registers 3

    .line 783
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 784
    :goto_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_16

    .line 785
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_16

    move v0, p0

    :cond_16
    return v0
.end method

.method public final getInterceptorInfo(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
    .registers 17

    move-object v0, p0

    .line 558
    new-instance v14, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    iget-object v12, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object v0, v14

    move-object/from16 v13, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IILandroid/app/ActivityOptions;Ljava/lang/Runnable;)V

    return-object v14
.end method

.method public final getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;
    .registers 1

    .line 731
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    return-object p0
.end method

.method public hasAliasActivity(Landroid/content/Intent;)Z
    .registers 3

    .line 722
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForAliasActivity:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final hasCrossProfileAnimation()Z
    .registers 2

    .line 320
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_e

    .line 321
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)Z
    .registers 15

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 241
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 242
    iput p6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 243
    iput p7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 244
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 245
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 246
    iput-object p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 247
    iput-object p5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 248
    iput-object p8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 250
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_20

    return p2

    .line 255
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptSuspendedPackageIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_27

    return p2

    .line 260
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptLockTaskModeViolationPackageIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_2e

    return p2

    .line 263
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptHarmfulAppIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_35

    return p2

    .line 270
    :cond_35
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptCarlifeHomeIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_40

    return p2

    .line 285
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptLockedManagedProfileIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_47

    return p2

    .line 289
    :cond_47
    iget-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 290
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityInterceptorCallbacks()Landroid/util/SparseArray;

    move-result-object p1

    const/4 p3, 0x0

    .line 292
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStartInterceptor;->getInterceptorInfo(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    move-result-object p4

    const/4 p5, 0x0

    move p6, p5

    .line 294
    :goto_54
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p7

    if-ge p6, p7, :cond_92

    .line 295
    invoke-virtual {p1, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 296
    invoke-virtual {p7, p4}, Lcom/android/server/wm/ActivityInterceptorCallback;->intercept(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;

    move-result-object p7

    if-nez p7, :cond_69

    add-int/lit8 p6, p6, 0x1

    goto :goto_54

    .line 300
    :cond_69
    iget-object v1, p7, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->intent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 301
    iget-object p1, p7, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->activityOptions:Landroid/app/ActivityOptions;

    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 302
    iget p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 303
    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 305
    iget-object p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget p6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {p4, p5, p1, p6, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    return p2

    .line 311
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptMultiWindowAliasActivityIfNeeded()Z

    move-result p0

    if-eqz p0, :cond_99

    return p2

    :cond_99
    return p5
.end method

.method public interceptCarlifeHomeIfNeeded()Z
    .registers 9

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_6c

    .line 188
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 189
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 191
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->createCarlifeHomeIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v1, :cond_6c

    if-eqz v2, :cond_6c

    .line 195
    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 196
    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 197
    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 199
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 200
    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const-string p0, "ActivityTaskManager"

    const-string v0, "Start launcher is not allowed on Carlife Dispaly"

    .line 201
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_6c
    const/4 p0, 0x0

    return p0
.end method

.method public final interceptHarmfulAppIfNeeded()Z
    .registers 11

    const/4 v0, 0x0

    .line 517
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 518
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_11} :catch_4d

    if-nez v1, :cond_14

    return v0

    .line 527
    :cond_14
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 530
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 533
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 534
    iget v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v6, 0x0

    .line 535
    iput-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 537
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 538
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 p0, 0x1

    return p0

    :catch_4d
    return v0
.end method

.method public final interceptLockTaskModeViolationPackageIfNeeded()Z
    .registers 9

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_a

    goto :goto_57

    .line 419
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    .line 420
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 421
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-static {v2, v4}, Lcom/android/server/wm/ActivityRecord;->getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I

    move-result v2

    .line 422
    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v4, v3, v2}, Lcom/android/server/wm/LockTaskController;->isActivityAllowed(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    .line 425
    :cond_25
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/app/BlockedAppActivity;->createIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 426
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 427
    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v4, 0x0

    .line 428
    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 429
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 430
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 p0, 0x1

    return p0

    :cond_57
    :goto_57
    return v1
.end method

.method public final interceptLockedManagedProfileIfNeeded()Z
    .registers 9

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 439
    :cond_c
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 440
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 441
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v1, 0x0

    .line 442
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 446
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_26

    .line 461
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v3, "android.intent.extra.TASK_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 464
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_30

    .line 465
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 468
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 469
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 470
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 p0, 0x1

    return p0
.end method

.method public final interceptMultiWindowAliasActivityIfNeeded()Z
    .registers 19

    move-object/from16 v0, p0

    .line 566
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    .line 567
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isStartedFromWindowTypeLauncher()Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 569
    :goto_11
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_18

    if-nez v1, :cond_18

    return v3

    :cond_18
    if-eqz v4, :cond_23

    .line 571
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_23

    if-nez v1, :cond_23

    return v3

    .line 574
    :cond_23
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_2c

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v4, :cond_2c

    return v3

    .line 576
    :cond_2c
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1b5

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1b5

    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 577
    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v4

    if-nez v4, :cond_3e

    goto/16 :goto_1b5

    .line 581
    :cond_3e
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 583
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4f

    return v3

    .line 587
    :cond_4f
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_58

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    goto :goto_59

    :cond_58
    move v5, v3

    .line 592
    :goto_59
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_9b

    .line 593
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_76

    .line 595
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    .line 594
    invoke-static {v7}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 596
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v6

    goto :goto_77

    :cond_76
    move v6, v3

    .line 598
    :goto_77
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_81

    move v7, v2

    goto :goto_82

    :cond_81
    move v7, v3

    .line 602
    :goto_82
    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v8

    if-nez v8, :cond_90

    .line 605
    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v8

    .line 607
    :cond_90
    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9e

    move v5, v9

    goto :goto_9e

    :cond_9b
    move v6, v3

    move v7, v6

    move v8, v7

    .line 613
    :cond_9e
    :goto_9e
    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-nez v9, :cond_b0

    .line 615
    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    .line 620
    :cond_b0
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v10

    if-eqz v10, :cond_bc

    :cond_ba
    :goto_ba
    move v7, v2

    goto :goto_cd

    :cond_bc
    const/4 v10, 0x5

    .line 622
    invoke-virtual {v9, v10, v3}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_c4

    goto :goto_ba

    :cond_c4
    if-nez v6, :cond_ba

    if-ne v8, v10, :cond_c9

    goto :goto_ba

    :cond_c9
    if-eqz v7, :cond_cc

    goto :goto_ba

    :cond_cc
    move v7, v3

    .line 634
    :goto_cd
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 635
    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v12, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v10, v11, v12, v8}, Lcom/android/server/wm/MultiTaskingController;->findAliasManagedTaskInPackage(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 637
    new-instance v10, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 638
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 640
    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v11, 0x0

    if-eqz v10, :cond_15a

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v10

    if-nez v10, :cond_f8

    if-eqz v1, :cond_15a

    :cond_f8
    move v1, v3

    .line 642
    :goto_f9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_12f

    .line 643
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 644
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v9

    if-eq v9, v5, :cond_118

    .line 645
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_114

    if-ne v5, v10, :cond_12d

    .line 647
    :cond_114
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    return v2

    .line 653
    :cond_118
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_12d

    .line 654
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v9

    if-eqz v9, :cond_128

    .line 655
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    return v2

    .line 658
    :cond_128
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_12d
    add-int/2addr v1, v2

    goto :goto_f9

    :cond_12f
    if-nez v7, :cond_178

    .line 663
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_139

    :goto_137
    move v1, v2

    goto :goto_179

    .line 667
    :cond_139
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_178

    .line 668
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 669
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_178

    goto :goto_137

    :cond_15a
    if-eqz v6, :cond_178

    .line 675
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_178

    .line 676
    invoke-virtual {v9, v6}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_16d

    .line 677
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_16e

    :cond_16d
    move-object v1, v11

    .line 679
    :goto_16e
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_178

    .line 680
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    return v2

    :cond_178
    move v1, v3

    :goto_179
    if-nez v7, :cond_17d

    if-eqz v1, :cond_1b5

    .line 686
    :cond_17d
    new-instance v1, Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 687
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 688
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    iget-object v12, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/16 v16, 0x0

    const/16 v17, 0x3e8

    move-object v13, v1

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 692
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v5, v1, v4, v6, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v4, :cond_1b5

    if-eqz v5, :cond_1b5

    .line 695
    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 696
    iput-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 697
    iput-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 698
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForAliasActivity:Z

    return v2

    :cond_1b5
    :goto_1b5
    return v3
.end method

.method public final interceptQuietProfileIfNeeded()Z
    .registers 9

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 344
    :cond_10
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v1, 0x50000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 347
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 348
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 349
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 353
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 354
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 p0, 0x1

    return p0
.end method

.method public final interceptSuperLockIfNeeded()Z
    .registers 9

    .line 735
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 741
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->isIntentFromExceptionList()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 745
    :cond_17
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->createLockdownIntent(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 746
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 747
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v0, 0x0

    .line 748
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 750
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_46

    .line 752
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_57

    .line 754
    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 756
    :goto_57
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 p0, 0x1

    return p0
.end method

.method public final interceptSuspendedByAdminPackage()Z
    .registers 10

    .line 359
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 360
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 364
    :cond_c
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v1, "android.app.extra.RESTRICTION"

    const-string/jumbo v3, "policy_suspend_packages"

    .line 365
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 368
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 373
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_55

    .line 376
    :cond_44
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 379
    :goto_55
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    return v2
.end method

.method public final interceptSuspendedPackageIfNeeded()Z
    .registers 15

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_7f

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_7f

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_11

    goto :goto_7f

    .line 389
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    if-nez v0, :cond_1a

    return v1

    .line 393
    :cond_1a
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 394
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "android"

    .line 395
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 396
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptSuspendedByAdminPackage()Z

    move-result p0

    return p0

    .line 398
    :cond_33
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v4

    .line 400
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCrossProfileAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    .line 401
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v5, v0

    goto :goto_4b

    :cond_4a
    move-object v5, v1

    .line 403
    :goto_4b
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v6, 0x4000000

    invoke-virtual {p0, v0, v6}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v6

    .line 405
    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 407
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 408
    iget v13, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v13, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v10, 0x0

    .line 409
    iput-object v10, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 410
    iget-object v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v11, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 411
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 p0, 0x1

    return p0

    :cond_7f
    :goto_7f
    return v1
.end method

.method public final interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .registers 7

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 483
    :cond_c
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 484
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v0, :cond_20

    :cond_1f
    return-object v1

    .line 491
    :cond_20
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 493
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    const-string v3, "keyguard"

    .line 494
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    const/4 v3, 0x1

    .line 495
    invoke-virtual {v2, v1, v1, p2, v3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_3a

    return-object v1

    :cond_3a
    const v1, 0x10804000

    .line 500
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 502
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.INTENT"

    .line 503
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 504
    iget-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_6a

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_6a

    .line 506
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object p0

    .line 505
    invoke-static {p0}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_6a

    .line 507
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_6a

    const/high16 p0, 0x8000000

    .line 508
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6a
    return-object p2
.end method

.method public final isFreeFormMode()Z
    .registers 2

    .line 778
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 779
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public final isIntentFromExceptionList()Z
    .registers 3

    .line 761
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_98

    .line 762
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 763
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 764
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 765
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.telephonyui.action.OPEN_EMERGENCY_DIALER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 766
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.action.INTERACTION_ICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 767
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.LOCKDOWN_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 768
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 769
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.incallui.InCallActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 770
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.incallui.call.InCallActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_98

    :cond_96
    const/4 p0, 0x1

    return p0

    :cond_98
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityLaunched(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 547
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityInterceptorCallbacks()Landroid/util/SparseArray;

    move-result-object v0

    .line 549
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 548
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->getInterceptorInfo(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    move-result-object p0

    const/4 v1, 0x0

    .line 550
    :goto_13
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 551
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 552
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, p1, v3, p0}, Lcom/android/server/wm/ActivityInterceptorCallback;->onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V
    .registers 9

    .line 707
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 708
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 709
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    .line 710
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 712
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    const/4 v2, 0x0

    invoke-virtual {v0, v6, p1, v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz p1, :cond_38

    if-eqz v0, :cond_38

    .line 715
    iput-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 716
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 717
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    :cond_38
    return-void
.end method

.method public setStates(IIIILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 164
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public setStates(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    .line 171
    iput p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    .line 172
    iput p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    .line 173
    iput p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 174
    iput p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    .line 175
    iput-object p5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 176
    iput-object p6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    .line 179
    iput-object p7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForAliasActivity:Z

    return-void
.end method
