.class Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerReaderForFactoryBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    .line 139
    iput-object p1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$1;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.intent.action.DISPLAY_PMIC_SENSING_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 145
    invoke-static {}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Display Power sensing 15 mode start."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$1;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    iget-object v1, v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$1;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    invoke-static {v2}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->-$$Nest$fgetmDisplayPmicSensingStartRunnable(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$1;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    iget-object v1, v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$1;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    invoke-static {v2}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->-$$Nest$fgetmDisplayPmicSensingStopRunnable(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$1;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    iget-object v1, v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$1;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    invoke-static {v2}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->-$$Nest$fgetmDisplayPmicSensingStartRunnable(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    :cond_3e
    return-void
.end method
