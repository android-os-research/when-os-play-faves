.class public Lcom/samsung/server/wallpaper/SubDisplayMode$2;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "SubDisplayMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/SubDisplayMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SubDisplayMode;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .registers 5

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisplayFoldChanged: displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", folded = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubDisplayMode"

    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result p1

    .line 97
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->setLidState(I)V

    .line 98
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6a

    if-eq v0, p1, :cond_6a

    .line 101
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SubDisplayMode;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateDisplayData()V

    .line 102
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_54

    .line 103
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-static {p2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SubDisplayMode;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->setSurfaceAlpha(F)V

    .line 104
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->setFolderState(II)V

    goto :goto_6a

    :cond_54
    if-nez p2, :cond_6a

    .line 106
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SubDisplayMode;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 107
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SubDisplayMode;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    :cond_6a
    :goto_6a
    return-void
.end method
