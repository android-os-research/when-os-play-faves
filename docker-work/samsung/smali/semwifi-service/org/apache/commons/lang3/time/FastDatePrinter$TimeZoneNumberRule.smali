.class Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneNumberRule"
.end annotation


# static fields
.field static final INSTANCE_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

.field static final INSTANCE_NO_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;


# instance fields
.field final mColon:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1385
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    .line 1386
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    iput-boolean p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->mColon:Z

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 1413
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr v0, p2

    if-gez v0, :cond_16

    const/16 p2, 0x2d

    .line 1416
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    neg-int v0, v0

    goto :goto_1b

    :cond_16
    const/16 p2, 0x2b

    .line 1419
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1b
    const p2, 0x36ee80

    .line 1422
    div-int p2, v0, p2

    .line 1423
    # invokes: Lorg/apache/commons/lang3/time/FastDatePrinter;->appendDigits(Ljava/lang/Appendable;I)V
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    .line 1425
    iget-boolean p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->mColon:Z

    if-eqz p0, :cond_2c

    const/16 p0, 0x3a

    .line 1426
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_2c
    const p0, 0xea60

    .line 1429
    div-int/2addr v0, p0

    mul-int/lit8 p2, p2, 0x3c

    sub-int/2addr v0, p2

    .line 1430
    # invokes: Lorg/apache/commons/lang3/time/FastDatePrinter;->appendDigits(Ljava/lang/Appendable;I)V
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public estimateLength()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method
