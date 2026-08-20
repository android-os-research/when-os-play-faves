.class Lcom/samsung/audio/SmpsManager$SMPSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/audio/SmpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMPSReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/audio/SmpsManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/audio/SmpsManager;)V
    .registers 2

    .line 631
    iput-object p1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/audio/SmpsManager;Lcom/samsung/audio/SmpsManager$SMPSReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager$SMPSReceiver;-><init>(Lcom/samsung/audio/SmpsManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 634
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 636
    const/4 v1, 0x0

    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 637
    .local v1, "state":I
    packed-switch v1, :pswitch_data_62

    goto :goto_25

    .line 642
    :pswitch_17
    iget-object v2, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/audio/SmpsManager;->-$$Nest$msetOutType(Lcom/samsung/audio/SmpsManager;I)V

    .line 643
    goto :goto_25

    .line 639
    :pswitch_1e
    iget-object v2, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/audio/SmpsManager;->-$$Nest$msetOutType(Lcom/samsung/audio/SmpsManager;I)V

    .line 640
    nop

    .line 647
    .end local v1    # "state":I
    :goto_25
    goto :goto_61

    :cond_26
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 648
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-static {v1}, Lcom/samsung/audio/SmpsManager;->-$$Nest$misSmpsAvailable(Lcom/samsung/audio/SmpsManager;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 649
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-static {v1}, Lcom/samsung/audio/SmpsManager;->-$$Nest$fgetmSmpsFT(Lcom/samsung/audio/SmpsManager;)Lcom/samsung/audio/Smps;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/audio/Smps;->stop_fasttrack()V

    goto :goto_61

    .line 651
    :cond_40
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 652
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-static {v1}, Lcom/samsung/audio/SmpsManager;->-$$Nest$misSmpsAvailable(Lcom/samsung/audio/SmpsManager;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-static {v1}, Lcom/samsung/audio/SmpsManager;->-$$Nest$fgetmEnableInSettingMenu(Lcom/samsung/audio/SmpsManager;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 653
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-static {v1}, Lcom/samsung/audio/SmpsManager;->-$$Nest$fgetmSmpsFT(Lcom/samsung/audio/SmpsManager;)Lcom/samsung/audio/Smps;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/audio/Smps;->start_fasttrack()V

    .line 656
    :cond_61
    :goto_61
    return-void

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_17
    .end packed-switch
.end method
