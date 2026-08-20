.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    }
.end annotation


# instance fields
.field public final mAppData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mBtMac:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mDeviceType:I

.field public final mDisplayName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mIp:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mModelName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mPort:I

.field public final mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mSessionKey:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;[B[B)V
    .registers 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mBtMac:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mDisplayName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mDeviceType:I

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mModelName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mIp:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPort:I

    iput-object p7, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    iput-object p8, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    iput-object p9, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mAppData:[B

    iput-object p10, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mSessionKey:[B

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;[B[BLcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$a;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;[B[B)V

    return-void
.end method


# virtual methods
.method public getAppData()[B
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mAppData:[B

    return-object p0
.end method

.method public getBtMac()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mBtMac:Ljava/lang/String;

    return-object p0
.end method

.method public getBtState()I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getBtState()I

    move-result p0

    goto :goto_b

    :cond_9
    const/16 p0, 0x258

    :goto_b
    return p0
.end method

.method public getCallState()I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getCallState()I

    move-result p0

    goto :goto_b

    :cond_9
    const/16 p0, 0x1f4

    :goto_b
    return p0
.end method

.method public getCmcState()I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getCmcState()I

    move-result p0

    goto :goto_b

    :cond_9
    const/16 p0, 0x320

    :goto_b
    return p0
.end method

.method public getCurContinuityDeviceState()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mBtMac:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getBtMacHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mBtMac:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceType()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mDeviceType:I

    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getIp()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mIp:Ljava/lang/String;

    return-object p0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mModelName:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPort:I

    return p0
.end method

.method public getPrevContinuityDeviceState()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    return-object p0
.end method

.method public getScreenState()I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getScreenState()I

    move-result p0

    goto :goto_b

    :cond_9
    const/16 p0, 0x190

    :goto_b
    return p0
.end method

.method public getSessionKey()[B
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mSessionKey:[B

    return-object p0
.end method

.method public getWifiState()I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getWifiState()I

    move-result p0

    goto :goto_b

    :cond_9
    const/16 p0, 0x2bc

    :goto_b
    return p0
.end method

.method public isDeviceStateChanged()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    const/4 v3, 0x1

    if-nez v2, :cond_c

    return v3

    :cond_c
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getScreenState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getScreenState()I

    move-result v2

    if-ne v0, v2, :cond_34

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getBtState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getBtState()I

    move-result v2

    if-ne v0, v2, :cond_34

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getWifiState()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getWifiState()I

    move-result p0

    if-eq v0, p0, :cond_35

    :cond_34
    move v1, v3

    :cond_35
    return v1
.end method
