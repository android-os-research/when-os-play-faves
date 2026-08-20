.class Lcom/samsung/android/game/GameManagerService$1;
.super Landroid/os/Handler;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/game/GameManagerService;

    .line 139
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$1;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 142
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x271c

    if-ne v0, v1, :cond_1d

    .line 145
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$1;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$000(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/gos/IGosSystemService;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 146
    const-string v0, "GameManager"

    const-string v1, "mHandler, msg: MSG_UNBIND_CHECK"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$1;->this$0:Lcom/samsung/android/game/GameManagerService;

    # invokes: Lcom/samsung/android/game/GameManagerService;->unbindService()V
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$100(Lcom/samsung/android/game/GameManagerService;)V

    .line 150
    :cond_1d
    return-void
.end method
