.class public abstract Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;
.super Ljava/lang/Object;
.source "PackageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InstalledLoadingProgressCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;
    }
.end annotation


# instance fields
.field public final mBinder:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;

.field public final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    new-instance v0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;-><init>(Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;->mBinder:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;

    if-nez p1, :cond_16

    .line 1148
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1150
    :cond_16
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/os/IBinder;
    .registers 1

    .line 1158
    iget-object p0, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;->mBinder:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;

    return-object p0
.end method

.method public abstract onLoadingProgressChanged(F)V
.end method
