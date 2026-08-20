.class Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$1;
.super Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;
.source "ThermalGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 8
    .param p1, "this$0"    # Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "base"    # I
    .param p4, "divisor"    # I
    .param p5, "min"    # I
    .param p6, "max"    # I
    .param p7, "path"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$1;->this$0:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method parseSysFs(Ljava/lang/String;)I
    .registers 4
    .param p1, "sysFs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
