.class Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviousRegistrations"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;
    }
.end annotation


# instance fields
.field mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    .line 1951
    return-void
.end method


# virtual methods
.method public add(ZILjava/lang/String;J)V
    .registers 14
    .param p1, "isRegister"    # Z
    .param p2, "serviceType"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "currentTime"    # J

    .line 1954
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1955
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;-><init>(ZILjava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1956
    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 6

    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1960
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;

    .line 1961
    .local v2, "history":Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;
    iget-boolean v3, v2, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;->mbRegister:Z

    if-eqz v3, :cond_21

    .line 1962
    const-string v3, "+ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 1964
    :cond_21
    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    :goto_26
    iget-object v3, v2, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;->mCurrTime:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    iget v3, v2, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;->mServiceType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    iget-object v3, v2, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    .end local v2    # "history":Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations$RegistrationsData;
    goto :goto_b

    .line 1971
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
