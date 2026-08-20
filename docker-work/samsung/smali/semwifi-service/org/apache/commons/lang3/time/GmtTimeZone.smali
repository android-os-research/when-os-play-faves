.class Lorg/apache/commons/lang3/time/GmtTimeZone;
.super Ljava/util/TimeZone;
.source "GmtTimeZone.java"


# static fields
.field private static final HOURS_PER_DAY:I = 0x18

.field private static final MILLISECONDS_PER_MINUTE:I = 0xea60

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final offset:I

.field private final zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(ZII)V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    const/16 v0, 0x18

    if-ge p2, v0, :cond_58

    const/16 v0, 0x3c

    if-ge p3, v0, :cond_41

    mul-int/lit8 v0, p2, 0x3c

    add-int/2addr v0, p3

    const v1, 0xea60

    mul-int/2addr v0, v1

    if-eqz p1, :cond_15

    neg-int v0, v0

    .line 47
    :cond_15
    iput v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GMT"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_28

    const/16 p1, 0x2d

    goto :goto_2a

    :cond_28
    const/16 p1, 0x2b

    :goto_2a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/time/GmtTimeZone;->twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x3a

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {p1, p3}, Lorg/apache/commons/lang3/time/GmtTimeZone;->twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    return-void

    .line 44
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " minutes out of range"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " hours out of range"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .registers 3

    .line 55
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 100
    instance-of v0, p1, Lorg/apache/commons/lang3/time/GmtTimeZone;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 103
    :cond_6
    iget-object p0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/lang3/time/GmtTimeZone;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    if-ne p0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public getID()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset(IIIIII)I
    .registers 7

    .line 60
    iget p0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return p0
.end method

.method public getRawOffset()I
    .registers 1

    .line 70
    iget p0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 95
    iget p0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return p0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setRawOffset(I)V
    .registers 2

    .line 65
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GmtTimeZone id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useDaylightTime()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
