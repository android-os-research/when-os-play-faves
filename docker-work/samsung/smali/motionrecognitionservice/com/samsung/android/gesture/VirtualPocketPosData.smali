.class Lcom/samsung/android/gesture/VirtualPocketPosData;
.super Ljava/lang/Object;
.source "PocketSensitivityManager.java"


# instance fields
.field private pedoCase:I

.field private pedoState:I

.field private posCase:I

.field private posState:I

.field private state:I

.field private version:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .registers 2

    .line 268
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->state:I

    return v0
.end method

.method public getpedoCase()I
    .registers 2

    .line 292
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->pedoCase:I

    return v0
.end method

.method public getpedoState()I
    .registers 2

    .line 286
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->pedoState:I

    return v0
.end method

.method public getposCase()I
    .registers 2

    .line 280
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->posCase:I

    return v0
.end method

.method public getposState()I
    .registers 2

    .line 274
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->posState:I

    return v0
.end method

.method public getversion()I
    .registers 2

    .line 298
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->version:I

    return v0
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 271
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->state:I

    .line 272
    return-void
.end method

.method public setpedoCase(I)V
    .registers 2
    .param p1, "pedocase"    # I

    .line 295
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->pedoCase:I

    .line 296
    return-void
.end method

.method public setpedoState(I)V
    .registers 2
    .param p1, "pedostate"    # I

    .line 289
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->pedoState:I

    .line 290
    return-void
.end method

.method public setposCase(I)V
    .registers 2
    .param p1, "poscase"    # I

    .line 283
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->posCase:I

    .line 284
    return-void
.end method

.method public setposState(I)V
    .registers 2
    .param p1, "posstate"    # I

    .line 277
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->posState:I

    .line 278
    return-void
.end method

.method public setversion(I)V
    .registers 2
    .param p1, "version"    # I

    .line 301
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->version:I

    .line 302
    return-void
.end method
