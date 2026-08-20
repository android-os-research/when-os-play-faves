.class Lcom/samsung/android/gamesdk/core/TaskManager$Singleton;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/core/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/samsung/android/gamesdk/core/TaskManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 198
    new-instance v0, Lcom/samsung/android/gamesdk/core/TaskManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gamesdk/core/TaskManager;-><init>(Lcom/samsung/android/gamesdk/core/TaskManager$1;)V

    sput-object v0, Lcom/samsung/android/gamesdk/core/TaskManager$Singleton;->instance:Lcom/samsung/android/gamesdk/core/TaskManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/samsung/android/gamesdk/core/TaskManager;
    .registers 1

    .line 197
    sget-object v0, Lcom/samsung/android/gamesdk/core/TaskManager$Singleton;->instance:Lcom/samsung/android/gamesdk/core/TaskManager;

    return-object v0
.end method
