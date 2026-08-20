.class public Lcom/android/server/BatteryService$15;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V
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

    .line 1968
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1971
    iget-object v0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1973
    iget-object v0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "no power"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;Ljava/lang/String;)V

    .line 1986
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmEnableIqi(Lcom/android/server/BatteryService;)Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 1987
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object p0

    if-eqz p0, :cond_4e

    .line 1988
    sget-object v0, Lcom/att/iqi/lib/metrics/hw/HW0E;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1989
    new-instance v0, Lcom/att/iqi/lib/metrics/hw/HW0E;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/hw/HW0E;-><init>()V

    const/4 v1, 0x1

    .line 1990
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/hw/HW0E;->setEvent(B)Lcom/att/iqi/lib/metrics/hw/HW0E;

    .line 1991
    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    .line 1992
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "submit HW0E"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_4e
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "!@ BatteryService No power and call shutdown thread"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-void
.end method
