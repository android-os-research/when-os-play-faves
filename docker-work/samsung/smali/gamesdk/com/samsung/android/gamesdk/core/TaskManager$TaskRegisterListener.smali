.class Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/core/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskRegisterListener"
.end annotation


# instance fields
.field listener:Lcom/samsung/android/gamesdk/IGameSDKListener;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;->listener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    return-void
.end method
