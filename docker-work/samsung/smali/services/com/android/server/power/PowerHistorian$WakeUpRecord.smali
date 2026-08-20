.class public final Lcom/android/server/power/PowerHistorian$WakeUpRecord;
.super Lcom/android/server/power/PowerHistorian$Record;
.source "PowerHistorian.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerHistorian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeUpRecord"
.end annotation


# instance fields
.field public final mForegroundPackageName:Ljava/lang/String;

.field public final mIsOn:Z

.field public final mOpPackageName:Ljava/lang/String;

.field public final mReasonInt:I

.field public final mReasonStr:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(ZIILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 218
    invoke-direct {p0}, Lcom/android/server/power/PowerHistorian$Record;-><init>()V

    .line 219
    iput-boolean p1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mIsOn:Z

    .line 220
    iput p2, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mUid:I

    .line 221
    iput p3, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonInt:I

    if-eqz p1, :cond_10

    .line 222
    invoke-static {p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    .line 223
    :cond_10
    invoke-static {p3}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object p1

    :goto_14
    iput-object p1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonStr:Ljava/lang/String;

    .line 224
    invoke-virtual {p0, p4}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->ensureNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mForegroundPackageName:Ljava/lang/String;

    .line 225
    invoke-virtual {p0, p5}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->ensureNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mOpPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ensureNonNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    return-object p1
.end method

.method public getForegroundPackageName()Ljava/lang/String;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mForegroundPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getReasonInt()I
    .registers 1

    .line 241
    iget p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonInt:I

    return p0
.end method

.method public getReasonStr()Ljava/lang/String;
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonStr:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getRecordedTimeMillis()J
    .registers 3

    .line 208
    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->getRecordedTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()I
    .registers 1

    .line 237
    iget p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mUid:I

    return p0
.end method

.method public isOn()Z
    .registers 1

    .line 233
    iget-boolean p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mIsOn:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mUid:I

    .line 262
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, " %-5s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    .line 263
    iget-boolean v3, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mIsOn:Z

    if-eqz v3, :cond_2a

    const-string v3, "ON"

    goto :goto_2c

    :cond_2a
    const-string v3, "OFF"

    :goto_2c
    aput-object v3, v2, v4

    const-string v3, " %-3s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonStr:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, " %-40s"

    .line 264
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mForegroundPackageName:Ljava/lang/String;

    aput-object p0, v1, v4

    const-string p0, " %s"

    .line 265
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
