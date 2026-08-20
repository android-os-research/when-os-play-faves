.class Lcom/samsung/android/game/SystemHelper$1;
.super Landroid/os/Handler;
.source "SystemHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/SystemHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/SystemHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/SystemHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/game/SystemHelper;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/game/SystemHelper$1;->this$0:Lcom/samsung/android/game/SystemHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    goto :goto_14

    .line 59
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper$1;->this$0:Lcom/samsung/android/game/SystemHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/SystemHelper;->enableWifiSwitch(Z)V

    goto :goto_14

    .line 56
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper$1;->this$0:Lcom/samsung/android/game/SystemHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/SystemHelper;->enableWifiSwitch(Z)V

    .line 57
    nop

    .line 62
    :goto_14
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method
