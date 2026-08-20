.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;
.super Ljava/lang/Object;
.source "KnoxAnalyticsSystemService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastAnalyticsStatus(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

.field public final synthetic val$isForceShutdown:Z

.field public final synthetic val$status:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V
    .registers 4

    .line 205
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    iput-boolean p2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->val$status:Z

    iput-boolean p3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->val$isForceShutdown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$fgetmUserManager(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 210
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$fgetmUserUnlockStatusLock(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_2b

    .line 211
    :try_start_14
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$fgetmUserUnlockStatusLock(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 212
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_28

    .line 213
    :try_start_1e
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcastAnalyticsStatus(): after wait"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_27} :catch_2b

    goto :goto_0

    :catchall_28
    move-exception v1

    .line 212
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 215
    :catch_2b
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcastAnalyticsStatus(): Interrupted exception"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_35
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcastAnalyticsStatus(): after while"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->val$status:Z

    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;->val$isForceShutdown:Z

    invoke-static {v0, v1, p0}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastAnalyticsStatus(Landroid/content/Context;ZZ)V

    return-void
.end method
