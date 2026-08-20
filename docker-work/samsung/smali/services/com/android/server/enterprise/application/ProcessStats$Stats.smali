.class public Lcom/android/server/enterprise/application/ProcessStats$Stats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ProcessStats;
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

.field public final cmdlineFile:Ljava/lang/String;

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

.field public final statFile:Ljava/lang/String;

.field public final threadStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field public final threadsDir:Ljava/lang/String;

.field public working:Z

.field public final workingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIZ)V
    .registers 8

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    const-string/jumbo v0, "stat"

    const-string/jumbo v1, "task"

    const-string v2, "/proc"

    const/4 v3, 0x0

    if-gez p2, :cond_52

    .line 210
    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    .line 212
    new-instance p1, Ljava/io/File;

    const-string v0, "cmdline"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    .line 213
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    if-eqz p3, :cond_4d

    .line 216
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    .line 217
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    goto :goto_7c

    .line 219
    :cond_4d
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    .line 220
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    goto :goto_7c

    .line 223
    :cond_52
    new-instance p3, Ljava/io/File;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance p2, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    .line 228
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    .line 229
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    .line 230
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    .line 231
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    :goto_7c
    return-void
.end method
