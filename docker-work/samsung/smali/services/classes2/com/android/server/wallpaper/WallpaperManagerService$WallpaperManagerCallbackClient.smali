.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperManagerCallbackClient"
.end annotation


# instance fields
.field public mCb:Landroid/app/IWallpaperManagerCallback;

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/IWallpaperManagerCallback;)V
    .registers 5

    .line 8793
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WallpaperManagerCallbackClient "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3c

    .line 8797
    :try_start_1d
    invoke-interface {p2}, Landroid/app/IWallpaperManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_3c

    :catch_26
    move-exception p1

    .line 8799
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 8803
    :cond_3c
    :goto_3c
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;->mCb:Landroid/app/IWallpaperManagerCallback;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 8808
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "WallpaperManagerService"

    .line 8809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;->mCb:Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8810
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;->mCb:Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8811
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8812
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_34

    const/4 v0, 0x0

    .line 8813
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;->mCb:Landroid/app/IWallpaperManagerCallback;

    return-void

    :catchall_34
    move-exception p0

    .line 8812
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method
