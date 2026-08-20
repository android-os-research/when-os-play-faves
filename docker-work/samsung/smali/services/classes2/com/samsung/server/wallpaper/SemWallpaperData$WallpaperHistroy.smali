.class public Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;
.super Ljava/lang/Object;
.source "SemWallpaperData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/SemWallpaperData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperHistroy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WallpaperHistroy"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperData;

.field public final wallpaperHistoryDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addWallpaperHistoryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 478
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->-$$Nest$fputmLastCallingPackage(Lcom/samsung/server/wallpaper/SemWallpaperData;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 480
    :try_start_8
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    new-instance v8, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x14

    if-le p1, p2, :cond_28

    .line 482
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public clone()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;
    .registers 3

    .line 441
    new-instance v0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-direct {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 442
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 443
    iget-object v1, v0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_16
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object p0

    return-object p0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string p0, ""

    .line 470
    monitor-exit v0

    return-object p0

    .line 472
    :cond_f
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 473
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->getCallingPackageName()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_25
    move-exception p0

    .line 474
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public getWallpaperHistoryDataList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 489
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 490
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 p0, 0x0

    .line 491
    monitor-exit v0

    return-object p0

    .line 494
    :cond_13
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    if-eqz v2, :cond_19

    .line 496
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->getWallpaperHistoryData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 499
    :cond_2f
    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception p0

    .line 500
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_8
    const-string v2, "\n\thistory - [time]::[callingPkg]::[type]::[contents]"

    .line 454
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_3f

    .line 457
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->getWallpaperHistoryData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_36} :catch_3b
    .catchall {:try_start_8 .. :try_end_36} :catchall_39

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catchall_39
    move-exception p0

    goto :goto_45

    :catch_3b
    move-exception p0

    .line 461
    :try_start_3c
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 463
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_39

    .line 464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 463
    :goto_45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_39

    throw p0
.end method
