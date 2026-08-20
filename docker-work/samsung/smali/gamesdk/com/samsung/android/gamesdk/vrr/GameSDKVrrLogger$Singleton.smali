.class Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger$Singleton;
.super Ljava/lang/Object;
.source "GameSDKVrrLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;

    invoke-direct {v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;-><init>()V

    sput-object v0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger$Singleton;->instance:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;
    .registers 1

    .line 7
    sget-object v0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger$Singleton;->instance:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;

    return-object v0
.end method
