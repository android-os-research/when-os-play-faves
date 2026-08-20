.class public Lcom/android/server/BatteryService$12;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1371
    iput-object p1, p0, Lcom/android/server/BatteryService$12;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1374
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!@bootCompleted"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, p0, Lcom/android/server/BatteryService$12;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1377
    :try_start_10
    iget-object v1, p0, Lcom/android/server/BatteryService$12;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$fputmBootCompleted(Lcom/android/server/BatteryService;Z)V

    .line 1378
    iget-object p0, p0, Lcom/android/server/BatteryService$12;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLed(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 1379
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw p0
.end method
