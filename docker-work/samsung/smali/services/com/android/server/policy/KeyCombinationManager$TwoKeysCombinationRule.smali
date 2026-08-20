.class public abstract Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCombinationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TwoKeysCombinationRule"
.end annotation


# instance fields
.field public mKeyCode1:I

.field public mKeyCode2:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 87
    iput p2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public cancel(Landroid/view/KeyEvent;Z)V
    .registers 3

    return-void
.end method

.method public abstract execute()V
.end method

.method public getKeyInterceptDelayMs()J
    .registers 3

    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method public preCondition()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public shouldInterceptKey(I)Z
    .registers 3

    .line 95
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    if-eq p1, v0, :cond_e

    iget p0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    if-ne p1, p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public shouldInterceptKeys(Landroid/util/SparseLongArray;)Z
    .registers 8

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 100
    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_34

    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 101
    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_34

    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 102
    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_34

    iget p0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 103
    invoke-virtual {p1, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    add-long/2addr p0, v4

    cmp-long p0, v0, p0

    if-gtz p0, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 124
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
