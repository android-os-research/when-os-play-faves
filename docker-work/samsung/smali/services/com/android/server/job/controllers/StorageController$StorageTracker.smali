.class public final Lcom/android/server/job/controllers/StorageController$StorageTracker;
.super Landroid/content/BroadcastReceiver;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorageTracker"
.end annotation


# instance fields
.field public mLastStorageSeq:I

.field public mStorageLow:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/StorageController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/StorageController;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    .line 106
    iput p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    return-void
.end method


# virtual methods
.method public getSeq()I
    .registers 1

    .line 126
    iget p0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    return p0
.end method

.method public isStorageNotLow()Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 131
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->onReceiveInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    const-string/jumbo v2, "seq"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    const-string p1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "JobScheduler.Storage"

    if-eqz p1, :cond_42

    .line 140
    invoke-static {}, Lcom/android/server/job/controllers/StorageController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Available storage too low to do work. @ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 142
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 145
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    invoke-static {p0}, Lcom/android/server/job/controllers/StorageController;->-$$Nest$mmaybeReportNewStorageState(Lcom/android/server/job/controllers/StorageController;)V

    goto :goto_72

    :cond_42
    const-string p1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 147
    invoke-static {}, Lcom/android/server/job/controllers/StorageController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Available storage high enough to do work. @ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 149
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 152
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    invoke-static {p0}, Lcom/android/server/job/controllers/StorageController;->-$$Nest$mmaybeReportNewStorageState(Lcom/android/server/job/controllers/StorageController;)V

    :cond_72
    :goto_72
    return-void
.end method

.method public startTracking()V
    .registers 3

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
