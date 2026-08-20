.class public Lcom/android/server/asks/ADPContainer$ADPPolicy;
.super Ljava/lang/Object;
.source "ADPContainer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ADPContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADPPolicy"
.end annotation


# instance fields
.field public format:Ljava/lang/String;

.field public hashCode:Ljava/lang/String;

.field public pattern:Ljava/lang/String;

.field public versionType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    .line 39
    iput-object p4, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 100
    check-cast p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 102
    iget v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const v3, 0x65837583

    if-ne v0, v3, :cond_22

    .line 104
    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    if-nez v0, :cond_10

    return v2

    .line 107
    :cond_10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v1

    :cond_21
    return v2

    .line 113
    :cond_22
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    return v1

    :cond_2f
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 83
    :cond_4
    check-cast p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 85
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1d

    return v0

    .line 91
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public findMatcherByHashCode(Ljava/lang/String;)Z
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 66
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public findMatcherByPattern(Ljava/lang/String;)Z
    .registers 2

    .line 72
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 73
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public generateADPrule(I)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x65837583

    if-ne p1, v1, :cond_11

    .line 54
    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_11
    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    const-string/jumbo v2, "pattern"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "versionType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    const-string/jumbo p1, "hashCode"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    return-object p0
.end method

.method public getHashCode()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    return-object p0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionType()I
    .registers 1

    .line 44
    iget p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    return p0
.end method
