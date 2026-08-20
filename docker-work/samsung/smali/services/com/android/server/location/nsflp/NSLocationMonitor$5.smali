.class public Lcom/android/server/location/nsflp/NSLocationMonitor$5;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/nsflp/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .registers 2

    .line 841
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 8

    .line 844
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 846
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_99

    .line 847
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDeviceActivityDetectorContext()Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;

    move-result-object p1

    .line 848
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getActivity()I

    move-result v0

    .line 849
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getResult()I

    move-result v1

    .line 850
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmSupportAlgorithm(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    if-ne v2, v3, :cond_25

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getDuration()I

    move-result p1

    goto :goto_26

    :cond_25
    const/4 p1, -0x1

    .line 852
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSemContextChanged, activity : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " result : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " movement : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NSLocationMonitor"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmSupportAlgorithm(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    move-result-object v2

    sget-object v5, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    if-ne v2, v5, :cond_5d

    .line 856
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$mcheckSupportAlgorithm(Lcom/android/server/location/nsflp/NSLocationMonitor;I)V

    return-void

    :cond_5d
    const/4 v2, 0x4

    if-eq v1, v2, :cond_99

    const/4 v2, 0x5

    if-ne v1, v2, :cond_64

    goto :goto_99

    :cond_64
    const/4 v2, 0x3

    if-ne v1, v2, :cond_74

    const-string p1, "SENSOR OUT"

    .line 867
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    sget-object p1, Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;->SENSOR_OUT:Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;

    invoke-static {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$mdisableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor;Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V

    return-void

    .line 872
    :cond_74
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmSupportAlgorithm(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    move-result-object v2

    if-ne v2, v3, :cond_82

    .line 873
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$msendStationaryInfo(Lcom/android/server/location/nsflp/NSLocationMonitor;III)V

    goto :goto_99

    .line 874
    :cond_82
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmSupportAlgorithm(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    move-result-object p1

    sget-object v2, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    if-ne p1, v2, :cond_92

    .line 875
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0, v0, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$mcheckActivityResult(Lcom/android/server/location/nsflp/NSLocationMonitor;II)V

    goto :goto_99

    :cond_92
    const-string/jumbo p0, "onSemContextChanged, algorithm is not supported"

    .line 877
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_99
    :goto_99
    return-void
.end method
