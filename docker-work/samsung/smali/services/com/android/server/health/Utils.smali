.class public Lcom/android/server/health/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V
    .registers 3

    .line 36
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 37
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 38
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 39
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 40
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 41
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 42
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 43
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 44
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 45
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 46
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 47
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 48
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 49
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 50
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 51
    iget-object p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    return-void
.end method

.method public static copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .registers 4

    .line 89
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    if-nez v0, :cond_b

    .line 90
    new-instance v0, Landroid/hardware/health/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/HealthInfo;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 92
    :cond_b
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 93
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 94
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 95
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 96
    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 97
    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 98
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 99
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 100
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 101
    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 102
    iget p1, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iput p1, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    return-void
.end method

.method public static copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V
    .registers 4

    .line 64
    iget-boolean v0, p1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 65
    iget-boolean v0, p1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 66
    iget-boolean v0, p1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 67
    iget v0, p1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 68
    iget v0, p1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 69
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 70
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 71
    iget-boolean v0, p1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 72
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 73
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 74
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 75
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 76
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 77
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 78
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 79
    iget-object v0, p1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 80
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 81
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 82
    iget-wide v0, p1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iput-wide v0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 83
    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    iput p1, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    return-void
.end method
