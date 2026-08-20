.class public final Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
.super Landroid/os/Handler;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutomaticBrightnessHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V
    .registers 4

    .line 2062
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2063
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 2068
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_32

    goto :goto_31

    .line 2095
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mhandleSensorTimeout(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_31

    .line 2070
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateAutoBrightness(Lcom/android/server/display/AutomaticBrightnessController;ZZ)V

    goto :goto_31

    .line 2090
    :pswitch_14
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateForegroundAppSync(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_31

    .line 2086
    :pswitch_1a
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateForegroundApp(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_31

    .line 2082
    :pswitch_20
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$minvalidateShortTermModel(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_31

    .line 2078
    :pswitch_26
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mcollectBrightnessAdjustmentSample(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_31

    .line 2074
    :pswitch_2c
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateAmbientLux(Lcom/android/server/display/AutomaticBrightnessController;)V

    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_14
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
