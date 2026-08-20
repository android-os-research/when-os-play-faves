.class public Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
.super Ljava/lang/Object;
.source "AppBatteryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppBatteryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryUsage"
.end annotation


# static fields
.field public static final BATTERY_USAGE_COUNT:I = 0x5

.field public static final BATTERY_USAGE_INDEX_BACKGROUND:I = 0x2

.field public static final BATTERY_USAGE_INDEX_CACHED:I = 0x4

.field public static final BATTERY_USAGE_INDEX_FOREGROUND:I = 0x1

.field public static final BATTERY_USAGE_INDEX_FOREGROUND_SERVICE:I = 0x3

.field public static final BATTERY_USAGE_INDEX_UNSPECIFIED:I

.field public static final BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;


# instance fields
.field public mPercentage:[D

.field public mUsage:[D


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/os/BatteryConsumer$Dimensions;

    .line 911
    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    .line 928
    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .registers 13

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    const/4 p1, 0x2

    aput-wide p5, v0, p1

    const/4 p1, 0x3

    aput-wide p7, v0, p1

    const/4 p1, 0x4

    aput-wide p9, v0, p1

    .line 933
    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    return-void
.end method

.method public constructor <init>(Landroid/os/UidBatteryConsumer;Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V
    .registers 7

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iget-object p2, p2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    const/4 v0, 0x5

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 952
    aget-object v2, p2, v1

    .line 953
    invoke-static {p1, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getConsumedPowerNoThrow(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p2, v1

    .line 954
    invoke-static {p1, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getConsumedPowerNoThrow(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p2, v1

    .line 955
    invoke-static {p1, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getConsumedPowerNoThrow(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aget-object v2, p2, v1

    .line 956
    invoke-static {p1, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getConsumedPowerNoThrow(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    aget-object p2, p2, v1

    .line 957
    invoke-static {p1, p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getConsumedPowerNoThrow(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide p1

    aput-wide p1, v0, v1

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .registers 3

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iget-object v0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->setToInternal(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V
    .registers 4

    .line 941
    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 942
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scaleInternal(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    return-void
.end method

.method public constructor <init>([D)V
    .registers 2

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    return-void
.end method

.method public static formatBatteryUsage([D)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1087
    aget-wide v2, p0, v1

    .line 1088
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-wide v2, p0, v1

    .line 1089
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-wide v2, p0, v1

    .line 1090
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aget-wide v2, p0, v1

    .line 1091
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aget-wide v2, p0, v1

    .line 1092
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%.3f %.3f %.3f %.3f %.3f mAh"

    .line 1087
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatBatteryUsagePercentage([D)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1096
    aget-wide v2, p0, v1

    .line 1097
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-wide v2, p0, v1

    .line 1098
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-wide v2, p0, v1

    .line 1099
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aget-wide v2, p0, v1

    .line 1100
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aget-wide v2, p0, v1

    .line 1101
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%4.2f%% %4.2f%% %4.2f%% %4.2f%% %4.2f%%"

    .line 1096
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConsumedPowerNoThrow(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D
    .registers 2

    .line 1107
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method public add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 9

    const/4 v0, 0x0

    .line 977
    :goto_1
    iget-object v1, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 978
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    aget-wide v3, v2, v0

    aget-wide v5, v1, v0

    add-double/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-object p0
.end method

.method public calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 5

    .line 1006
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    if-eqz v0, :cond_a

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v1, v1

    if-eq v0, v1, :cond_11

    .line 1007
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 1009
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->calcPercentage(I[D[D)[D

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1068
    :cond_4
    check-cast p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move v1, v0

    .line 1069
    :goto_7
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1c

    .line 1070
    aget-wide v2, v2, v1

    iget-object v4, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    aget-wide v4, v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public getPercentage()[D
    .registers 1

    .line 1019
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    return-object p0
.end method

.method public getUsagePowerMah(I)D
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1040
    :cond_f
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    aget-wide p0, p0, v0

    return-wide p0

    .line 1038
    :cond_14
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    aget-wide p0, p0, v0

    return-wide p0

    .line 1036
    :cond_19
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    aget-wide p0, p0, v0

    return-wide p0

    .line 1034
    :cond_1e
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    aget-wide p0, p0, v0

    return-wide p0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 1080
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v3, v2

    if-ge v0, v3, :cond_13

    .line 1081
    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return v1
.end method

.method public isEmpty()Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 1055
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v3, v2

    if-ge v1, v3, :cond_13

    .line 1056
    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public isValid()Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 1046
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v3, v2

    if-ge v1, v3, :cond_13

    .line 1047
    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public percentageToString()Ljava/lang/String;
    .registers 1

    .line 1023
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    invoke-static {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->formatBatteryUsagePercentage([D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 3

    .line 991
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scaleInternal(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object p0

    return-object p0
.end method

.method public final scaleInternal(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 7

    const/4 v0, 0x0

    .line 995
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 996
    aget-wide v2, v1, v0

    mul-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-object p0
.end method

.method public setPercentage([D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 2

    .line 1014
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    return-object p0
.end method

.method public setTo(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 2

    .line 962
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->setToInternal(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object p0

    return-object p0
.end method

.method public final setToInternal(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 6

    .line 966
    iget-object v0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 967
    iget-object v0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    if-eqz v0, :cond_19

    .line 968
    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 969
    iget-object p1, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c

    :cond_19
    const/4 p1, 0x0

    .line 971
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    :goto_1c
    return-object p0
.end method

.method public subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 11

    const/4 v0, 0x0

    .line 984
    :goto_1
    iget-object v1, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 985
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    const-wide/16 v3, 0x0

    aget-wide v5, v2, v0

    aget-wide v7, v1, v0

    sub-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 1028
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    invoke-static {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->formatBatteryUsage([D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .registers 2

    .line 1002
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    return-object v0
.end method
