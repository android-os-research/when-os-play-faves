.class public interface abstract Lcom/samsung/android/mcf/ble/BleAdvertiser;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract startAdvertise(Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z
    .param p1    # Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/ble/BleAdvertiseData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/ble/BleAdvertiseData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopAdvertise(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z
    .param p1    # Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
