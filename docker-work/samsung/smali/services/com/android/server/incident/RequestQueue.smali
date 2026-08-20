.class public Lcom/android/server/incident/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/incident/RequestQueue$Rec;
    }
.end annotation


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/incident/RequestQueue$Rec;",
            ">;"
        }
    .end annotation
.end field

.field public mStarted:Z

.field public final mWorker:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPending(Lcom/android/server/incident/RequestQueue;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/android/server/incident/RequestQueue$1;

    invoke-direct {v0, p0}, Lcom/android/server/incident/RequestQueue$1;-><init>(Lcom/android/server/incident/RequestQueue;)V

    iput-object v0, p0, Lcom/android/server/incident/RequestQueue;->mWorker:Ljava/lang/Runnable;

    .line 106
    iput-object p1, p0, Lcom/android/server/incident/RequestQueue;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V
    .registers 10

    .line 131
    iget-object v0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2c

    .line 134
    :try_start_7
    iget-object v3, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_e
    if-ltz v3, :cond_2c

    .line 135
    iget-object v4, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/incident/RequestQueue$Rec;

    .line 136
    iget-object v5, v4, Lcom/android/server/incident/RequestQueue$Rec;->key:Landroid/os/IBinder;

    if-ne v5, p1, :cond_27

    .line 137
    iget-boolean v4, v4, Lcom/android/server/incident/RequestQueue$Rec;->value:Z

    if-eqz v4, :cond_27

    .line 139
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v2

    goto :goto_2c

    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    :catchall_2a
    move-exception p0

    goto :goto_45

    :cond_2c
    :goto_2c
    if-nez v1, :cond_38

    .line 146
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/incident/RequestQueue$Rec;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/incident/RequestQueue$Rec;-><init>(Lcom/android/server/incident/RequestQueue;Landroid/os/IBinder;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_38
    iget-boolean p1, p0, Lcom/android/server/incident/RequestQueue;->mStarted:Z

    if-eqz p1, :cond_43

    .line 150
    iget-object p1, p0, Lcom/android/server/incident/RequestQueue;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/incident/RequestQueue;->mWorker:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :cond_43
    monitor-exit v0

    return-void

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_2a

    throw p0
.end method

.method public start()V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/incident/RequestQueue;->mStarted:Z

    if-nez v1, :cond_19

    .line 115
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 116
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/incident/RequestQueue;->mWorker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    const/4 v1, 0x1

    .line 118
    iput-boolean v1, p0, Lcom/android/server/incident/RequestQueue;->mStarted:Z

    .line 120
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method
