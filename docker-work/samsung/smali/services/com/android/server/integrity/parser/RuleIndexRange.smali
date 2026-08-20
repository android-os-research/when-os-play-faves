.class public Lcom/android/server/integrity/parser/RuleIndexRange;
.super Ljava/lang/Object;
.source "RuleIndexRange.java"


# instance fields
.field public mEndIndex:I

.field public mStartIndex:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    .line 32
    iput p2, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 47
    iget v0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    check-cast p1, Lcom/android/server/integrity/parser/RuleIndexRange;

    invoke-virtual {p1}, Lcom/android/server/integrity/parser/RuleIndexRange;->getStartIndex()I

    move-result v1

    if-ne v0, v1, :cond_14

    iget p0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    .line 48
    invoke-virtual {p1}, Lcom/android/server/integrity/parser/RuleIndexRange;->getEndIndex()I

    move-result p1

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public getEndIndex()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    return p0
.end method

.method public getStartIndex()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    iget v1, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "Range{%d, %d}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
