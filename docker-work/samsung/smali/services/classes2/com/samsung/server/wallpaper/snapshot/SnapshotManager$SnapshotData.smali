.class public Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
.super Ljava/lang/Object;
.source "SnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotData"
.end annotation


# instance fields
.field public datas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field public key:I

.field public settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public source:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->settings:Ljava/util/Map;

    .line 559
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->datas:Ljava/util/Map;

    .line 562
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->userId:I

    .line 563
    iput p2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    const-string p1, ""

    .line 564
    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const-string v0, "\nSnapshotData:"

    .line 660
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tkey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tsource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\twhich = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-eqz v2, :cond_6b

    const-string v3, "\tWallpaperData = "

    .line 668
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_6b
    const-string v2, "\tSettingsData = "

    .line 671
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getSettingsData(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 673
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 674
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7c

    :cond_ba
    return-void
.end method

.method public getKey()I
    .registers 1

    .line 576
    iget p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    return p0
.end method

.method public getSettingsData(I)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->settings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getSource()Ljava/lang/String;
    .registers 1

    .line 588
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 568
    iget p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->userId:I

    return p0
.end method

.method public getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 2

    .line 596
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result p1

    .line 598
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->datas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object p0
.end method

.method public getWhiches()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->datas:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasWallpaperData()Z
    .registers 1

    .line 635
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->datas:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public hasWallpaperData(I)Z
    .registers 8

    .line 639
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result p1

    .line 640
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasWallpaperData: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->datas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 643
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 644
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 645
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", WallpaperData "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 648
    :cond_61
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->datas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "hasWallpaperData: ["

    if-eqz p0, :cond_8c

    .line 651
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] exists."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 655
    :cond_8c
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] NOT exists."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public remove(I)V
    .registers 4

    .line 628
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result p1

    .line 630
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->datas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->settings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setKey(I)V
    .registers 2

    .line 572
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    return-void
.end method

.method public setSettingsData(ILjava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 612
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->settings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSettingsData(Landroid/content/Context;I)V
    .registers 11

    .line 616
    invoke-static {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result p2

    .line 618
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->settings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 621
    invoke-static {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->getSettingNames(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, -0x1

    iget v7, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->userId:I

    invoke-static {v5, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 624
    :cond_31
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->settings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 3

    .line 580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 584
    :cond_7
    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    return-void
.end method

.method public setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 3

    .line 602
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result p1

    .line 603
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->datas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
