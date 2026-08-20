.class Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    }
.end annotation


# static fields
.field private static final GMT_OPTION:Ljava/lang/String; = "GMT[+-]\\d{1,2}:\\d{2}"

.field private static final ID:I = 0x0

.field private static final RFC_822_TIME_ZONE:Ljava/lang/String; = "[+-]\\d{4}"


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final tzNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .registers 16

    const/4 v0, 0x0

    .line 839
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 818
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    .line 840
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}"

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    new-instance v1, Ljava/util/TreeSet;

    # getter for: Lorg/apache/commons/lang3/time/FastDateParser;->LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;
    invoke-static {}, Lorg/apache/commons/lang3/time/FastDateParser;->access$800()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 847
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v2

    .line 848
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_2b
    if-ge v5, v3, :cond_70

    aget-object v6, v2, v5

    .line 850
    aget-object v7, v6, v4

    const-string v8, "GMT"

    .line 851
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3a

    goto :goto_6d

    .line 854
    :cond_3a
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 857
    new-instance v8, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    invoke-direct {v8, v7, v4}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    const/4 v9, 0x1

    move-object v11, v8

    move v10, v9

    .line 859
    :goto_46
    array-length v12, v6

    if-ge v10, v12, :cond_6d

    const/4 v12, 0x3

    if-eq v10, v12, :cond_52

    const/4 v12, 0x5

    if-eq v10, v12, :cond_50

    goto :goto_57

    :cond_50
    move-object v11, v8

    goto :goto_57

    .line 863
    :cond_52
    new-instance v11, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    invoke-direct {v11, v7, v9}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    .line 871
    :goto_57
    aget-object v12, v6, v10

    if-eqz v12, :cond_6a

    .line 872
    invoke-virtual {v12, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 875
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6a

    .line 876
    iget-object v13, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-interface {v13, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    add-int/lit8 v10, v10, 0x1

    goto :goto_46

    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 883
    :cond_70
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x7c

    .line 884
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    # invokes: Lorg/apache/commons/lang3/time/FastDateParser;->simpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser;->access$900(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_89
    const-string p1, ")"

    .line 886
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->createPattern(Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .registers 4

    .line 895
    invoke-static {p3}, Lorg/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 897
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_46

    .line 899
    :cond_a
    iget-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 900
    iget-object p3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    if-nez p3, :cond_34

    .line 903
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    :cond_34
    const/16 p0, 0x10

    .line 905
    iget p1, p3, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->dstOffset:I

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xf

    .line 906
    iget-object p1, p3, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->zone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->set(II)V

    :goto_46
    return-void
.end method
