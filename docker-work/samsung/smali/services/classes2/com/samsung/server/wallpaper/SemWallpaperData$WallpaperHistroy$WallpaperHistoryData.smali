.class public Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;
.super Ljava/lang/Object;
.source "SemWallpaperData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperHistoryData"
.end annotation


# instance fields
.field public callingPackageName:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public final synthetic this$1:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

.field public time:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 509
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->this$1:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->callingPackageName:Ljava/lang/String;

    if-nez p3, :cond_12

    .line 512
    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->time:Ljava/lang/String;

    goto :goto_14

    .line 514
    :cond_12
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->time:Ljava/lang/String;

    .line 516
    :goto_14
    iput-object p4, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->type:Ljava/lang/String;

    .line 517
    iput-object p5, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallingPackageName()Ljava/lang/String;
    .registers 1

    .line 534
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->callingPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getWallpaperHistoryData()Ljava/lang/String;
    .registers 4

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->callingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_34
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->pkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_50
    return-object v0
.end method
