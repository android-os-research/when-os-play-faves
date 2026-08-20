.class Lcom/samsung/android/gamesdk/core/TaskManager$Task;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/core/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field taskRegisterListener:Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;

.field taskSetCpuBoost:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetCpuBoost;

.field taskSetGameSDKVrrSetUsedTrue:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;

.field taskSetGpuBoost:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGpuBoost;

.field taskSetRefreshRate:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskRegisterListener:Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetRefreshRate:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetGameSDKVrrSetUsedTrue:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetCpuBoost:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetCpuBoost;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetGpuBoost:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGpuBoost;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/core/TaskManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/core/TaskManager$1;

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/core/TaskManager$Task;-><init>()V

    return-void
.end method
