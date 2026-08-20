.class public interface abstract Lcom/samsung/android/mcf/McfSubscriber;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract closeMessagingClient(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .param p1    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMessagingDeviceRssi(JLcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .param p3    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isNetworkEnabled(I)Z
.end method

.method public abstract keepDiscoveredDevice(Lcom/samsung/android/mcf/McfDevice;ZLcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z
    .param p1    # Lcom/samsung/android/mcf/McfDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract openMessagingClient(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .param p1    # Lcom/samsung/android/mcf/messaging/McfMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract registerHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)Z
    .param p1    # Lcom/samsung/android/mcf/handover/McfHandoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract sendMessage(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .param p1    # Lcom/samsung/android/mcf/messaging/McfMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAntennaPairSelection(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)Z
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setTargetUwbParam(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Ljava/lang/String;[BI)Z
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .param p1    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startHandover(Lcom/samsung/android/mcf/handover/McfHandoverData;)Z
    .param p1    # Lcom/samsung/android/mcf/handover/McfHandoverData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .param p1    # Lcom/samsung/android/mcf/discovery/McfScanData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .param p1    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopHandover()Z
.end method

.method public abstract stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .param p1    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopScanWithFlush(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .param p1    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterHandoverCallback()V
.end method
