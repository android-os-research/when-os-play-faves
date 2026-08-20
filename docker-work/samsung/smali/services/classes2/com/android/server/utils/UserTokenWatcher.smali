.class public final Lcom/android/server/utils/UserTokenWatcher;
.super Ljava/lang/Object;
.source "UserTokenWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;,
        Lcom/android/server/utils/UserTokenWatcher$Callback;
    }
.end annotation


# instance fields
.field public final mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

.field public final mHandler:Landroid/os/Handler;

.field public final mTag:Ljava/lang/String;

.field public final mWatchers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWatchers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/TokenWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/utils/UserTokenWatcher;)Lcom/android/server/utils/UserTokenWatcher$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchers(Lcom/android/server/utils/UserTokenWatcher;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 45
    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    .line 46
    iput-object p2, p0, Lcom/android/server/utils/UserTokenWatcher;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p3, p0, Lcom/android/server/utils/UserTokenWatcher;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12

    .line 66
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TokenWatcher;

    if-nez v1, :cond_1f

    .line 69
    new-instance v1, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;

    iget-object v5, p0, Lcom/android/server/utils/UserTokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/utils/UserTokenWatcher;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher-IA;)V

    .line 70
    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_1f
    invoke-virtual {v1, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 73
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 109
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 110
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 111
    iget-object v2, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 112
    iget-object v3, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/TokenWatcher;

    .line 113
    invoke-virtual {v3}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "User "

    .line 114
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    .line 116
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, " "

    invoke-direct {v2, p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/TokenWatcher;->dump(Ljava/io/PrintWriter;)V

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 120
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public isAcquired(I)Z
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/TokenWatcher;

    if-eqz p0, :cond_15

    .line 101
    invoke-virtual {p0}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 102
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public release(Landroid/os/IBinder;I)V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/TokenWatcher;

    if-eqz p0, :cond_10

    .line 88
    invoke-virtual {p0, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 90
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method
