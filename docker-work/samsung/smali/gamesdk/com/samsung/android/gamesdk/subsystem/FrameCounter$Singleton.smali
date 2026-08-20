.class Lcom/samsung/android/gamesdk/subsystem/FrameCounter$Singleton;
.super Ljava/lang/Object;
.source "FrameCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/samsung/android/gamesdk/subsystem/FrameCounter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 204
    new-instance v0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;-><init>(Lcom/samsung/android/gamesdk/subsystem/FrameCounter$1;)V

    sput-object v0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
    .registers 1

    .line 203
    sget-object v0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    return-object v0
.end method
