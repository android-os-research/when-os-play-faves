.class public Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "PackageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadingProgressCallbackBinder"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;)V
    .registers 2

    .line 1168
    iput-object p1, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;->this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;

    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;-><init>(Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;)V

    return-void
.end method


# virtual methods
.method public onPackageLoadingProgressChanged(F)V
    .registers 4

    .line 1172
    iget-object v0, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;->this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;

    iget-object v0, v0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;->this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;

    .line 1175
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1172
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 1175
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 1172
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
