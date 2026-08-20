.class public final Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransitionInfoSnapshot"
.end annotation


# instance fields
.field public final activityRecordIdHashCode:I

.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final bindApplicationDelayMs:I

.field public final launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

.field public final launchedActivityLaunchToken:Ljava/lang/String;

.field public final launchedActivityLaunchedFromPackage:Ljava/lang/String;

.field public final launchedActivityName:Ljava/lang/String;

.field public final launchedActivityShortComponentName:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final processName:Ljava/lang/String;

.field public final processRecord:Lcom/android/server/wm/WindowProcessController;

.field public final reason:I

.field public final relaunched:Z

.field public final sourceEventDelayMs:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final sourceType:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final startingWindowDelayMs:I

.field public final type:I

.field public final userId:I

.field public final windowsDrawnDelayMs:I

.field public final windowsFullyDrawnDelayMs:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetbindApplicationDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlaunchedActivityLaunchToken(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlaunchedActivityLaunchedFromPackage(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprocessName(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetreason(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetstartingWindowDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 4

    .line 514
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V
    .registers 6

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 520
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 521
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 522
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    .line 523
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    .line 524
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_23

    .line 526
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getRequiredAbi()Ljava/lang/String;

    move-result-object v0

    :goto_23
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    .line 527
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    .line 528
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    .line 529
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 530
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 531
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 532
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 533
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 534
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 535
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceType:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    .line 536
    iget v0, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 537
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 538
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->activityRecordIdHashCode:I

    .line 539
    iput p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    .line 540
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method


# virtual methods
.method public getLaunchState()I
    .registers 3

    .line 544
    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_19

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    const/16 v1, 0x9

    if-eq v0, v1, :cond_f

    const/4 p0, -0x1

    return p0

    .line 548
    :cond_f
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    if-eqz p0, :cond_15

    const/4 p0, 0x4

    goto :goto_16

    :cond_15
    const/4 p0, 0x3

    :goto_16
    return p0

    :cond_17
    const/4 p0, 0x2

    return p0

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public getPackageOptimizationInfo(Landroid/content/pm/dex/ArtManagerInternal;)Landroid/content/pm/dex/PackageOptimizationInfo;
    .registers 4

    if-eqz p1, :cond_10

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_10

    .line 559
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object p0

    goto :goto_14

    .line 558
    :cond_10
    :goto_10
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object p0

    :goto_14
    return-object p0
.end method
