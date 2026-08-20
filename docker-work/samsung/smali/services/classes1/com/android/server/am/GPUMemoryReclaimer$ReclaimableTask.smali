.class public Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/GPUMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReclaimableTask"
.end annotation


# instance fields
.field public mIsSuccess:Z

.field public final mMeminfoRaw:[J

.field public final mPid:I

.field public final mReclaimed:J

.field public final mResident:J

.field public final synthetic this$0:Lcom/android/server/am/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/GPUMemoryReclaimer;ILcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;)V
    .registers 13

    .line 2803
    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->this$0:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [J

    const-wide/16 v0, -0x1

    .line 2807
    :try_start_a
    invoke-virtual {p3, p2}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->getMeminfoRaw(I)[J

    move-result-object p1

    .line 2808
    invoke-virtual {p3, p1}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->calculateResident([J)J

    move-result-wide v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_2f
    .catchall {:try_start_a .. :try_end_12} :catchall_2c

    .line 2809
    :try_start_12
    invoke-virtual {p3, p1}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->calculateReclaimed([J)J

    move-result-wide v0

    const/4 p3, 0x1

    .line 2810
    iput-boolean p3, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mIsSuccess:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_27
    .catchall {:try_start_12 .. :try_end_19} :catchall_22

    .line 2814
    iput p2, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    .line 2815
    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    .line 2816
    iput-wide v2, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    .line 2817
    iput-wide v0, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    goto :goto_5b

    :catchall_22
    move-exception p3

    move-wide v7, v0

    move-wide v0, v2

    move-wide v2, v7

    goto :goto_5d

    :catch_27
    move-exception p3

    move-wide v7, v0

    move-wide v0, v2

    move-wide v2, v7

    goto :goto_31

    :catchall_2c
    move-exception p3

    move-wide v2, v0

    goto :goto_5d

    :catch_2f
    move-exception p3

    move-wide v2, v0

    :goto_31
    :try_start_31
    const-string v4, "GMR"

    .line 2812
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " due to exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_5c

    .line 2814
    iput p2, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    .line 2815
    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    .line 2816
    iput-wide v0, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    .line 2817
    iput-wide v2, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    :goto_5b
    return-void

    :catchall_5c
    move-exception p3

    .line 2814
    :goto_5d
    iput p2, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    .line 2815
    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    .line 2816
    iput-wide v0, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    .line 2817
    iput-wide v2, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    .line 2818
    throw p3
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/GPUMemoryReclaimer;ILcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;-><init>(Lcom/android/server/am/GPUMemoryReclaimer;ILcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;)V

    return-void
.end method


# virtual methods
.method public getMeminfoRaw()[J
    .registers 1

    .line 2826
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 2822
    iget p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    return p0
.end method

.method public getReclaimed()J
    .registers 3

    .line 2824
    iget-wide v0, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    return-wide v0
.end method

.method public getResident()J
    .registers 3

    .line 2823
    iget-wide v0, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    return-wide v0
.end method

.method public isSuccess()Z
    .registers 1

    .line 2821
    iget-boolean p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->mIsSuccess:Z

    return p0
.end method
