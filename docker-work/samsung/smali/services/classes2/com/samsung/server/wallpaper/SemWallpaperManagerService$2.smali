.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;
.super Landroid/os/Handler;
.source "SemWallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 400
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 403
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3f1

    if-eq p1, v0, :cond_7

    goto :goto_10

    .line 405
    :cond_7
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->handleWallpaperBindingTimeout()V

    :goto_10
    return-void
.end method
