.class synthetic Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$2;
.super Ljava/lang/Object;
.source "ThermalGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$gamesdk$thermal$ThermalGatherer$Vendor:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->values()[Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$2;->$SwitchMap$com$samsung$android$gamesdk$thermal$ThermalGatherer$Vendor:[I

    :try_start_9
    sget-object v1, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->ADRENO:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$2;->$SwitchMap$com$samsung$android$gamesdk$thermal$ThermalGatherer$Vendor:[I

    sget-object v1, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->OTHER:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    return-void
.end method
