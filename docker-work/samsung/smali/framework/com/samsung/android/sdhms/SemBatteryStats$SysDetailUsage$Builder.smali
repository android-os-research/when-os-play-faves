.class public final Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist drainType:I

.field private blacklist power:D

.field private blacklist usedTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdrainType(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->drainType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpower(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->power:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetusedTime(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->usedTime:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;
    .registers 2

    .line 1040
    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;-><init>(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)V

    return-object v0
.end method

.method public blacklist drainType(I)Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 1025
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->drainType:I

    .line 1026
    return-object p0
.end method

.method public blacklist power(D)Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # D

    .line 1030
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->power:D

    .line 1031
    return-object p0
.end method

.method public blacklist usedTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 1035
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->usedTime:J

    .line 1036
    return-object p0
.end method
