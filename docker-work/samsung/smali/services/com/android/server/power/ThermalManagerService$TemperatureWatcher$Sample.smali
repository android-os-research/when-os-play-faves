.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sample"
.end annotation


# instance fields
.field public temperature:F

.field public final synthetic this$1:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JF)V
    .registers 5

    .line 1282
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->this$1:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1283
    iput-wide p2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    .line 1284
    iput p4, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    return-void
.end method
