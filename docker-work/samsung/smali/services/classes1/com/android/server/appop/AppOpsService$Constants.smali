.class final Lcom/android/server/appop/AppOpsService$Constants;
.super Landroid/database/ContentObserver;
.source "AppOpsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Constants"
.end annotation


# instance fields
.field public BG_STATE_SETTLE_TIME:J

.field public FG_SERVICE_STATE_SETTLE_TIME:J

.field public TOP_STATE_SETTLE_TIME:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V
    .registers 3

    .line 521
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Constants;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 522
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 518
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 523
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "  Settings:"

    .line 561
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    .line 563
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "top_state_settle_time"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 565
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 566
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fg_service_state_settle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 568
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 569
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "bg_state_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 571
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 536
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    return-void
.end method

.method public startMonitoring(Landroid/content/ContentResolver;)V
    .registers 4

    .line 527
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "app_ops_constants"

    .line 529
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 528
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    return-void
.end method

.method public final updateConstants()V
    .registers 8

    .line 540
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_b

    const-string v1, "app_ops_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, ""

    .line 543
    :goto_d
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Constants;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    .line 545
    :try_start_10
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_20

    :catchall_16
    move-exception p0

    goto :goto_45

    :catch_18
    move-exception v0

    :try_start_19
    const-string v2, "AppOps"

    const-string v3, "Bad app ops settings"

    .line 549
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    :goto_20
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "top_state_settle_time"

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .line 553
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "fg_service_state_settle_time"

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .line 555
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bg_state_settle_time"

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 557
    monitor-exit v1

    return-void

    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_16

    throw p0
.end method
