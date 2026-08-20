.class final enum Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;
.super Ljava/lang/Enum;
.source "ThermalGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Vendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

.field public static final enum ADRENO:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

.field public static final enum OTHER:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 14
    new-instance v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    const-string v1, "ADRENO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->ADRENO:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    new-instance v1, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    const-string v3, "OTHER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->OTHER:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    .line 13
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->$VALUES:[Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;
    .registers 1

    .line 13
    sget-object v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->$VALUES:[Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    invoke-virtual {v0}, [Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    return-object v0
.end method
