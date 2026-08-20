.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalTime"
.end annotation


# instance fields
.field public final hourOfDay:I

.field public final minute:I


# direct methods
.method public static bridge synthetic -$$Nest$smvalueOf(II)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->valueOf(II)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2b

    const/16 v0, 0x17

    if-gt p1, v0, :cond_2b

    if-ltz p2, :cond_14

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_14

    .line 865
    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->hourOfDay:I

    .line 866
    iput p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->minute:I

    return-void

    .line 862
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid minute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 860
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid hourOfDay: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(I)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;
    .registers 3

    const v0, 0x36ee80

    .line 876
    div-int v0, p0, v0

    rem-int/lit8 v0, v0, 0x18

    const v1, 0xea60

    .line 877
    div-int/2addr p0, v1

    rem-int/lit8 p0, p0, 0x3c

    .line 878
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    invoke-direct {v1, v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;-><init>(II)V

    return-object v1
.end method

.method public static valueOf(II)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;
    .registers 3

    .line 884
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 6

    .line 920
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 921
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x6

    .line 922
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 924
    iget v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->hourOfDay:I

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 925
    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 v2, 0x0

    .line 926
    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 927
    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->set(II)V

    .line 930
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 p0, 0x5

    .line 931
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    :cond_37
    return-object v0
.end method

.method public getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 5

    .line 895
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 896
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x6

    .line 897
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 899
    iget v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->hourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 900
    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->minute:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 v1, 0x0

    .line 901
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 902
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 905
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x5

    const/4 p1, -0x1

    .line 906
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_38
    return-object v0
.end method

.method public final toMillis()I
    .registers 3

    .line 941
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->hourOfDay:I

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->minute:I

    const v1, 0xea60

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 946
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->hourOfDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->minute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%02d:%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
