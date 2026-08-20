.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;
.super Ljava/lang/Object;
.source "KnoxAnalyticsSystemService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationEventAfterStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 355
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logActivationEventAfterStart(): run"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$fgetmIsSystemServiceRunning(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 358
    :try_start_11
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$fgetmSystemServiceRunningLock(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_18} :catch_32

    .line 359
    :try_start_18
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$fgetmSystemServiceRunningLock(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 360
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_2f

    .line 361
    :try_start_25
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logActivationEventAfterStart(): after wait"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2e} :catch_32

    goto :goto_9

    :catchall_2f
    move-exception v1

    .line 360
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_32} :catch_32

    .line 363
    :catch_32
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logActivationEventAfterStart(): Interrupted exception"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 366
    :cond_3c
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logActivationEventAfterStart(): after while"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$mlogActivationUpdateEvent(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;Z)V

    return-void
.end method
