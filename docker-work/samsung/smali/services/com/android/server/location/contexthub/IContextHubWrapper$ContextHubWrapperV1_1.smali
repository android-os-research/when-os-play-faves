.class public Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;
.super Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextHubWrapperV1_1"
.end annotation


# instance fields
.field public mHub:Landroid/hardware/contexthub/V1_1/IContexthub;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/V1_1/IContexthub;)V
    .registers 2

    .line 773
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    .line 774
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    return-void
.end method


# virtual methods
.method public getHubs()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    invoke-interface {p0}, Landroid/hardware/contexthub/V1_1/IContexthub;->getHubs()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 780
    new-instance v2, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v2, v1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 782
    :cond_24
    new-instance p0, Landroid/util/Pair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .registers 2

    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .registers 3

    .line 803
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    move p1, v0

    :goto_8
    invoke-interface {p0, v0, p1}, Landroid/hardware/contexthub/V1_1/IContexthub;->onSettingChanged(BB)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string p1, "IContextHubWrapper"

    const-string v0, "Failed to send setting change to Contexthub"

    .line 806
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void
.end method

.method public onMicrophoneSettingChanged(Z)V
    .registers 2

    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .registers 2

    return-void
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public supportsLocationSettingNotifications()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public supportsMicrophoneSettingNotifications()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public supportsWifiSettingNotifications()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
