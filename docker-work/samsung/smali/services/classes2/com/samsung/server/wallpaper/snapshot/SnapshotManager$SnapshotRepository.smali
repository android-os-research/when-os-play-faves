.class public Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;
.super Ljava/lang/Object;
.source "SnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotRepository"
.end annotation


# instance fields
.field public key:I

.field public final mSnapshotHistories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;",
            ">;"
        }
    .end annotation
.end field

.field public final mSnapshots:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;",
            ">;"
        }
    .end annotation
.end field

.field public final userId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->key:I

    .line 353
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->userId:I

    .line 354
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 355
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Landroid/content/Context;IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)I
    .registers 7

    .line 439
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v0

    if-nez v0, :cond_27

    .line 442
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1b

    .line 443
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "add: Maximum number of snapshot is reached."

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    .line 446
    :cond_1b
    new-instance v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    iget v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->userId:I

    invoke-direct {v0, v1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;-><init>(II)V

    .line 447
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 450
    :cond_27
    invoke-virtual {v0, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 451
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add: Already has WallpaperData for which ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0

    .line 455
    :cond_4c
    invoke-virtual {v0, p3, p4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result p0

    if-eqz p0, :cond_56

    .line 456
    invoke-virtual {v0, p1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setSettingsData(Landroid/content/Context;I)V

    return p2

    .line 460
    :cond_56
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "add: Error while adding snapshot."

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x9

    return p0
.end method

.method public add(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 466
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "add: wallpaper is null."

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 470
    :cond_d
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_21

    .line 471
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "add: Maximum backup data capacity is exceeded."

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 475
    :cond_21
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 476
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: Backup wallpaper for key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is already exist. Drop this one."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 480
    :cond_4d
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public addHistory(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;)V
    .registers 4

    .line 516
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_10

    .line 517
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 520
    :cond_10
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .registers 1

    .line 510
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    if-eqz p0, :cond_7

    .line 511
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_7
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4b

    .line 540
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;

    .line 541
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3b

    .line 545
    :cond_4b
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 546
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_53

    :cond_63
    return-void
.end method

.method public getAll()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    if-eqz v0, :cond_c

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_14

    .line 399
    :cond_b
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .registers 5

    .line 403
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_25

    .line 407
    :cond_c
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 408
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v2

    if-ne v2, p1, :cond_12

    return-object v0

    :cond_25
    :goto_25
    return-object v1
.end method

.method public getHistory()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;",
            ">;"
        }
    .end annotation

    .line 532
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getHistoryLength()I
    .registers 1

    .line 524
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    .line 525
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getIndex(I)I
    .registers 5

    .line 417
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    const/4 v1, -0x1

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_27

    :cond_c
    const/4 v0, 0x0

    .line 421
    :goto_d
    iget-object v2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 422
    iget-object v2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v2

    if-ne v2, p1, :cond_24

    return v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_27
    :goto_27
    return v1
.end method

.method public getLastSnapshot()Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .registers 2

    .line 431
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 432
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 359
    iget p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->userId:I

    return p0
.end method

.method public makeKey()I
    .registers 2

    .line 364
    :cond_0
    iget v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->key:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->key:I

    if-lez v0, :cond_0

    return v0
.end method

.method public remove(II)V
    .registers 5

    .line 485
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 486
    invoke-virtual {v0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 487
    invoke-virtual {v0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->remove(I)V

    .line 490
    :cond_f
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    move-result p2

    if-nez p2, :cond_18

    .line 491
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->removeByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    :cond_18
    return-void
.end method

.method public removeByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_3b

    .line 500
    :cond_c
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_32

    .line 502
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: SnapshotData for key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 506
    :cond_32
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    return-object p0

    :cond_3b
    :goto_3b
    return-object v1
.end method

.method public resetKey()V
    .registers 2

    const/4 v0, 0x0

    .line 375
    iput v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->key:I

    return-void
.end method

.method public setKey(I)V
    .registers 2

    .line 371
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->key:I

    return-void
.end method

.method public size()I
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    if-eqz p0, :cond_9

    .line 380
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
