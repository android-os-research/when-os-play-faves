.class Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$Singleton;
.super Ljava/lang/Object;
.source "CoreUsageChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 373
    new-instance v0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;-><init>(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;)V

    sput-object v0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;
    .registers 1

    .line 372
    sget-object v0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    return-object v0
.end method
