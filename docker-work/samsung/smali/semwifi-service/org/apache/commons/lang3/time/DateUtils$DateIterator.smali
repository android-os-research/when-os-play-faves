.class Lorg/apache/commons/lang3/time/DateUtils$DateIterator;
.super Ljava/lang/Object;
.source "DateUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DateIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final endFinal:Ljava/util/Calendar;

.field private final spot:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 3

    .line 1807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1808
    iput-object p2, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    .line 1809
    iput-object p1, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    const/4 p0, 0x5

    const/4 p2, -0x1

    .line 1810
    invoke-virtual {p1, p0, p2}, Ljava/util/Calendar;->add(II)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1820
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object p0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    .line 1796
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->next()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Calendar;
    .registers 4

    .line 1830
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1833
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1834
    iget-object p0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    .line 1831
    :cond_1a
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .registers 1

    .line 1845
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
