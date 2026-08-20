.class public Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;
.super Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageLoadingProgressCallback"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mUser:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    .line 2007
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2008
    invoke-static {p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmCallbackHandler(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;-><init>(Landroid/os/Handler;)V

    .line 2009
    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mPackageName:Ljava/lang/String;

    .line 2010
    iput-object p3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public onLoadingProgressChanged(F)V
    .registers 10

    .line 2015
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_5e

    .line 2018
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    .line 2019
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 2020
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v5, v3, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mUser:Landroid/os/UserHandle;

    const-string/jumbo v7, "onLoadingProgressChanged"

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_50

    .line 2023
    :cond_35
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misPackageVisibleToListener(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)Z

    move-result v3
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_53

    if-nez v3, :cond_40

    goto :goto_50

    .line 2027
    :cond_40
    :try_start_40
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mUser:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageLoadingProgressChanged(Landroid/os/UserHandle;Ljava/lang/String;F)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_47} :catch_48
    .catchall {:try_start_40 .. :try_end_47} :catchall_53

    goto :goto_50

    :catch_48
    move-exception v2

    :try_start_49
    const-string v3, "LauncherAppsService"

    const-string v4, "Callback failed "

    .line 2029
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_53

    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catchall_53
    move-exception p1

    .line 2033
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2034
    throw p1

    .line 2033
    :cond_5e
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
