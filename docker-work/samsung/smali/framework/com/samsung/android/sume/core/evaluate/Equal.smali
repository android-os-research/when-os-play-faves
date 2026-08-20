.class public Lcom/samsung/android/sume/core/evaluate/Equal;
.super Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;
.source "Equal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/evaluate/Equal<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/Equal$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/evaluate/Equal$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/evaluate/Equal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 19
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;-><init>(Landroid/os/Parcel;)V

    .line 20
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Comparable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 10
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;-><init>(Ljava/lang/Comparable;)V

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist and(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 2

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->and(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist compareTo(Lcom/samsung/android/sume/core/evaluate/Evaluator;)I
    .registers 2

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->compareTo(Lcom/samsung/android/sume/core/evaluate/Evaluator;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist describeContents()I
    .registers 2

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->describeContents()I

    move-result v0

    return v0
.end method

.method public blacklist evaluate(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)Z"
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/Equal;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/Comparable;
    .registers 2

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getValueType()Ljava/lang/Class;
    .registers 2

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->getValueType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist or(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .registers 2

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->or(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist stream()Ljava/util/stream/Stream;
    .registers 2

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/Equal;, "Lcom/samsung/android/sume/core/evaluate/Equal<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
