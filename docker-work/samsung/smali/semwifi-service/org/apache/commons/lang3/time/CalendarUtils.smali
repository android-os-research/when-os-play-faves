.class public Lorg/apache/commons/lang3/time/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/time/CalendarUtils;


# instance fields
.field private final calendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lorg/apache/commons/lang3/time/CalendarUtils;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;)V

    sput-object v0, Lorg/apache/commons/lang3/time/CalendarUtils;->INSTANCE:Lorg/apache/commons/lang3/time/CalendarUtils;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "calendar"

    .line 44
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    iput-object p1, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public getDayOfMonth()I
    .registers 2

    .line 53
    iget-object p0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMonth()I
    .registers 2

    .line 62
    iget-object p0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getYear()I
    .registers 2

    .line 71
    iget-object p0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method
