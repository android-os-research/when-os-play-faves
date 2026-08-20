.class Lcom/android/server/ssrm/CustomFrequencyManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 809
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$5;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 812
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 814
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$5;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitScrollBooster(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 815
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$5;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitPerfettoLogging(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 817
    :cond_16
    return-void
.end method
