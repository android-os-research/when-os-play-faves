.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
.super Ljava/lang/Object;
.source "SleepModePolicyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sleepmode/SleepModePolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalTime"
.end annotation


# instance fields
.field public final hourOfDay:I

.field public final minute:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2b

    const/16 v0, 0x17

    if-gt p1, v0, :cond_2b

    if-ltz p2, :cond_14

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_14

    .line 767
    iput p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    .line 768
    iput p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    return-void

    .line 764
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

    .line 762
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

.method public static valueOf(II)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
    .registers 3

    .line 774
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;-><init>(II)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
    .registers 6

    const-wide/16 v0, 0x3c

    .line 784
    div-long v2, p0, v0

    long-to-int v2, v2

    .line 785
    rem-long/2addr p0, v0

    long-to-int p0, p0

    .line 786
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-direct {p1, v2, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;-><init>(II)V

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 855
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 858
    :cond_12
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 859
    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    iget v3, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 862
    :cond_1b
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    iget p1, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    if-eq p0, p1, :cond_22

    return v1

    :cond_22
    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;
    .registers 6

    .line 822
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 823
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x6

    if-eqz p2, :cond_18

    .line 825
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1f

    .line 827
    :cond_18
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    :goto_1f
    const/16 p2, 0xb

    .line 830
    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    invoke-virtual {v0, p2, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 831
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    invoke-virtual {v0, p2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p2, 0x0

    .line 832
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 833
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    .line 836
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 p0, 0x5

    .line 837
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    :cond_42
    return-object v0
.end method

.method public getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 5

    .line 797
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 798
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x6

    .line 799
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 801
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 802
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 v1, 0x0

    .line 803
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 804
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 807
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x5

    const/4 p1, -0x1

    .line 808
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_38
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 872
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 873
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toMillis()I
    .registers 3

    .line 847
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    const v1, 0xea60

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 879
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%02d:%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
