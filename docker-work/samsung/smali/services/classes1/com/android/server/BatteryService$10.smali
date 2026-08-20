.class public Lcom/android/server/BatteryService$10;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
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

    .line 1270
    iput-object p1, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 4

    const-string v0, "1"

    const-string v1, "SWITCH_STATE"

    .line 1273
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1274
    iget-object v0, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1275
    :try_start_13
    iget-object v1, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmInvalidCharger(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eq v1, p1, :cond_20

    .line 1276
    iget-object p0, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->-$$Nest$fputmInvalidCharger(Lcom/android/server/BatteryService;I)V

    .line 1278
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw p0
.end method
