.class Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrategyParser"
.end annotation


# instance fields
.field private currentIdx:I

.field private final definingCalendar:Ljava/util/Calendar;

.field final synthetic this$0:Lorg/apache/commons/lang3/time/FastDateParser;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;)V
    .registers 3

    .line 200
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->definingCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private letterPattern(C)Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
    .registers 5

    .line 217
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    .line 218
    :cond_2
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    # getter for: Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 219
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    # getter for: Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p1, :cond_2

    .line 224
    :cond_22
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    sub-int/2addr v1, v0

    .line 225
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->definingCalendar:Ljava/util/Calendar;

    # invokes: Lorg/apache/commons/lang3/time/FastDateParser;->getStrategy(CILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    invoke-static {v2, p1, v1, p0}, Lorg/apache/commons/lang3/time/FastDateParser;->access$200(Lorg/apache/commons/lang3/time/FastDateParser;CILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$Strategy;I)V

    return-object v0
.end method

.method private literal()Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
    .registers 7

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 232
    :goto_6
    iget v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    # getter for: Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 233
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    # getter for: Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v1, :cond_29

    .line 234
    # invokes: Lorg/apache/commons/lang3/time/FastDateParser;->isFormatLetter(C)Z
    invoke-static {v2}, Lorg/apache/commons/lang3/time/FastDateParser;->access$100(C)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_5a

    :cond_29
    const/16 v3, 0x27

    if-ne v2, v3, :cond_50

    .line 236
    iget v4, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v5, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    # getter for: Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_4d

    iget-object v4, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    # getter for: Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_50

    :cond_4d
    xor-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 240
    :cond_50
    iget v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5a
    :goto_5a
    if-nez v1, :cond_6f

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 249
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    new-instance v1, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$Strategy;I)V

    return-object v0

    .line 245
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unterminated quote"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method getNextStrategy()Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
    .registers 3

    .line 205
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    # getter for: Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 209
    :cond_10
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->this$0:Lorg/apache/commons/lang3/time/FastDateParser;

    # getter for: Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateParser;->access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    # invokes: Lorg/apache/commons/lang3/time/FastDateParser;->isFormatLetter(C)Z
    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateParser;->access$100(C)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 211
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->letterPattern(C)Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    move-result-object p0

    return-object p0

    .line 213
    :cond_27
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->literal()Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    move-result-object p0

    return-object p0
.end method
