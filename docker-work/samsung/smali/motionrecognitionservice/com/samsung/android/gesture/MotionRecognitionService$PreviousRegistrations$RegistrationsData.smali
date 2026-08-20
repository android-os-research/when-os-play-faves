.class Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationsData"
.end annotation


# instance fields
.field mCurrTime:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mServiceType:I

.field mbRegister:Z


# direct methods
.method constructor <init>(ZILjava/lang/String;J)V
    .registers 7
    .param p1, "bRegister"    # Z
    .param p2, "serviceType"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "currTime"    # J

    .line 1980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1981
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;->mbRegister:Z

    .line 1982
    iput p2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;->mServiceType:I

    .line 1983
    iput-object p3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;->mPackageName:Ljava/lang/String;

    .line 1984
    invoke-direct {p0, p4, p5}, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;->convertCurrentTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;->mCurrTime:Ljava/lang/String;

    .line 1985
    return-void
.end method

.method private convertCurrentTime(J)Ljava/lang/String;
    .registers 8
    .param p1, "milliSeconds"    # J

    .line 1988
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 1989
    const-string v0, ""

    return-object v0

    .line 1991
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1992
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1993
    .local v1, "today":Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1994
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 1996
    .local v3, "month":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2002
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
