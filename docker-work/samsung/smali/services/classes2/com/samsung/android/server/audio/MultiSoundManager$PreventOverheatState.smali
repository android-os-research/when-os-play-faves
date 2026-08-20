.class public Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/MultiSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreventOverheatState"
.end annotation


# instance fields
.field public mCurDevice:I

.field public mLimitedVolumeForOverheat:F

.field public mState:Z

.field public mUid:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLimitedVolumeForOverheat(Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V
    .registers 4

    .line 1209
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1206
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    const/4 p1, 0x0

    .line 1207
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    .line 1210
    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    .line 1211
    iput-boolean p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    return-void
.end method


# virtual methods
.method public final isSameUid(I)Z
    .registers 3

    const v0, 0x186a0

    .line 1227
    rem-int/2addr p1, v0

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    rem-int/2addr p0, v0

    if-ne p1, p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public needLimitVolumeForApp(I)Z
    .registers 3

    .line 1259
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->isSameUid(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public setDevice(I)V
    .registers 3

    .line 1231
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_e

    .line 1233
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    .line 1234
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->setLimitedVolumeForOverheat()V

    :cond_e
    return-void
.end method

.method public setLimitedVolumeForOverheat()V
    .registers 2

    const-string v0, "l_volume_prevent_overheat_key;gain"

    .line 1245
    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    :try_start_6
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_a} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1253
    :goto_d
    iput v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    .line 1255
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    return-void
.end method

.method public setState(IZ)V
    .registers 5

    .line 1216
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    if-eq v0, p1, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1218
    :goto_9
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    .line 1219
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    if-eq v0, v1, :cond_14

    .line 1222
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    :cond_14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCureDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
