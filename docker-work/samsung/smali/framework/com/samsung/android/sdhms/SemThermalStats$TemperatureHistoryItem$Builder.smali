.class public final Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;
.super Ljava/lang/Object;
.source "SemThermalStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist skinTemp:I

.field private blacklist updatedTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetskinTemp(Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;->skinTemp:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetupdatedTime(Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;->updatedTime:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;
    .registers 2

    .line 183
    new-instance v0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;-><init>(Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;)V

    return-object v0
.end method

.method public blacklist skinTemperature(I)Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 178
    iput p1, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;->skinTemp:I

    .line 179
    return-object p0
.end method

.method public blacklist updatedTime(J)Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 173
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;->updatedTime:J

    .line 174
    return-object p0
.end method
