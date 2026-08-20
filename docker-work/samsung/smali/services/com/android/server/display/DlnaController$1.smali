.class public Lcom/android/server/display/DlnaController$1;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DlnaController;->sendDisconnectionRequestBroadcast()V
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

    .line 78
    iput-object p1, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "DlnaController"

    const-string/jumbo v1, "sendDisconnectionRequestBroadcast::DLNA_DISCONNECTION_REQUEST"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v1}, Lcom/android/server/display/DlnaController;->-$$Nest$fgetmDevice(Lcom/android/server/display/DlnaController;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object p0, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {p0}, Lcom/android/server/display/DlnaController;->-$$Nest$fgetmContext(Lcom/android/server/display/DlnaController;)Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
