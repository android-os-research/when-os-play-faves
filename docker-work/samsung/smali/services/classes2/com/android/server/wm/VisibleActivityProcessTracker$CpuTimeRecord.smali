.class public Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;
.super Ljava/lang/Object;
.source "VisibleActivityProcessTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/VisibleActivityProcessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CpuTimeRecord"
.end annotation


# instance fields
.field public mCpuTime:J

.field public mHasStartCpuTime:Z

.field public final mProc:Lcom/android/server/wm/WindowProcessController;

.field public mShouldGetCpuTime:Z

.field public final synthetic this$0:Lcom/android/server/wm/VisibleActivityProcessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/VisibleActivityProcessTracker;Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 124
    iput-object p1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->this$0:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mProc:Lcom/android/server/wm/WindowProcessController;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mProc:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 134
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mHasStartCpuTime:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mHasStartCpuTime:Z

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mProc:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mCpuTime:J

    goto :goto_39

    .line 138
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mProc:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mCpuTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_39

    .line 140
    iget-object v2, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->this$0:Lcom/android/server/wm/VisibleActivityProcessTracker;

    iget-object v2, v2, Lcom/android/server/wm/VisibleActivityProcessTracker;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object p0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mProc:Lcom/android/server/wm/WindowProcessController;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, p0, v0, v1}, Landroid/app/ActivityManagerInternal;->updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V

    :cond_39
    :goto_39
    return-void
.end method
