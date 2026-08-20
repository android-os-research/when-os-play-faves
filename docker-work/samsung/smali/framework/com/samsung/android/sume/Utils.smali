.class public Lcom/samsung/android/sume/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/Utils$Labelable;,
        Lcom/samsung/android/sume/Utils$StrongReference;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist check(Z)V
    .registers 3
    .param p0, "condition"    # Z

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static varargs blacklist check(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "condition"    # Z
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 65
    if-eqz p0, :cond_3

    .line 66
    return-void

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p0, "fmt"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    array-length v0, p1

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/samsung/android/sume/Utils$Labelable;

    if-nez v1, :cond_e

    goto :goto_58

    .line 57
    :cond_e
    array-length v1, p1

    const-string v2, "]"

    const-string v3, "["

    const/4 v4, 0x1

    if-ne v1, v4, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    sub-int/2addr v1, v4

    invoke-static {p1, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_58
    :goto_58
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist isNumeric(Ljava/lang/String;)Z
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 47
    const-string v0, "-?\\d+(\\.\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static blacklist match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 3
    .param p0, "regx"    # Ljava/util/regex/Pattern;
    .param p1, "str"    # Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method static blacklist require(Z)V
    .registers 3
    .param p0, "condition"    # Z

    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/samsung/android/sume/Utils;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public static varargs blacklist require(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "condition"    # Z
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 72
    if-eqz p0, :cond_3

    .line 73
    return-void

    .line 72
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
