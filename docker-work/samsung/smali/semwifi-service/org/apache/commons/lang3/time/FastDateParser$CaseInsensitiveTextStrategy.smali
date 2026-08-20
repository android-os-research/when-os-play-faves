.class Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaseInsensitiveTextStrategy"
.end annotation


# instance fields
.field private final field:I

.field private final lKeyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(ILjava/util/Calendar;Ljava/util/Locale;)V
    .registers 6

    const/4 v0, 0x0

    .line 698
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 699
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;->field:I

    .line 700
    iput-object p3, p0, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;->locale:Ljava/util/Locale;

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((?iu)"

    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    # invokes: Lorg/apache/commons/lang3/time/FastDateParser;->appendDisplayNames(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;
    invoke-static {p2, p3, p1, v0}, Lorg/apache/commons/lang3/time/FastDateParser;->access$600(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p1, ")"

    .line 706
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->createPattern(Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .registers 5

    .line 715
    iget-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 716
    iget-object p3, p0, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_2a

    .line 719
    iget-object p3, p0, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ljava/lang/Integer;

    .line 721
    :cond_2a
    iget p0, p0, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;->field:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method
