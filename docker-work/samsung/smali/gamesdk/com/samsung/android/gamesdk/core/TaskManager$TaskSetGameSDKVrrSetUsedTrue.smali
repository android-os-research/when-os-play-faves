.class Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/core/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskSetGameSDKVrrSetUsedTrue"
.end annotation


# instance fields
.field isUsed:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;->isUsed:Z

    return-void
.end method
