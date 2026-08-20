.class public Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;
    }
.end annotation


# instance fields
.field public final mDesiredAvailableWifiInterface:I

.field public final mDesiredConnectedWifiInterface:I

.field public final mIsEnableWifiRequested:Z

.field public final mIsWifiInterfaceConnected:Z

.field public final mNeedToDisconnectInterface:I

.field public final mRequiredWifiInterface:I

.field public final mTopology:I

.field public final mType:I

.field public final mWifiApSsid:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .registers 15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;-><init>(IIIIIZLjava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(IIIIIZLjava/lang/String;ZI)V
    .registers 10
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mType:I

    iput p2, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mTopology:I

    iput p3, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mDesiredAvailableWifiInterface:I

    iput p4, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mDesiredConnectedWifiInterface:I

    iput p5, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mRequiredWifiInterface:I

    iput-boolean p6, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mIsWifiInterfaceConnected:Z

    iput-object p7, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mWifiApSsid:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mIsEnableWifiRequested:Z

    iput p9, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mNeedToDisconnectInterface:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIIZLjava/lang/String;ZI)V
    .registers 18
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;-><init>(IIIIIZLjava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .registers 12
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getTopology()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getDesiredAvailableWifiInterface()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getDesiredConnectedWifiInterface()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getRequiredWifiInterface()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->isWifiInterfaceConnected()Z

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getWifiApSsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->isEnableWifiRequested()Z

    move-result v8

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getNeedToDisconnectInterface()I

    move-result v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;-><init>(IIIIIZLjava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public getDesiredAvailableWifiInterface()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mDesiredAvailableWifiInterface:I

    return p0
.end method

.method public getDesiredConnectedWifiInterface()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mDesiredConnectedWifiInterface:I

    return p0
.end method

.method public getNeedToDisconnectInterface()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mNeedToDisconnectInterface:I

    return p0
.end method

.method public getRequiredWifiInterface()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mRequiredWifiInterface:I

    return p0
.end method

.method public getTopology()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mTopology:I

    return p0
.end method

.method public getType()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mType:I

    return p0
.end method

.method public getWifiApSsid()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mWifiApSsid:Ljava/lang/String;

    return-object p0
.end method

.method public isEnableWifiRequested()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mIsEnableWifiRequested:Z

    return p0
.end method

.method public isWifiInterfaceConnected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mIsWifiInterfaceConnected:Z

    return p0
.end method
