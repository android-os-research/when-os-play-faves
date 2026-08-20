.class public Lvendor/samsung/hardware/health/Translate;
.super Ljava/lang/Object;
.source "Translate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;
    .registers 3

    .line 23
    new-instance v0, Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    .line 24
    iget-object v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    invoke-static {v1}, Landroid/hardware/health/Translate;->h2aTranslate(Landroid/hardware/health/V2_1/HealthInfo;)Landroid/hardware/health/HealthInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 26
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 27
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 28
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 29
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    iput-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 30
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    iput-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 31
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 32
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 33
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 34
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    iput-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 35
    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iput p0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    return-object v0
.end method
