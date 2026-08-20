.class Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "DataMetrics5gSa.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataMetricsTelephonyCallback"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;


# direct methods
.method constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .registers 2

    .line 2051
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 4

    if-eqz p1, :cond_53

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyDisplayInfo.getNetworkType(): =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->-$$Nest$smlogD(Ljava/lang/String;)V

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyDisplayInfo.getOverrideNetworkType(): =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->-$$Nest$smlogD(Ljava/lang/String;)V

    .line 2058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyDisplayInfo.is5gAvailable(): =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->is5gAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->-$$Nest$smlogD(Ljava/lang/String;)V

    .line 2059
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->-$$Nest$msetOverrideNetworkType(Lcom/tmobile/echolocate/DataMetrics5gSa;I)V

    .line 2061
    :cond_53
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->-$$Nest$fgetmTelephonyManager(Lcom/tmobile/echolocate/DataMetrics5gSa;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->-$$Nest$fgetmTelephonyCallback(Lcom/tmobile/echolocate/DataMetrics5gSa;)Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 2062
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->-$$Nest$fgetmTelephonyManager(Lcom/tmobile/echolocate/DataMetrics5gSa;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->-$$Nest$fgetmTelephonyCallback(Lcom/tmobile/echolocate/DataMetrics5gSa;)Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_72
    return-void
.end method
