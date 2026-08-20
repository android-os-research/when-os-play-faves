.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;
.super Landroid/os/FileObserver;
.source "SemWallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;-><init>(Ljava/io/File;Ljava/io/File;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;Ljava/lang/String;I)V
    .registers 4

    .line 534
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    .line 540
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperLockFile:Ljava/io/File;

    .line 543
    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperLockFile:Ljava/io/File;

    .line 544
    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 545
    :cond_2a
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V

    :cond_35
    return-void
.end method
