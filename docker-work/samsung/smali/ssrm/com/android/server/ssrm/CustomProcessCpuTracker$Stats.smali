.class public Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
.super Ljava/lang/Object;
.source "CustomProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomProcessCpuTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public active:Z

.field public added:Z

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
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
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
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IIZ)V
    .registers 10
    .param p1, "_pid"    # I
    .param p2, "parentPid"    # I
    .param p3, "includeThreads"    # Z

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    .line 286
    const-string v0, "stat"

    const-string v1, "task"

    const-string v2, "/proc"

    const/4 v3, 0x0

    if-gez p2, :cond_5b

    .line 287
    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 288
    .local v2, "procDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->getUid(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->uid:I

    .line 289
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    .line 290
    new-instance v0, Ljava/io/File;

    const-string v4, "cmdline"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    .line 292
    if-eqz p3, :cond_56

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    goto :goto_5a

    .line 296
    :cond_56
    iput-object v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 297
    iput-object v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 299
    .end local v2    # "procDir":Ljava/io/File;
    :goto_5a
    goto :goto_91

    .line 300
    :cond_5b
    new-instance v4, Ljava/io/File;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 301
    .restart local v2    # "procDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v4

    .line 302
    .local v1, "taskDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->getUid(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->uid:I

    .line 303
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    .line 304
    iput-object v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    .line 305
    iput-object v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    .line 306
    iput-object v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 307
    iput-object v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 309
    .end local v1    # "taskDir":Ljava/io/File;
    .end local v2    # "procDir":Ljava/io/File;
    :goto_91
    return-void
.end method

.method private static getUid(Ljava/lang/String;)I
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 313
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_uid:I
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 314
    :catch_7
    move-exception v0

    .line 315
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to stat("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessCpuTracker"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v1, -0x1

    return v1
.end method
