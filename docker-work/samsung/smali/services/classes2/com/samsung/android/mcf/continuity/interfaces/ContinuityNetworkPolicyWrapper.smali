.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIIIIZLjava/lang/String;ZI)V
    .registers 10
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;-><init>(IIIIIZLjava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(IIIZLjava/lang/String;ZI)V
    .registers 8
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;-><init>(IIIZLjava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    return-void
.end method

.method public static createInstance(IIIIIZLjava/lang/String;ZI)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
    .registers 20
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v10, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-object v0, v10

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;-><init>(IIIIIZLjava/lang/String;ZI)V

    return-object v10
.end method

.method public static createInstance(IIIZLjava/lang/String;ZI)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
    .registers 16
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v8, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;-><init>(IIIZLjava/lang/String;ZI)V

    return-object v8
.end method

.method public static createInstance(Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
    .registers 2
    .param p0    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    return-object v0
.end method


# virtual methods
.method public getDesiredAvailableWifiInterface()I
    .registers 1

    invoke-super {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getDesiredAvailableWifiInterface()I

    move-result p0

    return p0
.end method

.method public getDesiredConnectedWifiInterface()I
    .registers 1

    invoke-super {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getDesiredConnectedWifiInterface()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContinuityNetworkPolicyWrapper{TY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TO = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getTopology()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->getDesiredAvailableWifiInterface()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->getDesiredConnectedWifiInterface()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getRequiredWifiInterface()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->isWifiInterfaceConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getWifiApSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
