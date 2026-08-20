.class Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$Singleton;
.super Ljava/lang/Object;
.source "GameSDKVrrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 593
    new-instance v0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;-><init>(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;)V

    sput-object v0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$Singleton;->instance:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    .registers 1

    .line 592
    sget-object v0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$Singleton;->instance:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    return-object v0
.end method
