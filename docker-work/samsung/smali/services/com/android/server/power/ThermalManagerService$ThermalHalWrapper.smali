.class public abstract Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ThermalHalWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;,
        Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ThermalHalWrapper"

.field public static final THERMAL_HAL_DEATH_COOKIE:I = 0x15ec


# instance fields
.field public mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

.field public final mHalLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract connectToHal()Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getCurrentCoolingDevices(ZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentTemperatures(ZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTemperatureThresholds(ZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/hardware/thermal/V2_0/TemperatureThreshold;",
            ">;"
        }
    .end annotation
.end method

.method public resendCurrentTemperatures()V
    .registers 7

    .line 662
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 663
    :try_start_4
    invoke-virtual {p0, v1, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v2

    .line 664
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_c
    if-ge v1, v3, :cond_1c

    .line 666
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Temperature;

    invoke-interface {v4, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 668
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 644
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    return-void
.end method
