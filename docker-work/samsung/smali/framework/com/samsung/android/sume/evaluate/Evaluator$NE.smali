.class public Lcom/samsung/android/sume/evaluate/Evaluator$NE;
.super Lcom/samsung/android/sume/evaluate/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/evaluate/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NE"
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

    .line 157
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator$NE;, "Lcom/samsung/android/sume/evaluate/Evaluator$NE<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator;-><init>(Landroid/os/Parcel;)V

    .line 158
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator$NE;, "Lcom/samsung/android/sume/evaluate/Evaluator$NE<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/samsung/android/sume/evaluate/Evaluator;-><init>()V

    .line 152
    sget-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->NE:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    iput-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator$NE;->type:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    .line 153
    iput-object p1, p0, Lcom/samsung/android/sume/evaluate/Evaluator$NE;->value:Ljava/lang/Object;

    .line 154
    return-void
.end method


# virtual methods
.method public blacklist evaluate(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 162
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator$NE;, "Lcom/samsung/android/sume/evaluate/Evaluator$NE<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator$NE;->value:Ljava/lang/Object;

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
