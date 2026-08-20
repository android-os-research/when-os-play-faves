.class public Lcom/samsung/android/sume/evaluate/Evaluator$LE;
.super Lcom/samsung/android/sume/evaluate/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/evaluate/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sume/evaluate/Evaluator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 189
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator$LE;, "Lcom/samsung/android/sume/evaluate/Evaluator$LE<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator;-><init>(Landroid/os/Parcel;)V

    .line 190
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator$LE;, "Lcom/samsung/android/sume/evaluate/Evaluator$LE<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/samsung/android/sume/evaluate/Evaluator;-><init>()V

    .line 184
    sget-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->LE:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    iput-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator$LE;->type:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    .line 185
    iput-object p1, p0, Lcom/samsung/android/sume/evaluate/Evaluator$LE;->value:Ljava/lang/Object;

    .line 186
    return-void
.end method


# virtual methods
.method public blacklist evaluate(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 194
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator$LE;, "Lcom/samsung/android/sume/evaluate/Evaluator$LE<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/samsung/android/sume/evaluate/Evaluator$LE;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method
