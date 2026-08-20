.class public Lcom/android/server/am/ProcessStatsService$3;
.super Ljava/lang/Thread;
.source "ProcessStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$section:I

.field public final synthetic val$stats:Lcom/android/internal/app/procstats/ProcessStats;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V
    .registers 5

    .line 694
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/am/ProcessStatsService$3;->val$stats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p4, p0, Lcom/android/server/am/ProcessStatsService$3;->val$section:I

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 697
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 698
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 699
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$stats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget p0, p0, Lcom/android/server/am/ProcessStatsService$3;->val$section:I

    invoke-virtual {v2, v1, v3, v4, p0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 700
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 701
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception p0

    const-string v0, "ProcessStatsService"

    const-string v1, "Failure writing pipe"

    .line 703
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return-void
.end method
