.class Lorg/junit/runners/RuleContainer$1;
.super Ljava/lang/Object;
.source "RuleContainer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/RuleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/junit/runners/RuleContainer$RuleEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareInt(II)I
    .registers 4
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 48
    if-ge p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_9

    :cond_4
    if-ne p1, p2, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 41
    check-cast p1, Lorg/junit/runners/RuleContainer$RuleEntry;

    check-cast p2, Lorg/junit/runners/RuleContainer$RuleEntry;

    invoke-virtual {p0, p1, p2}, Lorg/junit/runners/RuleContainer$1;->compare(Lorg/junit/runners/RuleContainer$RuleEntry;Lorg/junit/runners/RuleContainer$RuleEntry;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/junit/runners/RuleContainer$RuleEntry;Lorg/junit/runners/RuleContainer$RuleEntry;)I
    .registers 6
    .param p1, "o1"    # Lorg/junit/runners/RuleContainer$RuleEntry;
    .param p2, "o2"    # Lorg/junit/runners/RuleContainer$RuleEntry;

    .line 43
    iget v0, p1, Lorg/junit/runners/RuleContainer$RuleEntry;->order:I

    iget v1, p2, Lorg/junit/runners/RuleContainer$RuleEntry;->order:I

    invoke-direct {p0, v0, v1}, Lorg/junit/runners/RuleContainer$1;->compareInt(II)I

    move-result v0

    .line 44
    .local v0, "result":I
    if-eqz v0, :cond_c

    move v1, v0

    goto :goto_11

    :cond_c
    iget v1, p1, Lorg/junit/runners/RuleContainer$RuleEntry;->type:I

    iget v2, p2, Lorg/junit/runners/RuleContainer$RuleEntry;->type:I

    sub-int/2addr v1, v2

    :goto_11
    return v1
.end method
