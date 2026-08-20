.class public Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/MultiSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSoundItem"
.end annotation


# instance fields
.field public mDevice:I

.field public mRatio:I

.field public mShouldMute:Z

.field public mUid:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 992
    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 993
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setAppVolume(I)V

    .line 994
    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    const/4 p1, 0x0

    .line 995
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    return-void
.end method


# virtual methods
.method public getAppDevice()I
    .registers 1

    .line 1007
    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    return p0
.end method

.method public getAppVolume()I
    .registers 1

    .line 1011
    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 999
    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    return p0
.end method

.method public isShouldMute()Z
    .registers 1

    .line 1023
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    return p0
.end method

.method public removable()Z
    .registers 3

    .line 1031
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_10

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public setAppDevice(I)V
    .registers 2

    .line 1003
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    return-void
.end method

.method public setAppVolume(I)V
    .registers 3

    if-ltz p1, :cond_a

    const/16 v0, 0x64

    if-le p1, v0, :cond_7

    goto :goto_a

    .line 1019
    :cond_7
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    return-void

    :cond_a
    :goto_a
    const-string p0, "AS.MultiSoundManager"

    const-string p1, "Invalid app volume"

    .line 1016
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setShouldMute(Z)V
    .registers 2

    .line 1027
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    return-void
.end method
