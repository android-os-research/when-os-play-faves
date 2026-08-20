.class public Lcom/android/server/BatteryService$13;
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

    .line 1394
    iput-object p1, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1397
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 1398
    sget-object v0, Lcom/att/iqi/lib/metrics/hw/HW12;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1399
    new-instance v0, Lcom/att/iqi/lib/metrics/hw/HW12;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/hw/HW12;-><init>()V

    const/4 v1, 0x0

    .line 1400
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/hw/HW12;->setCause(B)Lcom/att/iqi/lib/metrics/hw/HW12;

    .line 1401
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/hw/HW12;->setProcessor(B)Lcom/att/iqi/lib/metrics/hw/HW12;

    .line 1402
    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    .line 1403
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "submit HW12"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void
.end method
