.class Lcom/android/server/ssrm/CustomFrequencyManagerService$3;
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

    .line 700
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 703
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    .line 705
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 706
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitScrollBooster(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 707
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitPerfettoLogging(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 708
    new-instance v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;-><init>(Landroid/content/Context;)V

    goto :goto_60

    .line 709
    :cond_23
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 710
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_5c

    .line 712
    :cond_34
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 713
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_52

    .line 716
    :cond_45
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 717
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    goto :goto_60

    .line 714
    :cond_52
    :goto_52
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 715
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    goto :goto_60

    .line 711
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$3;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 719
    :cond_60
    :goto_60
    return-void
.end method
