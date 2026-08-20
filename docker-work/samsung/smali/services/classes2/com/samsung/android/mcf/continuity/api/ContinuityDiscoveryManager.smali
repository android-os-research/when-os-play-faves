.class public interface abstract Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$ApStatusCallback;,
        Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
    }
.end annotation


# virtual methods
.method public abstract checkApStatus(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$ApStatusCallback;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$ApStatusCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getBtMac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getNearbyMyDevices()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThisDeviceId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract startAdvertisement()Z
.end method

.method public abstract startDiscovery(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)Z
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopAdvertisement()Z
.end method

.method public abstract stopDiscovery()Z
.end method

.method public abstract updateAdvertisement([B)Z
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
