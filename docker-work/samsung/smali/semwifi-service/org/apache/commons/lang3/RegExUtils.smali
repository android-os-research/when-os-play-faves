.class public Lorg/apache/commons/lang3/RegExUtils;
.super Ljava/lang/Object;
.source "RegExUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 107
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/RegExUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeAll(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 61
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/RegExUtils;->replaceAll(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 188
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/RegExUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 143
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/RegExUtils;->replaceFirst(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 219
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/RegExUtils;->replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    if-nez p2, :cond_7

    goto :goto_b

    .line 316
    :cond_7
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_b
    :goto_b
    return-object p0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    if-nez p2, :cond_7

    goto :goto_f

    .line 262
    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_f
    :goto_f
    return-object p0
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    if-nez p2, :cond_7

    goto :goto_b

    .line 411
    :cond_7
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_b
    :goto_b
    return-object p0
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    if-nez p2, :cond_7

    goto :goto_f

    .line 359
    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_f
    :goto_f
    return-object p0
.end method

.method public static replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    if-nez p2, :cond_7

    goto :goto_15

    :cond_7
    const/16 v0, 0x20

    .line 455
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_15
    :goto_15
    return-object p0
.end method
