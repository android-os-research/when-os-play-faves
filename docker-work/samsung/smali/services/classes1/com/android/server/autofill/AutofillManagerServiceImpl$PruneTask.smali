.class public Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;
.super Landroid/os/AsyncTask;
.source "AutofillManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PruneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 2

    .line 1645
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1645
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9

    .line 1652
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1653
    :try_start_5
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->-$$Nest$fgetmSessions(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1654
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_30

    .line 1657
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->-$$Nest$fgetmSessions(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/Session;

    .line 1659
    iget v5, v4, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1661
    :cond_30
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_d6

    .line 1663
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    move v3, v2

    :goto_3a
    if-ge v3, v0, :cond_52

    .line 1669
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 1670
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1676
    :cond_52
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v3, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :goto_57
    if-ge v2, v0, :cond_d0

    .line 1678
    :try_start_59
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->-$$Nest$fgetmSessions(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/Session;

    if-eqz p1, :cond_cd

    .line 1680
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 1681
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_cd

    .line 1682
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->isSaveUiShowingLocked()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1683
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_cd

    const-string v4, "AutofillManagerServiceImpl"

    .line 1684
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is saving"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 1687
    :cond_9d
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_ca

    const-string v4, "AutofillManagerServiceImpl"

    .line 1688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prune session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1688
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_ca
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    :cond_cd
    :goto_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1695
    :cond_d0
    monitor-exit v3

    const/4 p0, 0x0

    return-object p0

    :catchall_d3
    move-exception p0

    monitor-exit v3
    :try_end_d5
    .catchall {:try_start_59 .. :try_end_d5} :catchall_d3

    throw p0

    :catchall_d6
    move-exception p0

    .line 1661
    :try_start_d7
    monitor-exit p1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw p0
.end method
