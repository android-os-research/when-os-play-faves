.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$2;
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

    .line 552
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    .line 558
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    .line 563
    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperFile:Ljava/io/File;

    .line 564
    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mVirtualDisplayWallpaperFile:Ljava/io/File;

    .line 565
    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    :goto_38
    move v4, v0

    .line 566
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V

    return-void
.end method
