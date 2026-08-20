.class Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviousRegistrations"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;
    }
.end annotation


# instance fields
.field mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;",
            ">;"
        }
    .end annotation
.end field

.field mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;


# direct methods
.method constructor <init>()V
    .registers 8

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    .line 1058
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;-><init>(ZILjava/lang/String;J)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    .line 1059
    return-void
.end method


# virtual methods
.method public add(ZILjava/lang/String;J)V
    .registers 14
    .param p1, "isRegister"    # Z
    .param p2, "serviceType"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "currTime"    # J

    .line 1062
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1063
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;-><init>(ZILjava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 6

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    .line 1076
    .local v2, "history":Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;
    iget-boolean v3, v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->isRegister:Z

    if-eqz v3, :cond_21

    .line 1077
    const-string v3, "+ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 1079
    :cond_21
    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    :goto_26
    iget-object v3, v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->currentTimeString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    iget v4, v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->serviceType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1084
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    iget-object v3, v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    .end local v2    # "history":Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;
    goto :goto_b

    .line 1089
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public lastIntentHistory(ZILjava/lang/String;J)V
    .registers 8
    .param p1, "isRegister"    # Z
    .param p2, "serviceType"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "currTime"    # J

    .line 1067
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iput-boolean p1, v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->isRegister:Z

    .line 1068
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iput p2, v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->serviceType:I

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iput-object p3, v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->packageName:Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    invoke-static {v0, p4, p5}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->-$$Nest$mgetFormattedStringFromTime(Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->currentTimeString:Ljava/lang/String;

    .line 1071
    return-void
.end method

.method public miniDump()Ljava/lang/String;
    .registers 4

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1094
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iget-boolean v1, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->isRegister:Z

    if-eqz v1, :cond_e

    const-string v1, "On"

    goto :goto_10

    :cond_e
    const-string v1, "Off"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iget-object v1, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->currentTimeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iget v1, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->serviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->mLastHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;

    iget-object v1, v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations$RegistrationData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
