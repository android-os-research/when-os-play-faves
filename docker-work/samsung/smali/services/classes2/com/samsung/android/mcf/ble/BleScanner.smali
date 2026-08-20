.class public interface abstract Lcom/samsung/android/mcf/ble/BleScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/ble/BleScanSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/ble/BleScanCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            "Lcom/samsung/android/mcf/ble/BleScanCallback;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .param p1    # Lcom/samsung/android/mcf/ble/BleScanCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
