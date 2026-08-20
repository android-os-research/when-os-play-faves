.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/server/wallpaper/SemWallpaperManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;Landroid/app/SemWallpaperResourcesInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 275
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c5

    .line 276
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 277
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 278
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", densityDpi="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDensityDpi()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", orientation [old="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 281
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", new="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemWallpaperManagerService"

    .line 280
    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDensityDpi()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_88

    .line 284
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setDensityDpi(I)V

    .line 286
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateDisplayData()V

    .line 288
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_HOME_CONTROLLER:Z

    if-nez p1, :cond_88

    .line 289
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {p1, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 290
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 294
    :cond_88
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result p1

    if-eq p1, p2, :cond_c5

    .line 295
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setOrientation(I)V

    .line 297
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz p1, :cond_a4

    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 298
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result p1

    if-nez p1, :cond_a4

    goto :goto_a5

    :cond_a4
    const/4 v1, 0x0

    :goto_a5
    if-eqz v1, :cond_bc

    .line 313
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 314
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    goto :goto_c5

    .line 316
    :cond_bc
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors()V

    :cond_c5
    :goto_c5
    return-void
.end method
