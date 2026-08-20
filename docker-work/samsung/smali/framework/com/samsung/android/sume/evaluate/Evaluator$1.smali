.class Lcom/samsung/android/sume/evaluate/Evaluator$1;
.super Ljava/lang/Object;
.source "Evaluator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/evaluate/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sume/evaluate/Evaluator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sume/evaluate/Evaluator;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    sget-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$2;->$SwitchMap$com$samsung$android$sume$evaluate$Evaluator$EvaluateType:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not supported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_1b
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$Any;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$Any;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 82
    :pswitch_21
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$Except;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$Except;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 80
    :pswitch_27
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$GE;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$GE;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 79
    :pswitch_2d
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$GT;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$GT;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 78
    :pswitch_33
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$LE;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$LE;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 77
    :pswitch_39
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$LT;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$LT;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 76
    :pswitch_3f
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$NE;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$NE;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 75
    :pswitch_45
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$EQ;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$EQ;-><init>(Landroid/os/Parcel;)V

    return-object v0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_1b
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sume/evaluate/Evaluator;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/sume/evaluate/Evaluator;
    .registers 3
    .param p1, "size"    # I

    .line 89
    new-array v0, p1, [Lcom/samsung/android/sume/evaluate/Evaluator;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$1;->newArray(I)[Lcom/samsung/android/sume/evaluate/Evaluator;

    move-result-object p1

    return-object p1
.end method
