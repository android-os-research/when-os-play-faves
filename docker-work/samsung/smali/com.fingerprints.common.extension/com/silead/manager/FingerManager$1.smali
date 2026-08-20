.class Lcom/silead/manager/FingerManager$1;
.super Lcom/silead/internal/IFingerServiceReceiver$Stub;
.source "FingerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/silead/manager/FingerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/silead/manager/FingerManager;


# direct methods
.method constructor <init>(Lcom/silead/manager/FingerManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/silead/manager/FingerManager;

    .line 478
    iput-object p1, p0, Lcom/silead/manager/FingerManager$1;->this$0:Lcom/silead/manager/FingerManager;

    invoke-direct {p0}, Lcom/silead/internal/IFingerServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTestCmd(I[B)I
    .registers 4
    .param p1, "cmdId"    # I
    .param p2, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/silead/manager/FingerManager$1;->this$0:Lcom/silead/manager/FingerManager;

    invoke-virtual {v0, p1, p2}, Lcom/silead/manager/FingerManager;->onTestCmdResult(I[B)I

    move-result v0

    return v0
.end method
