.class public Lcom/android/server/vibrator/SemVibrationBundle;
.super Ljava/lang/Object;
.source "SemVibrationBundle.java"


# instance fields
.field public mAttrs:Landroid/os/VibrationAttributes;

.field public mEffect:Landroid/os/CombinedVibration;

.field public mId:I

.field public mIndex:I

.field public mMagnitude:I

.field public mOpPkg:Ljava/lang/String;

.field public mReason:Ljava/lang/String;

.field public mRepeat:I

.field public mToken:Landroid/os/IBinder;

.field public mUid:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Landroid/os/CombinedVibration;III)V
    .registers 11

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    .line 23
    iput p2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mId:I

    .line 24
    iput-object p3, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    .line 25
    iput p4, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    .line 26
    iput-object p5, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    .line 29
    iput p8, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    .line 30
    iput p9, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    .line 31
    iput p10, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6e

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6e

    .line 132
    :cond_12
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 133
    :cond_19
    check-cast p1, Lcom/android/server/vibrator/SemVibrationBundle;

    .line 134
    iget v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mId:I

    iget v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mId:I

    if-ne v2, v3, :cond_6c

    iget v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    iget v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    if-ne v2, v3, :cond_6c

    iget v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    iget v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    if-ne v2, v3, :cond_6c

    iget v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    iget v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    if-ne v2, v3, :cond_6c

    iget v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    iget v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    if-ne v2, v3, :cond_6c

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    .line 139
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    iget-object v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    .line 140
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    .line 141
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    .line 142
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    iget-object p1, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    .line 143
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v0, v1

    :goto_6d
    return v0

    :cond_6e
    :goto_6e
    return v1
.end method

.method public getAttrs()Landroid/os/VibrationAttributes;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    return-object p0
.end method

.method public getEffect()Landroid/os/CombinedVibration;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    return-object p0
.end method

.method public getId()I
    .registers 1

    .line 43
    iget p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mId:I

    return p0
.end method

.method public getIndex()I
    .registers 1

    .line 91
    iget p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    return p0
.end method

.method public getMagnitude()I
    .registers 1

    .line 107
    iget p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    return p0
.end method

.method public getOpPkg()Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getReason()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method public getRepeat()I
    .registers 1

    .line 99
    iget p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    return p0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 59
    iget p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    return p0
.end method

.method public setAttrs(Landroid/os/VibrationAttributes;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public setEffect(Landroid/os/CombinedVibration;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mId:I

    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .line 95
    iput p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    return-void
.end method

.method public setMagnitude(I)V
    .registers 2

    .line 111
    iput p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    return-void
.end method

.method public setOpPkg(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    return-void
.end method

.method public setRepeat(I)V
    .registers 2

    .line 103
    iput p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    return-void
.end method

.method public setToken(Landroid/os/IBinder;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public setUid(I)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemVibrationBundle{mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOpPkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mReason=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRepeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
