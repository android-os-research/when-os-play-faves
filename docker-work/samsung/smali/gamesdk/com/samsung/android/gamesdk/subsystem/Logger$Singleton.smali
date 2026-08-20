.class Lcom/samsung/android/gamesdk/subsystem/Logger$Singleton;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/subsystem/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/samsung/android/gamesdk/subsystem/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Lcom/samsung/android/gamesdk/subsystem/Logger;

    invoke-direct {v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;-><init>()V

    sput-object v0, Lcom/samsung/android/gamesdk/subsystem/Logger$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/gamesdk/subsystem/Logger;
    .registers 1

    .line 99
    sget-object v0, Lcom/samsung/android/gamesdk/subsystem/Logger$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/Logger;

    return-object v0
.end method
