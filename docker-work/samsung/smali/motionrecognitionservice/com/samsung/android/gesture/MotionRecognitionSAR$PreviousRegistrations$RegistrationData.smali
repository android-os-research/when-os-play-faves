.class Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationData"
.end annotation


# instance fields
.field currentTimeString:Ljava/lang/String;

.field isRegister:Z

.field packageName:Ljava/lang/String;

.field serviceType:I


# direct methods
.method static bridge synthetic -$$Nest$mgetFormattedStringFromTime(Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->getFormattedStringFromTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(ZILjava/lang/String;J)V
    .registers 7
    .param p1, "isRegister"    # Z
    .param p2, "serviceType"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "currentTime"    # J

    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->isRegister:Z

    .line 1110
    iput p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->serviceType:I

    .line 1111
    iput-object p3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->packageName:Ljava/lang/String;

    .line 1112
    invoke-direct {p0, p4, p5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->getFormattedStringFromTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->currentTimeString:Ljava/lang/String;

    .line 1113
    return-void
.end method

.method private getFormattedStringFromTime(J)Ljava/lang/String;
    .registers 8
    .param p1, "milliSeconds"    # J

    .line 1116
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 1117
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1118
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1119
    .local v1, "today":Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1120
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 1122
    .local v3, "month":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
