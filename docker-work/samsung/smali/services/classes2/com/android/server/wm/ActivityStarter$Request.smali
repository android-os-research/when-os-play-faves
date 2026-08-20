.class Lcom/android/server/wm/ActivityStarter$Request;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final DEFAULT_CALLING_PID:I = 0x0

.field public static final DEFAULT_CALLING_UID:I = -0x1

.field public static final DEFAULT_REAL_CALLING_PID:I = 0x0

.field public static final DEFAULT_REAL_CALLING_UID:I = -0x1


# instance fields
.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public activityOptions:Lcom/android/server/wm/SafeActivityOptions;

.field public allowBackgroundActivityStart:Z

.field public allowPendingRemoteAnimationRegistryLookup:Z

.field public avoidMoveToFront:Z

.field public caller:Landroid/app/IApplicationThread;

.field public callingFeatureId:Ljava/lang/String;

.field public callingPackage:Ljava/lang/String;

.field public callingPid:I

.field public callingUid:I

.field public componentSpecified:Z

.field public ephemeralIntent:Landroid/content/Intent;

.field public errorCallbackToken:Landroid/os/IBinder;

.field public filterCallingUid:I

.field public globalConfig:Landroid/content/res/Configuration;

.field public ignoreTargetSecurity:Z

.field public inTask:Lcom/android/server/wm/Task;

.field public inTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public intent:Landroid/content/Intent;

.field public intentGrants:Lcom/android/server/uri/NeededUriGrants;

.field public originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

.field public outActivity:[Lcom/android/server/wm/ActivityRecord;

.field public profilerInfo:Landroid/app/ProfilerInfo;

.field public realCallingPid:I

.field public realCallingUid:I

.field public reason:Ljava/lang/String;

.field public requestCode:I

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public resolvedType:Ljava/lang/String;

.field public resultTo:Landroid/os/IBinder;

.field public resultWho:Ljava/lang/String;

.field public startFlags:I

.field public userId:I

.field public voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field public waitResult:Landroid/app/WaitResult;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 488
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    const/4 v1, -0x1

    .line 489
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 492
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 493
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 528
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 535
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 536
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 537
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 538
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 539
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 540
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 541
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 542
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 543
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 544
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 545
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    const/4 v1, 0x0

    .line 546
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 547
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    const/4 v2, -0x1

    .line 548
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 549
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 550
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 551
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 552
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 553
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 554
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 555
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 556
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 557
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 558
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 559
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 560
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 561
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 562
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 563
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 564
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 565
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    const/4 v2, 0x1

    .line 566
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    const/16 v2, -0x2710

    .line 567
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 568
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 569
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 570
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    return-void
.end method

.method public resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 12

    .line 620
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    if-nez v0, :cond_a

    .line 621
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 623
    :cond_a
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 627
    :cond_15
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    if-ltz v0, :cond_1c

    .line 628
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    goto :goto_2d

    .line 629
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-nez v0, :cond_29

    .line 630
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 631
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    goto :goto_2d

    .line 633
    :cond_29
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 639
    :goto_2d
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 640
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_54

    .line 641
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 642
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 643
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 645
    iget-object v0, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 647
    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_54

    :catchall_4e
    move-exception p0

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 651
    :cond_54
    :goto_54
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 653
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 654
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_b6

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 655
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_b6

    :cond_82
    const-string v1, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 656
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 657
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 658
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 659
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 663
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 666
    :cond_b6
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v7, 0x0

    iget v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 668
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v8

    move-object v3, p1

    .line 666
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v1, :cond_129

    .line 670
    iget v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_129

    .line 671
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 675
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 679
    :try_start_ea
    iget v4, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_104

    .line 680
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 681
    invoke-virtual {v1, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_104

    iget v4, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 682
    invoke-virtual {v1, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1
    :try_end_100
    .catchall {:try_start_ea .. :try_end_100} :catchall_124

    if-nez v1, :cond_104

    const/4 v1, 0x1

    goto :goto_105

    :cond_104
    const/4 v1, 0x0

    .line 684
    :goto_105
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_129

    .line 687
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/high16 v8, 0xc0000

    iget v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 690
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v9

    move-object v4, p1

    .line 687
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_129

    :catchall_124
    move-exception p0

    .line 684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    throw p0

    .line 697
    :cond_129
    :goto_129
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_14f

    .line 702
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 704
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 702
    invoke-interface {p1, v2, v0, v3, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    :cond_14f
    return-void
.end method

.method public set(Lcom/android/server/wm/ActivityStarter$Request;)V
    .registers 3

    .line 577
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 578
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 579
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 580
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 581
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 582
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 583
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 584
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 585
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 586
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 587
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 588
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 589
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 590
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 591
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 592
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 593
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 594
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 595
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 596
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 597
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 598
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 599
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 600
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 601
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 602
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 603
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 604
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 605
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 606
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 607
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    .line 608
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 610
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 611
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 612
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 613
    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    return-void
.end method
