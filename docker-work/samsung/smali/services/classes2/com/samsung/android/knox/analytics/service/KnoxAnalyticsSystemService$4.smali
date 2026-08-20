.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;
.super Ljava/lang/Object;
.source "KnoxAnalyticsSystemService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEventAfterStart(IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$status:Z

.field public final synthetic val$trigger:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V
    .registers 5

    .line 257
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    iput p2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$trigger:I

    iput-boolean p3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$status:Z

    iput-object p4, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 260
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logTriggerEventAfterStart(): run"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$fgetmIsSystemServiceRunning(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 263
    :try_start_11
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$fgetmSystemServiceRunningLock(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_18} :catch_32

    .line 264
    :try_start_18
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$fgetmSystemServiceRunningLock(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 265
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_2f

    .line 266
    :try_start_25
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logTriggerEventAfterStart(): after wait"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2e} :catch_32

    goto :goto_9

    :catchall_2f
    move-exception v1

    .line 265
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_32} :catch_32

    .line 268
    :catch_32
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logTriggerEventAfterStart(): Interrupted exception"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 271
    :cond_3c
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logTriggerEventAfterStart(): after while"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    iget v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$trigger:I

    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$status:Z

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$mlogTriggerEvent(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    return-void
.end method
