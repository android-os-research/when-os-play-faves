.class public final Lcom/android/server/am/ProcessReceiverRecord;
.super Ljava/lang/Object;
.source "ProcessReceiverRecord.java"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public final mCurReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 79
    iput-object p1, p0, Lcom/android/server/am/ProcessReceiverRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 80
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public addCurReceiver(Lcom/android/server/am/BroadcastRecord;)V
    .registers 2

    .line 55
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReceiver(Lcom/android/server/am/ReceiverList;)V
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 8

    .line 93
    iget-object p3, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p3

    const-string p4, "  - "

    const/4 v0, 0x0

    if-nez p3, :cond_2e

    .line 94
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Current mReceivers:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    iget-object p3, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    move v1, v0

    :goto_1a
    if-ge v1, p3, :cond_2e

    .line 96
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 99
    :cond_2e
    iget-object p3, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-lez p3, :cond_59

    .line 100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mReceivers:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    iget-object p3, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    :goto_45
    if-ge v0, p3, :cond_59

    .line 102
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_59
    return-void
.end method

.method public getCurReceiverAt(I)Lcom/android/server/am/BroadcastRecord;
    .registers 2

    .line 47
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    return-object p0
.end method

.method public getReceiverAt(I)Lcom/android/server/am/ReceiverList;
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ReceiverList;

    return-object p0
.end method

.method public hasCurReceiver(Lcom/android/server/am/BroadcastRecord;)Z
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public numberOfCurReceivers()I
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public numberOfReceivers()I
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public onCleanupApplicationRecordLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 87
    iget-object v1, p0, Lcom/android/server/am/ProcessReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ReceiverList;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 89
    :cond_1a
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public removeCurReceiver(Lcom/android/server/am/BroadcastRecord;)V
    .registers 2

    .line 59
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeReceiver(Lcom/android/server/am/ReceiverList;)V
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
