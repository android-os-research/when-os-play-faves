.class Lcom/samsung/android/gamesdk/GameSDKManager$1;
.super Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;
.source "GameSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gamesdk/GameSDKManager;->setListener(Lcom/samsung/android/gamesdk/GameSDKManager$Listener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/GameSDKManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/GameSDKManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gamesdk/GameSDKManager;

    .line 270
    iput-object p1, p0, Lcom/samsung/android/gamesdk/GameSDKManager$1;->this$0:Lcom/samsung/android/gamesdk/GameSDKManager;

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHighTempWarning(I)V
    .registers 3
    .param p1, "warningLevel"    # I

    .line 273
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager$1;->this$0:Lcom/samsung/android/gamesdk/GameSDKManager;

    # getter for: Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/GameSDKManager;->access$000(Lcom/samsung/android/gamesdk/GameSDKManager;)Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/gamesdk/GameSDKManager$Listener;->onHighTempWarning(I)V

    .line 274
    return-void
.end method

.method public onRefreshRateChanged()V
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager$1;->this$0:Lcom/samsung/android/gamesdk/GameSDKManager;

    # getter for: Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/GameSDKManager;->access$000(Lcom/samsung/android/gamesdk/GameSDKManager;)Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/gamesdk/GameSDKManager$Listener;->onRefreshRateChanged()V

    .line 278
    return-void
.end method

.method public onReleasedByTimeout()V
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager$1;->this$0:Lcom/samsung/android/gamesdk/GameSDKManager;

    # getter for: Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/GameSDKManager;->access$000(Lcom/samsung/android/gamesdk/GameSDKManager;)Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/gamesdk/GameSDKManager$Listener;->onReleasedByTimeout()V

    .line 282
    return-void
.end method

.method public onReleasedCpuBoost()V
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager$1;->this$0:Lcom/samsung/android/gamesdk/GameSDKManager;

    # getter for: Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/GameSDKManager;->access$000(Lcom/samsung/android/gamesdk/GameSDKManager;)Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/gamesdk/GameSDKManager$Listener;->onReleasedCpuBoost()V

    .line 287
    return-void
.end method

.method public onReleasedGpuBoost()V
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager$1;->this$0:Lcom/samsung/android/gamesdk/GameSDKManager;

    # getter for: Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/GameSDKManager;->access$000(Lcom/samsung/android/gamesdk/GameSDKManager;)Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/gamesdk/GameSDKManager$Listener;->onReleasedGpuBoost()V

    .line 291
    return-void
.end method
