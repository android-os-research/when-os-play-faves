.class Landroid/service/wallpaper/WallpaperService$Engine$5;
.super Ljava/lang/Object;
.source "WallpaperService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 2
    .param p1, "this$1"    # Landroid/service/wallpaper/WallpaperService$Engine;

    .line 2549
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2563
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 2552
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fgetmDisplay(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_11

    .line 2553
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 2555
    :cond_11
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2559
    return-void
.end method
