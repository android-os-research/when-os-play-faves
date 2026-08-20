.class public final Lcom/android/server/am/ActivityManagerService$PidMap;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PidMap"
.end annotation


# instance fields
.field public final mPidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public doAddInternal(ILcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 1131
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public doRemoveIfNoThreadInternal(ILcom/android/server/am/ProcessRecord;)Z
    .registers 4

    if-eqz p2, :cond_e

    .line 1144
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_e

    .line 1147
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->doRemoveInternal(ILcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public doRemoveInternal(ILcom/android/server/am/ProcessRecord;)Z
    .registers 7

    .line 1135
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1d

    .line 1136
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_1d

    .line 1137
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public get(I)Lcom/android/server/am/ProcessRecord;
    .registers 2

    .line 1111
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public indexOfKey(I)I
    .registers 2

    .line 1127
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    return p0
.end method

.method public keyAt(I)I
    .registers 2

    .line 1123
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public size()I
    .registers 1

    .line 1115
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public valueAt(I)Lcom/android/server/am/ProcessRecord;
    .registers 2

    .line 1119
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method
