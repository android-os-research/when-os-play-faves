.class public final Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceStateProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SensorBooleanSupplier"
.end annotation


# instance fields
.field public final mExpectedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/NumericRange;",
            ">;"
        }
    .end annotation
.end field

.field public final mSensor:Landroid/hardware/Sensor;

.field public final synthetic this$0:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/hardware/Sensor;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Sensor;",
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/NumericRange;",
            ">;)V"
        }
    .end annotation

    .line 531
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    .line 533
    iput-object p3, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final adheresToRange(FLcom/android/server/policy/devicestate/config/NumericRange;)Z
    .registers 4

    .line 572
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMin_optional()Ljava/math/BigDecimal;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 577
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_10

    return v0

    .line 582
    :cond_10
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMinInclusive_optional()Ljava/math/BigDecimal;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 588
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1f

    return v0

    .line 593
    :cond_1f
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMax_optional()Ljava/math/BigDecimal;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 598
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_2e

    return v0

    .line 603
    :cond_2e
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMaxInclusive_optional()Ljava/math/BigDecimal;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 609
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3d

    return v0

    :cond_3d
    const/4 p0, 0x1

    return p0
.end method

.method public getAsBoolean()Z
    .registers 7

    .line 538
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v0}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmLock(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 547
    :try_start_7
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmLatestSensorEvent(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEvent;

    if-eqz v1, :cond_5f

    .line 552
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_46

    const/4 v2, 0x0

    move v3, v2

    .line 558
    :goto_24
    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 559
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/devicestate/config/NumericRange;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->adheresToRange(FLcom/android/server/policy/devicestate/config/NumericRange;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 560
    monitor-exit v0

    return v2

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 563
    :cond_43
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 553
    :cond_46
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of supplied numeric range(s) does not match the number of values in the latest sensor event for sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_5f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Have not received sensor event."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_67
    move-exception p0

    .line 564
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_7 .. :try_end_69} :catchall_67

    throw p0
.end method
