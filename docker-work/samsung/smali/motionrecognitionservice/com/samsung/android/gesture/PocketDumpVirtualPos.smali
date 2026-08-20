.class Lcom/samsung/android/gesture/PocketDumpVirtualPos;
.super Lcom/samsung/android/gesture/PocketDumpData;
.source "PocketDumpData.java"


# instance fields
.field private mPedoCase:I

.field private mPedoState:I

.field private mPosCase:I

.field private mPosState:I

.field private mState:I

.field private mVersion:I

.field private mWakeUpReason:I


# direct methods
.method public constructor <init>(JIIIIIII)V
    .registers 12
    .param p1, "timeStamp"    # J
    .param p3, "wakeUpReason"    # I
    .param p4, "state"    # I
    .param p5, "posState"    # I
    .param p6, "posCase"    # I
    .param p7, "pedoState"    # I
    .param p8, "pedoCase"    # I
    .param p9, "version"    # I

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketDumpData;-><init>()V

    .line 157
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mScreenOnTime:Ljava/lang/String;

    .line 158
    iput p3, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mWakeUpReason:I

    .line 159
    iput p4, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mState:I

    .line 160
    iput p5, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mPosState:I

    .line 161
    iput p6, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mPosCase:I

    .line 162
    iput p7, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mPedoState:I

    .line 163
    iput p8, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mPedoCase:I

    .line 164
    iput p9, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mVersion:I

    .line 165
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mScreenOnTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WakeUp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mWakeUpReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mPosState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posCase : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mPosCase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pedoState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mPedoState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pedoCase : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mPedoCase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtualPos;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
