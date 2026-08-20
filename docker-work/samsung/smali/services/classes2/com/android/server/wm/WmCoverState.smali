.class public final Lcom/android/server/wm/WmCoverState;
.super Lcom/samsung/android/cover/CoverState;
.source "WmCoverState.java"


# static fields
.field public static sIsEnabled:Z = false

.field public static sWmCoverState:Lcom/android/server/wm/WmCoverState;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    return-void
.end method

.method public static enable()V
    .registers 1

    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 46
    sget-object v0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    if-nez v0, :cond_e

    .line 47
    new-instance v0, Lcom/android/server/wm/WmCoverState;

    invoke-direct {v0}, Lcom/android/server/wm/WmCoverState;-><init>()V

    sput-object v0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    :cond_e
    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/WmCoverState;
    .registers 1

    .line 37
    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_6
    sget-object v0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    return-object v0
.end method

.method public static isEnabled()Z
    .registers 1

    .line 52
    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    return v0
.end method


# virtual methods
.method public getWindowLayerFromTypeLw(I)I
    .registers 7

    const/16 v0, 0x7d5

    const/16 v1, 0x1a

    const/16 v2, 0x8

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x833

    if-eq p1, v0, :cond_11

    const/16 v3, 0x96b

    if-eq p1, v3, :cond_11

    goto :goto_35

    .line 137
    :cond_11
    iget v3, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xf

    if-eq v3, v4, :cond_21

    if-eq v3, v2, :cond_21

    const/16 v2, 0x10

    if-eq v3, v2, :cond_21

    const/16 v2, 0x11

    if-ne v3, v2, :cond_35

    :cond_21
    if-eq p1, v0, :cond_29

    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p0

    if-eqz p0, :cond_35

    :cond_29
    return v1

    .line 131
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p1

    if-eqz p1, :cond_35

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne p0, v2, :cond_35

    return v1

    :cond_35
    :goto_35
    const/4 p0, -0x1

    return p0
.end method

.method public isClearTypeCover()Z
    .registers 2

    .line 100
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_b

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return p0

    :cond_b
    :pswitch_b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_e
    .packed-switch 0xf
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public isClearTypeCoverClosed()Z
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isClearTypeCover()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isCoverAppSupported()Z
    .registers 2

    .line 60
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0xff

    if-eq p0, v0, :cond_f

    packed-switch p0, :pswitch_data_12

    const/4 p0, 0x0

    return p0

    :cond_f
    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0xf
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public isCoverClosed()Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFlipTypeCoverClosed()Z
    .registers 2

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 88
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    if-eqz p0, :cond_16

    const/4 v0, 0x7

    if-eq p0, v0, :cond_16

    const/16 v0, 0xb

    if-eq p0, v0, :cond_16

    const/16 v0, 0xe

    if-eq p0, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public isViewCoverClosed()Z
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 73
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_18

    const/16 v0, 0xb

    if-eq p0, v0, :cond_18

    const/16 v0, 0xff

    if-eq p0, v0, :cond_18

    packed-switch p0, :pswitch_data_1c

    goto :goto_1a

    :cond_18
    :pswitch_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0

    :pswitch_data_1c
    .packed-switch 0xf
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public shouldHideStatusBarForCover()Z
    .registers 1

    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isClearTypeCover()Z

    move-result p0

    return p0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)Z
    .registers 4

    .line 119
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eq v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    .line 120
    :cond_e
    :goto_e
    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    const/4 p0, 0x1

    return p0
.end method

.method public windowAttrsHasShowWallpaperOrShowWhenLocked(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .line 152
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p1, 0x100000

    and-int/2addr p1, p0

    if-nez p1, :cond_f

    const/high16 p1, 0x80000

    and-int/2addr p0, p1

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method
