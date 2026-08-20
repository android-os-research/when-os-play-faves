.class Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Singleton;
.super Ljava/lang/Object;
.source "ThermalGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 208
    new-instance v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$1;)V

    sput-object v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Singleton;->instance:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
    .registers 1

    .line 207
    sget-object v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Singleton;->instance:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    return-object v0
.end method
