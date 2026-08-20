.class Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/core/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskSetRefreshRate"
.end annotation


# instance fields
.field refreshRate:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;->refreshRate:I

    return-void
.end method
