.class public Lcom/android/internal/telephony/uicc/SimLockInfoResult;
.super Ljava/lang/Object;
.source "SimLockInfoResult.java"


# static fields
.field public static final blacklist PIN:I = 0x1

.field public static final blacklist PIN2:I = 0x3

.field public static final blacklist PUK:I = 0x2

.field public static final blacklist PUK2:I = 0x4


# instance fields
.field blacklist Pin2_Retry:I

.field blacklist Pin_Retry:I

.field blacklist Puk2_Retry:I

.field blacklist Puk_Retry:I

.field blacklist lockKey:I

.field blacklist lockPin2Key:I

.field blacklist lockPinKey:I

.field blacklist lockType:I

.field blacklist numRetry:I

.field blacklist num_lock_type:I


# direct methods
.method public constructor blacklist <init>(IIII)V
    .registers 8

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    .line 35
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    .line 37
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    .line 38
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    .line 41
    iput p1, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->num_lock_type:I

    .line 42
    iput p2, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    .line 43
    iput p3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    .line 44
    iput p4, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", lockType:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", lock_key:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", numRetry:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SimLockInfoResult"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    if-ne p2, p1, :cond_4e

    .line 48
    iput p4, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    goto/16 :goto_f4

    :cond_4e
    packed-switch p3, :pswitch_data_f6

    goto/16 :goto_f4

    :pswitch_53
    const/4 p1, 0x3

    if-ne p2, p1, :cond_5d

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    .line 68
    iput p3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    goto :goto_67

    :cond_5d
    const/16 p1, 0x9

    if-ne p2, p1, :cond_67

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    .line 72
    iput p3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    :cond_67
    :goto_67
    const-string p0, "Permernet blocked"

    .line 74
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f4

    .line 91
    :pswitch_6e
    iput p4, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    .line 92
    iput p3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PUK2 numRetry: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 85
    :pswitch_89
    iput p4, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    .line 86
    iput p3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PIN2 numRetry: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 78
    :pswitch_a4
    iput p4, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    .line 79
    iput p3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PUK numRetry: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 58
    :pswitch_bf
    iput p4, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    .line 59
    iput p3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PIN numRetry: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 52
    :pswitch_da
    iput p4, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    .line 53
    iput p3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NOT_NEED numRetry: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f4
    return-void

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_da
        :pswitch_bf
        :pswitch_a4
        :pswitch_89
        :pswitch_6e
        :pswitch_53
        :pswitch_89
    .end packed-switch
.end method


# virtual methods
.method public blacklist getLockPin2Key()I
    .registers 1

    .line 199
    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    return p0
.end method

.method public blacklist getLockPinKey()I
    .registers 1

    .line 195
    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    return p0
.end method

.method public blacklist getNumRetry()I
    .registers 1

    .line 219
    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    return p0
.end method

.method public blacklist getPin2Retry()I
    .registers 1

    .line 207
    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    return p0
.end method

.method public blacklist getPinRetry()I
    .registers 1

    .line 203
    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    return p0
.end method

.method public blacklist getPuk2Retry()I
    .registers 1

    .line 215
    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    return p0
.end method

.method public blacklist getPukRetry()I
    .registers 1

    .line 211
    iget p0, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    return p0
.end method

.method public blacklist setLockInfoResult(IIII)V
    .registers 12

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 165
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->setLockInfoResult(IIIIII)V

    return-void
.end method

.method public blacklist setLockInfoResult(IIIIII)V
    .registers 9

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pin_Retry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Puk_Retry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Pin2_Retry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Puk2_Retry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lockKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lockKey2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLockInfoResult"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_43

    .line 172
    iput p1, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    :cond_43
    if-eq p2, v0, :cond_47

    .line 176
    iput p2, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    :cond_47
    if-eq p3, v0, :cond_4b

    .line 180
    iput p3, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    :cond_4b
    if-eq p4, v0, :cond_4f

    .line 184
    iput p4, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    :cond_4f
    if-eq p5, v0, :cond_53

    .line 187
    iput p5, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPinKey:I

    :cond_53
    if-eq p6, v0, :cond_57

    .line 190
    iput p6, p0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockPin2Key:I

    :cond_57
    return-void
.end method
