.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;
    }
.end annotation


# instance fields
.field public final mBtState:I

.field public final mCallState:I

.field public final mCmcState:I

.field public final mScreenState:I

.field public final mWifiState:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mScreenState:I

    iput p2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mCallState:I

    iput p3, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mBtState:I

    iput p4, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mWifiState:I

    iput p5, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mCmcState:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$a;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public getBtState()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mBtState:I

    return p0
.end method

.method public getCallState()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mCallState:I

    return p0
.end method

.method public getCmcState()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mCmcState:I

    return p0
.end method

.method public getScreenState()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mScreenState:I

    return p0
.end method

.method public getWifiState()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mWifiState:I

    return p0
.end method
