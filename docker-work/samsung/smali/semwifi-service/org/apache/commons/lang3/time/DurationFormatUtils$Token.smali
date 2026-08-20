.class Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/DurationFormatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private count:I

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 602
    iput p1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    .line 614
    iput p2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return-void
.end method

.method static containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z
    .registers 6

    .line 584
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 585
    invoke-virtual {v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 650
    instance-of v0, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 651
    check-cast p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    .line 652
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_16

    return v1

    .line 655
    :cond_16
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    iget v2, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    if-eq v0, v2, :cond_1d

    return v1

    .line 658
    :cond_1d
    iget-object p0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_32

    .line 659
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 660
    :cond_32
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3d

    .line 661
    iget-object p1, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 663
    :cond_3d
    iget-object p1, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    if-ne p0, p1, :cond_42

    const/4 v1, 0x1

    :cond_42
    return v1
.end method

.method getCount()I
    .registers 1

    .line 630
    iget p0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return p0
.end method

.method getValue()Ljava/lang/Object;
    .registers 1

    .line 639
    iget-object p0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 678
    iget-object p0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method increment()V
    .registers 2

    .line 621
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 688
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
