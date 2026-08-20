.class public Lcom/android/server/BatteryService$11;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


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
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .registers 3

    .line 1351
    iput-object p1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 1354
    iget-object p1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1355
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$mupdateBatteryWarningLevelLocked(Lcom/android/server/BatteryService;)V

    .line 1356
    monitor-exit p1

    return-void

    :catchall_e
    move-exception p0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method
