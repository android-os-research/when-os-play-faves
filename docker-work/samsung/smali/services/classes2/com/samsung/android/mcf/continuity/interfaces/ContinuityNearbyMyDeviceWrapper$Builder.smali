.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mAppData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mBtMac:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mDeviceType:I

.field public mDisplayName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mIp:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mModelName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mPort:I

.field public mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mSessionKey:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mDeviceType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mPort:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
    .registers 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v12, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mBtMac:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mDisplayName:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mDeviceType:I

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mModelName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mIp:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mPort:I

    iget-object v7, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    iget-object v8, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    iget-object v9, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mAppData:[B

    iget-object v10, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mSessionKey:[B

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;[B[BLcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$a;)V

    return-object v12
.end method

.method public setAppData([B)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    .registers 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mAppData:[B

    return-object p0
.end method

.method public setBtMac(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mBtMac:Ljava/lang/String;

    return-object p0
.end method

.method public setCurContinuityDeviceState(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    return-object p0
.end method

.method public setDeviceType(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mDeviceType:I

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setIp(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mIp:Ljava/lang/String;

    return-object p0
.end method

.method public setModelName(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mModelName:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mPort:I

    return-object p0
.end method

.method public setPrevContinuityDeviceState(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    return-object p0
.end method

.method public setSessionKey([B)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    .registers 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->mSessionKey:[B

    return-object p0
.end method
