.class public Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;
.super Ljava/lang/Object;
.source "EmergencyModePackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EmergencyModePackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingPackageBroadcastsWithList"
.end annotation


# instance fields
.field public final mUidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mUidMapOfNewPkgState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    .line 337
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 403
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->getOrAllocate(I)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 342
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getNewState(ILjava/lang/String;)I
    .registers 3

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->getOrAllocateNewState(I)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 352
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getOrAllocate(I)Ljava/util/LinkedHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_14

    .line 409
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 410
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public final getOrAllocateNewState(I)Ljava/util/LinkedHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_14

    .line 418
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 419
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public packagesForUserId(I)Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 377
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public packagesNewStateForUserId(I)Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public put(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->getOrAllocate(I)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 347
    invoke-virtual {p0, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putNewState(ILjava/lang/String;I)V
    .registers 4

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->getOrAllocateNewState(I)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 357
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(I)V
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 373
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_d

    .line 363
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_1a

    .line 367
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method public size()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 395
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 396
    iget-object v2, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    return v1
.end method

.method public userIdAt(I)I
    .registers 2

    .line 389
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public userIdCount()I
    .registers 1

    .line 385
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method
