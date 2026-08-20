.class Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$Singleton;
.super Ljava/lang/Object;
.source "GameSDKJsonData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 304
    new-instance v0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;-><init>(Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$1;)V

    sput-object v0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;
    .registers 1

    .line 303
    sget-object v0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    return-object v0
.end method
