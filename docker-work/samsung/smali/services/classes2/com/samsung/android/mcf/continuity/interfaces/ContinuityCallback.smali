.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CALLBACK_AP_STATUS:I = 0xfa6

.field public static final CALLBACK_DISCOVERY_DISCOVERED:I = 0xfa2

.field public static final CALLBACK_END:I = 0xfa7

.field public static final CALLBACK_MESSAGE_RECEIVED:I = 0xfa0

.field public static final CALLBACK_MESSAGE_SENT:I = 0xfa1

.field public static final CALLBACK_SESSION_PEER_CONNECTION_REQUESTED:I = 0xfa5

.field public static final CALLBACK_SESSION_PEER_STATUS_CHANGED:I = 0xfa4

.field public static final CALLBACK_SESSION_STATUS_CHANGED:I = 0xfa3

.field public static final CALLBACK_START:I = 0xfa0

.field public static final CALLBACK_SYNC_CLOUD:I = 0x1388

.field public static final CALLBACK_WIFI_INFO_UPDATED:I = 0xfa7

.field public static final KEY_AP_STATUS:Ljava/lang/String; = "KEY_AP_STATUS"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE:Ljava/lang/String; = "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CONTINUITY_WIFI_INFO_BUNDLE_ARRAY_LIST:Ljava/lang/String; = "KEY_CONTINUITY_WIFI_INFO_BUNDLE_ARRAY_LIST"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EVENT:Ljava/lang/String; = "KEY_EVENT"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_FAIL_REASON:Ljava/lang/String; = "KEY_FAIL_REASON"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_NETWORK_ROLE:Ljava/lang/String; = "KEY_NETWORK_ROLE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_PEER_STATUS:Ljava/lang/String; = "KEY_PEER_STATUS"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SELECTED_WIFI_INTERFACE:Ljava/lang/String; = "KEY_SELECTED_WIFI_INTERFACE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SESSION_STATUS:Ljava/lang/String; = "KEY_SESSION_STATUS"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_STATUS:Ljava/lang/String; = "KEY_STATUS"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createApStatusCallbackMessage(Ljava/lang/String;II)Landroid/os/Message;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa6

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setBtMac(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string p0, "KEY_STATUS"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "KEY_AP_STATUS"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static createDiscoveryDiscoveredCallbackMessage(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Message;
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa2

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_EVENT"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNearbyMyDeviceWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static createMessage(I)Landroid/os/Message;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    return-object v0
.end method

.method public static createMessageReceivedCallbackMessage(Ljava/lang/String;[BB)Landroid/os/Message;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setBtMac(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setMessageData(Landroid/os/Bundle;[B)V

    invoke-static {v1, p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setMessageId(Landroid/os/Bundle;B)V

    return-object v0
.end method

.method public static createMessageSentCallbackMessage(Ljava/lang/String;BI)Landroid/os/Message;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa1

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setBtMac(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setMessageId(Landroid/os/Bundle;B)V

    const-string p0, "KEY_STATUS"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createSessionPeerConnectionRequestedCallbackMessage(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Message;
    .registers 5
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa5

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNearbyMyDeviceWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Bundle;

    move-result-object p0

    const-string v2, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {v1, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setContinuityNetworkPolicyWrapper(Landroid/os/Bundle;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static createSessionPeerStatusChangedCallbackMessage(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)Landroid/os/Message;
    .registers 8
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa4

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_PEER_STATUS"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNearbyMyDeviceWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "KEY_FAIL_REASON"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "KEY_NETWORK_ROLE"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "KEY_SELECTED_WIFI_INTERFACE"

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static createSessionStatusChangedCallbackMessage(I)Landroid/os/Message;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa3

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_SESSION_STATUS"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static createSyncCloudCallbackMessage(I)Landroid/os/Message;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_STATUS"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static createWifiInfoUpdatedCallbackMessage(Ljava/util/ArrayList;)Landroid/os/Message;
    .registers 5
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;",
            ">;)",
            "Landroid/os/Message;"
        }
    .end annotation

    const/16 v0, 0xfa7

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;

    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityWifiInfoWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    const-string p0, "KEY_CONTINUITY_WIFI_INFO_BUNDLE_ARRAY_LIST"

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static getApStatus(Landroid/os/Message;)I
    .registers 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/16 v1, 0x65

    if-nez v0, :cond_9

    return v1

    :cond_9
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_AP_STATUS"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getBtMac(Landroid/os/Message;)Ljava/lang/String;
    .registers 1
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallbackId(Landroid/os/Message;)I
    .registers 1
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p0, p0, Landroid/os/Message;->what:I

    return p0
.end method

.method public static getContinuityNearbyMyDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
    .registers 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v0, p0, Landroid/os/Bundle;

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    check-cast p0, Landroid/os/Bundle;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNearbyMyDeviceWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getContinuityNetworkPolicyWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
    .registers 1
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getContinuityNetworkPolicyWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getContinuityWifiInfoWrapperList(Landroid/os/Message;)Ljava/util/List;
    .registers 4
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_CONTINUITY_WIFI_INFO_BUNDLE_ARRAY_LIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_1a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_27

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityWifiInfoWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_41
    return-object v0
.end method

.method public static getEvent(Landroid/os/Message;)I
    .registers 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/16 v1, 0x66

    if-nez v0, :cond_9

    return v1

    :cond_9
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_EVENT"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getFailReason(Landroid/os/Message;)I
    .registers 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/16 v1, 0x3e8

    if-nez v0, :cond_9

    return v1

    :cond_9
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_FAIL_REASON"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMessageData(Landroid/os/Message;)[B
    .registers 1
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getMessageData(Landroid/os/Message;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getMessageId(Landroid/os/Message;)B
    .registers 1
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getMessageId(Landroid/os/Message;)B

    move-result p0

    return p0
.end method

.method public static getNetworkRole(Landroid/os/Message;)I
    .registers 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/16 v1, 0x26

    if-nez v0, :cond_9

    return v1

    :cond_9
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_NETWORK_ROLE"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPeerStatus(Landroid/os/Message;)I
    .registers 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/16 v1, 0x15

    if-nez v0, :cond_9

    return v1

    :cond_9
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_PEER_STATUS"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSelectedWifiInterface(Landroid/os/Message;)I
    .registers 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_SELECTED_WIFI_INTERFACE"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSessionStatus(Landroid/os/Message;)I
    .registers 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/16 v1, 0xb

    if-nez v0, :cond_9

    return v1

    :cond_9
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_SESSION_STATUS"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStatus(Landroid/os/Message;)I
    .registers 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_STATUS"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
