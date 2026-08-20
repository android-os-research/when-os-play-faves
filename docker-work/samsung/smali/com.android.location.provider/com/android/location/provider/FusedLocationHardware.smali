.class public final Lcom/android/location/provider/FusedLocationHardware;
.super Ljava/lang/Object;
.source "FusedLocationHardware.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flushBatchedLocations()V
    .registers 1

    .line 53
    return-void
.end method

.method public getSupportedBatchSize()I
    .registers 2

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()I
    .registers 2

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public injectDeviceContext(I)V
    .registers 2
    .param p1, "deviceEnabledContext"    # I

    .line 65
    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .line 59
    return-void
.end method

.method public registerSink(Lcom/android/location/provider/FusedLocationHardwareSink;Landroid/os/Looper;)V
    .registers 3
    .param p1, "sink"    # Lcom/android/location/provider/FusedLocationHardwareSink;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 37
    return-void
.end method

.method public requestBatchOfLocations(I)V
    .registers 2
    .param p1, "batchSizeRequest"    # I

    .line 51
    return-void
.end method

.method public startBatching(ILcom/android/location/provider/GmsFusedBatchOptions;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "batchOptions"    # Lcom/android/location/provider/GmsFusedBatchOptions;

    .line 45
    return-void
.end method

.method public stopBatching(I)V
    .registers 2
    .param p1, "id"    # I

    .line 47
    return-void
.end method

.method public supportsDeviceContextInjection()Z
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterSink(Lcom/android/location/provider/FusedLocationHardwareSink;)V
    .registers 2
    .param p1, "sink"    # Lcom/android/location/provider/FusedLocationHardwareSink;

    .line 39
    return-void
.end method

.method public updateBatchingOptions(ILcom/android/location/provider/GmsFusedBatchOptions;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "batchOptions"    # Lcom/android/location/provider/GmsFusedBatchOptions;

    .line 49
    return-void
.end method
