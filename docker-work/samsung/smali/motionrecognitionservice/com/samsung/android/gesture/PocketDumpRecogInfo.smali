.class Lcom/samsung/android/gesture/PocketDumpRecogInfo;
.super Lcom/samsung/android/gesture/PocketDumpData;
.source "PocketDumpData.java"


# instance fields
.field private mLidState:I

.field private mLuminance:I

.field private mPocketState:I

.field private mWakeUpReason:I


# direct methods
.method public constructor <init>(JIIIII)V
    .registers 10
    .param p1, "timeStamp"    # J
    .param p3, "wakeUpReason"    # I
    .param p4, "prox"    # I
    .param p5, "lux"    # I
    .param p6, "lumi"    # I
    .param p7, "pocketState"    # I

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketDumpData;-><init>()V

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mScreenOnTime:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mWakeUpReason:I

    .line 25
    iput p4, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mProx:I

    .line 26
    iput p5, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mLux:I

    .line 27
    iput p6, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mLuminance:I

    .line 28
    iput p7, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mPocketState:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mLidState:I

    .line 30
    return-void
.end method

.method public constructor <init>(JIIIIII)V
    .registers 11
    .param p1, "timeStamp"    # J
    .param p3, "wakeUpReason"    # I
    .param p4, "prox"    # I
    .param p5, "lux"    # I
    .param p6, "lumi"    # I
    .param p7, "pocketState"    # I
    .param p8, "lidState"    # I

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketDumpData;-><init>()V

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mScreenOnTime:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mWakeUpReason:I

    .line 34
    iput p4, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mProx:I

    .line 35
    iput p5, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mLux:I

    .line 36
    iput p6, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mLuminance:I

    .line 37
    iput p7, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mPocketState:I

    .line 38
    iput p8, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mLidState:I

    .line 39
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mScreenOnTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WakeUp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mWakeUpReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Prox : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mProx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Lux : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Luminance : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mLuminance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mPocketState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpRecogInfo;->mLidState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
