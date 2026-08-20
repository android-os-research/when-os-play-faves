.class public final Lcom/android/server/pm/IncrementalProgressListener;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "IncrementalProgressListener.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$l48qBX-AlSDSpVy2tijP2A2kDR0(FLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/IncrementalProgressListener;->lambda$onPackageLoadingProgressChanged$0(FLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public static synthetic lambda$onPackageLoadingProgressChanged$0(FLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    .line 47
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setLoadingProgress(F)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method


# virtual methods
.method public onPackageLoadingProgressChanged(F)V
    .registers 7

    .line 36
    iget-object v0, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    .line 37
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 42
    :cond_f
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 46
    iget-object v1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    new-instance v4, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;-><init>(F)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 49
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_40

    .line 51
    iget-object p1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 52
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/incremental/IncrementalManager;->unregisterLoadingProgressCallbacks(Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    :cond_40
    return-void
.end method
