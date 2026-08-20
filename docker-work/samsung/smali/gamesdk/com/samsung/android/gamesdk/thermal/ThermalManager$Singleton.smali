.class Lcom/samsung/android/gamesdk/thermal/ThermalManager$Singleton;
.super Ljava/lang/Object;
.source "ThermalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/samsung/android/gamesdk/thermal/ThermalManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 191
    new-instance v0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalManager$1;)V

    sput-object v0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$Singleton;->instance:Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .registers 1

    .line 190
    sget-object v0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$Singleton;->instance:Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    return-object v0
.end method
