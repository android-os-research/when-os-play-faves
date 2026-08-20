.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_APP_DATA:Ljava/lang/String; = "KEY_APP_DATA"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_BT_MAC:Ljava/lang/String; = "KEY_BT_MAC"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_BT_STATE:Ljava/lang/String; = "KEY_BT_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CALL_STATE:Ljava/lang/String; = "KEY_CALL_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CMC_STATE:Ljava/lang/String; = "KEY_CMC_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CUR_CONTINUITY_DEVICE_STATE:Ljava/lang/String; = "KEY_CUR_CONTINUITY_DEVICE_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_DESIRED_AVAILABLE_WIFI_INTERFACE:Ljava/lang/String; = "KEY_DESIRED_AVAILABLE_WIFI_INTERFACE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_DESIRED_CONNECTED_WIFI_INTERFACE:Ljava/lang/String; = "KEY_DESIRED_CONNECTED_WIFI_INTERFACE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "KEY_DEVICE_TYPE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_DISPLAY_NAME:Ljava/lang/String; = "KEY_DISPLAY_NAME"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_IP:Ljava/lang/String; = "KEY_IP"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_IS_ENABLE_WIFI_REQUESTED:Ljava/lang/String; = "KEY_IS_ENABLE_WIFI_REQUESTED"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_IS_WIFI_INTERFACE_CONNECTED:Ljava/lang/String; = "KEY_IS_WIFI_INTERFACE_CONNECTED"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MODEL_NAME:Ljava/lang/String; = "KEY_MODEL_NAME"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_NEED_TO_DISCONNECT_INTERFACE:Ljava/lang/String; = "KEY_NEED_TO_DISCONNECT_INTERFACE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_NETWORK_ROLE:Ljava/lang/String; = "KEY_NETWORK_ROLE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_NETWORK_TOPOLOGY:Ljava/lang/String; = "KEY_NETWORK_TOPOLOGY"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_NETWORK_TYPE:Ljava/lang/String; = "KEY_NETWORK_TYPE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_PORT:Ljava/lang/String; = "KEY_PORT"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_PREV_CONTINUITY_DEVICE_STATE:Ljava/lang/String; = "KEY_PREV_CONTINUITY_DEVICE_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_REQUIRED_WIFI_NETWORK:Ljava/lang/String; = "KEY_REQUIRED_WIFI_NETWORK"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SCREEN_STATE:Ljava/lang/String; = "KEY_SCREEN_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SESSION_KEY:Ljava/lang/String; = "KEY_SESSION_KEY"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WIFI_AP_SSID:Ljava/lang/String; = "KEY_WIFI_AP_SSID"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WIFI_INFO_FREQUENCY:Ljava/lang/String; = "KEY_WIFI_INFO_FREQUENCY"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WIFI_INFO_STATUS:Ljava/lang/String; = "KEY_WIFI_INFO_STATUS"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WIFI_INFO_TYPE:Ljava/lang/String; = "KEY_WIFI_INFO_TYPE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WIFI_STATE:Ljava/lang/String; = "KEY_WIFI_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static continuityDeviceStateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .registers 4
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;-><init>()V

    const-string v1, "KEY_SCREEN_STATE"

    const/16 v2, 0x190

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->setScreenState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    move-result-object v0

    const-string v1, "KEY_CALL_STATE"

    const/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->setCallState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    move-result-object v0

    const-string v1, "KEY_BT_STATE"

    const/16 v2, 0x258

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->setBtState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    move-result-object v0

    const-string v1, "KEY_WIFI_STATE"

    const/16 v2, 0x2bc

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->setWifiState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    move-result-object v0

    const-string v1, "KEY_CMC_STATE"

    const/16 v2, 0x320

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->setCmcState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    move-result-object p0

    return-object p0
.end method

