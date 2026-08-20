.class public Lcom/android/server/display/DlnaController$2;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DlnaController;->sendStatusChangedBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DlnaController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DlnaController;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/display/DlnaController$2;->this$0:Lcom/android/server/display/DlnaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/server/display/DlnaController$2;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v1}, Lcom/android/server/display/DlnaController;->-$$Nest$fgetmDevice(Lcom/android/server/display/DlnaController;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    move-result v1

    const-string/jumbo v2, "status"

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "state"

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/android/server/display/DlnaController$2;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v2}, Lcom/android/server/display/DlnaController;->-$$Nest$fgetmDevice(Lcom/android/server/display/DlnaController;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v2

    const-string/jumbo v3, "player_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendStatusChangedBroadcast::SEM_ACTION_DLNA_STATUS_CHANGED state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DlnaController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/android/server/display/DlnaController$2;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {p0}, Lcom/android/server/display/DlnaController;->-$$Nest$fgetmContext(Lcom/android/server/display/DlnaController;)Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
