.class public final Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
.super Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
.source "AppBatteryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppBatteryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImmutableBatteryUsage"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1116
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .registers 11

    .line 1121
    invoke-direct/range {p0 .. p10}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(Landroid/os/UidBatteryConsumer;Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V
    .registers 3

    .line 1138
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Landroid/os/UidBatteryConsumer;Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .registers 2

    .line 1133
    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V
    .registers 4

    .line 1129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V

    return-void
.end method

.method public constructor <init>([D)V
    .registers 2

    .line 1125
    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>([D)V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 2

    .line 1148
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 2

    .line 1167
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    return-object v0
.end method

.method public scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 3

    .line 1158
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPercentage([D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 2

    .line 1163
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTo(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 2

    .line 1143
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 2

    .line 1153
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
