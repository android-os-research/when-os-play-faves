.class Lcom/samsung/android/gamesdk/frequency/FrequencyManager$Singleton;
.super Ljava/lang/Object;
.source "FrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/samsung/android/gamesdk/frequency/FrequencyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 183
    new-instance v0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;-><init>(Lcom/samsung/android/gamesdk/frequency/FrequencyManager$1;)V

    sput-object v0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager$Singleton;->instance:Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    .registers 1

    .line 182
    sget-object v0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager$Singleton;->instance:Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    return-object v0
.end method
