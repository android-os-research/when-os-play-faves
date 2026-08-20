.class public Lcom/samsung/server/wallpaper/OMCWallpaper$1;
.super Landroid/os/Handler;
.source "OMCWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/OMCWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Landroid/os/Looper;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 71
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_f

    .line 73
    :cond_6
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/OMCWallpaper;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/OMCWallpaper;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateOmcWallpaper()V

    :goto_f
    return-void
.end method
