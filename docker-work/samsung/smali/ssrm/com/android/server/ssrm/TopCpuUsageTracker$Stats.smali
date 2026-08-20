.class public Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
.super Ljava/lang/Object;
.source "TopCpuUsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/TopCpuUsageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public active:Z

.field public added:Z

.field final attrFile:Ljava/lang/String;

.field public baseName:Ljava/lang/String;

.field public base_majfaults:J

.field public base_minfaults:J

.field public base_stime:J

.field public base_uptime:J

.field public base_utime:J

.field final cmdlineFile:Ljava/lang/String;

.field public interesting:Z

.field public name:Ljava/lang/String;

.field public nameWidth:I

.field public final pid:I

.field public rel_majfaults:I

.field public rel_minfaults:I

.field public rel_stime:I

.field public rel_uptime:J

.field public rel_utime:I

.field public removed:Z

.field final statFile:Ljava/lang/String;

.field final threadStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field final threadsDir:Ljava/lang/String;

.field public final uid:I

.field public vsize:J

.field public working:Z

.field final workingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IIZ)V
    .registers 12
    .param p1, "_pid"    # I
    .param p2, "parentPid"    # I
    .param p3, "includeThreads"    # Z

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput p1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->pid:I

    .line 250
    const-string v0, "cmdline"

    const-string v1, "attr"

    const-string v2, "stat"

    const-string v3, "task"

    const-string v4, "/proc"

    const/4 v5, 0x0

    if-gez p2, :cond_5e

    .line 251
    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 252
    .local v4, "procDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->statFile:Ljava/lang/String;

    .line 253
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->attrFile:Ljava/lang/String;

    .line 254
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->cmdlineFile:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadsDir:Ljava/lang/String;

    .line 256
    if-eqz p3, :cond_59

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    goto :goto_5d

    .line 260
    :cond_59
    iput-object v5, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 261
    iput-object v5, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 263
    .end local v4    # "procDir":Ljava/io/File;
    :goto_5d
    goto :goto_9e

    .line 264
    :cond_5e
    new-instance v6, Ljava/io/File;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 265
    .restart local v4    # "procDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v6

    .line 266
    .local v3, "taskDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->statFile:Ljava/lang/String;

    .line 267
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->attrFile:Ljava/lang/String;

    .line 268
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->cmdlineFile:Ljava/lang/String;

    .line 270
    iput-object v5, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadsDir:Ljava/lang/String;

    .line 271
    iput-object v5, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 272
    iput-object v5, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 274
    .end local v3    # "taskDir":Ljava/io/File;
    .end local v4    # "procDir":Ljava/io/File;
    :goto_9e
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->attrFile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->getUid(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->uid:I

    .line 275
    return-void
.end method
