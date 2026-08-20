.class Lorg/junit/ComparisonFailure$ComparisonCompactor;
.super Ljava/lang/Object;
.source "ComparisonFailure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/ComparisonFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparisonCompactor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;
    }
.end annotation


# static fields
.field private static final DIFF_END:Ljava/lang/String; = "]"

.field private static final DIFF_START:Ljava/lang/String; = "["

.field private static final ELLIPSIS:Ljava/lang/String; = "..."


# instance fields
.field private final actual:Ljava/lang/String;

.field private final contextLength:I

.field private final expected:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetactual(Lorg/junit/ComparisonFailure$ComparisonCompactor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->actual:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontextLength(Lorg/junit/ComparisonFailure$ComparisonCompactor;)I
    .registers 1

    iget p0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->contextLength:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetexpected(Lorg/junit/ComparisonFailure$ComparisonCompactor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msharedPrefix(Lorg/junit/ComparisonFailure$ComparisonCompactor;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->sharedPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msharedSuffix(Lorg/junit/ComparisonFailure$ComparisonCompactor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->sharedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "contextLength"    # I
    .param p2, "expected"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->contextLength:I

    .line 91
    iput-object p2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->actual:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private sharedPrefix()Ljava/lang/String;
    .registers 6

    .line 109
    iget-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->actual:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 110
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2c

    .line 111
    iget-object v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->actual:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_29

    .line 112
    iget-object v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 110
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 115
    .end local v1    # "i":I
    :cond_2c
    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private sharedSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "suffixLength":I
    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->actual:Ljava/lang/String;

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 120
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 122
    .local v1, "maxSuffixLength":I
    :goto_1d
    if-gt v0, v1, :cond_3f

    .line 123
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->actual:Ljava/lang/String;

    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_3c

    .line 125
    goto :goto_3f

    .line 122
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 128
    :cond_3f
    :goto_3f
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public compact(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "message"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    if-eqz v0, :cond_54

    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->actual:Ljava/lang/String;

    if-eqz v1, :cond_54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_54

    .line 99
    :cond_f
    new-instance v0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;-><init>(Lorg/junit/ComparisonFailure$ComparisonCompactor;Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor-IA;)V

    .line 100
    .local v0, "extractor":Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;
    invoke-virtual {v0}, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->compactPrefix()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "compactedPrefix":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->compactSuffix()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "compactedSuffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    invoke-virtual {v0}, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->expectedDiff()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    invoke-virtual {v0}, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->actualDiff()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {p1, v3, v4}, Lorg/junit/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 97
    .end local v0    # "extractor":Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;
    .end local v1    # "compactedPrefix":Ljava/lang/String;
    .end local v2    # "compactedSuffix":Ljava/lang/String;
    :cond_54
    :goto_54
    iget-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->expected:Ljava/lang/String;

    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->actual:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/junit/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