.method public static continuityDeviceStateToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Landroid/os/Bundle;
    .registers 4
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getScreenState()I

    move-result v1

    const-string v2, "KEY_SCREEN_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getCallState()I

    move-result v1

    const-string v2, "KEY_CALL_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getBtState()I

    move-result v1

    const-string v2, "KEY_BT_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getWifiState()I

    move-result v1

    const-string v2, "KEY_WIFI_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getCmcState()I

    move-result p0

    const-string v1, "KEY_CMC_STATE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static continuityNearbyMyDeviceWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
    .registers 4
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;-><init>()V

    const-string v1, "KEY_BT_MAC"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setBtMac(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_DISPLAY_NAME"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setDisplayName(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_DEVICE_TYPE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setDeviceType(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_MODEL_NAME"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setModelName(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_IP"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setIp(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_PORT"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setPort(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_PREV_CONTINUITY_DEVICE_STATE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_56

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceStateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setPrevContinuityDeviceState(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    :cond_56
    const-string v1, "KEY_CUR_CONTINUITY_DEVICE_STATE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_69

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceStateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setCurContinuityDeviceState(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    :cond_69
    const-string v1, "KEY_APP_DATA"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setAppData([B)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    const-string v1, "KEY_SESSION_KEY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setSessionKey([B)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static continuityNearbyMyDeviceWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Bundle;
    .registers 4
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getBtMac()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_BT_MAC"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_DISPLAY_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getDeviceType()I

    move-result v1

    const-string v2, "KEY_DEVICE_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getModelName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_MODEL_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getIp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_IP"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getPort()I

    move-result v1

    const-string v2, "KEY_PORT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getPrevContinuityDeviceState()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceStateToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_PREV_CONTINUITY_DEVICE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_49
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getCurContinuityDeviceState()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceStateToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_CUR_CONTINUITY_DEVICE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_58
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getAppData()[B

    move-result-object v1

    const-string v2, "KEY_APP_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getSessionKey()[B

    move-result-object p0

    const-string v1, "KEY_SESSION_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static continuityNetworkPolicyWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
    .registers 11
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "KEY_NETWORK_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "KEY_NETWORK_TOPOLOGY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "KEY_DESIRED_AVAILABLE_WIFI_INTERFACE"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "KEY_DESIRED_CONNECTED_WIFI_INTERFACE"

    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "KEY_REQUIRED_WIFI_NETWORK"

    invoke-virtual {p0, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "KEY_IS_WIFI_INTERFACE_CONNECTED"

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "KEY_WIFI_AP_SSID"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "KEY_IS_ENABLE_WIFI_REQUESTED"

    invoke-virtual {p0, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "KEY_NEED_TO_DISCONNECT_INTERFACE"

    invoke-virtual {p0, v9, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    move v3, v0

    invoke-static/range {v1 .. v9}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->createInstance(IIIIIZLjava/lang/String;ZI)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static continuityNetworkPolicyWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Bundle;
    .registers 4
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v1

    const-string v2, "KEY_NETWORK_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getTopology()I

    move-result v1

    const-string v2, "KEY_NETWORK_TOPOLOGY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "KEY_NETWORK_ROLE"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->getDesiredAvailableWifiInterface()I

    move-result v1

    const-string v2, "KEY_DESIRED_AVAILABLE_WIFI_INTERFACE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->getDesiredConnectedWifiInterface()I

    move-result v1

    const-string v2, "KEY_DESIRED_CONNECTED_WIFI_INTERFACE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getRequiredWifiInterface()I

    move-result v1

    const-string v2, "KEY_REQUIRED_WIFI_NETWORK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->isWifiInterfaceConnected()Z

    move-result v1

    const-string v2, "KEY_IS_WIFI_INTERFACE_CONNECTED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getWifiApSsid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_WIFI_AP_SSID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->isEnableWifiRequested()Z

    move-result v1

    const-string v2, "KEY_IS_ENABLE_WIFI_REQUESTED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getNeedToDisconnectInterface()I

    move-result p0

    const-string v1, "KEY_NEED_TO_DISCONNECT_INTERFACE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static continuityWifiInfoWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;
    .registers 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "KEY_WIFI_INFO_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "KEY_WIFI_INFO_STATUS"

    const/16 v2, 0x6f

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "KEY_WIFI_INFO_FREQUENCY"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v2, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;-><init>(II)V

    invoke-virtual {v2, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->setFrequency(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static continuityWifiInfoWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;)Landroid/os/Bundle;
    .registers 4
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;->getType()I

    move-result v1

    const-string v2, "KEY_WIFI_INFO_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;->getStatus()I

    move-result v1

    const-string v2, "KEY_WIFI_INFO_STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;->getFrequency()I

    move-result p0

    const-string v1, "KEY_WIFI_INFO_FREQUENCY"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
