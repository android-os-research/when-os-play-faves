.class public Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;
.super Ljava/lang/Object;
.source "SemTestHalHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/SemTestHalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public biometricId:I

.field public callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

.field public callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public code:I

.field public delay:J

.field public groupId:I

.field public value:I

.field public vendorCode:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V
    .registers 5

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 86
    iput p3, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 77
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 78
    iput p3, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    .line 79
    iput p4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    .line 80
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x3e8

    .line 81
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    return-void
.end method


# virtual methods
.method public getCallbackType()Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    return-object p0
.end method

.method public getCode()I
    .registers 1

    .line 132
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    return p0
.end method

.method public getDelay()J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    return-wide v0
.end method

.method public getValue()I
    .registers 1

    .line 140
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    return p0
.end method

.method public getVendorCode()I
    .registers 1

    .line 136
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    return p0
.end method

.method public isFinishEnroll()Z
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    if-ne v0, v1, :cond_c

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public run()V
    .registers 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTestHalHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$1;->$SwitchMap$com$android$server$biometrics$sensors$SemTestHalHelper$CallbackType:[I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    goto :goto_5f

    .line 109
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->biometricId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->groupId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverEnumerate(III)V

    goto :goto_5f

    .line 106
    :pswitch_34
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverTspEvent(I)V

    goto :goto_5f

    .line 103
    :pswitch_3c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverAuthenticationResult(I)V

    goto :goto_5f

    .line 100
    :pswitch_44
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverEnrollResult(I)V

    goto :goto_5f

    .line 97
    :pswitch_4c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverErrorEvent(II)V

    goto :goto_5f

    .line 94
    :pswitch_56
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverAcquiredEvent(II)V

    :goto_5f
    return-void

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_56
        :pswitch_4c
        :pswitch_44
        :pswitch_3c
        :pswitch_34
        :pswitch_28
    .end packed-switch
.end method

.method public setDelay(J)Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;
    .registers 3

    .line 119
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    return-object p0
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
