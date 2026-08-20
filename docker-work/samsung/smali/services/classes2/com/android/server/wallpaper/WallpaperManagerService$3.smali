.class public Lcom/android/server/wallpaper/WallpaperManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .line 2954
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 2957
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 2961
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2962
    :try_start_13
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fputmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V

    .line 2963
    monitor-exit p1

    goto :goto_1e

    :catchall_1b
    move-exception p0

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    :goto_1e
    return-void
.end method
