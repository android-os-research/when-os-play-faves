.class public final Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
.super Landroid/os/Handler;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayModeDirectorHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V
    .registers 4

    .line 870
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 871
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 876
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7a

    goto/16 :goto_78

    .line 927
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 928
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHbmObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmHdrChanged(I)V

    goto :goto_78

    .line 920
    :pswitch_13
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 921
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHbmObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmSunlightChanged(I)V

    goto :goto_78

    .line 892
    :pswitch_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 894
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [I

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigHighBrightnessThresholdsChanged([I[I)V

    goto :goto_78

    .line 901
    :pswitch_35
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 902
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigRefreshRateInHighZoneChanged(I)V

    goto :goto_78

    .line 885
    :pswitch_41
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 886
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigRefreshRateInLowZoneChanged(I)V

    goto :goto_78

    .line 908
    :pswitch_4d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    .line 909
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V

    goto :goto_78

    .line 878
    :pswitch_5b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 879
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [I

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigLowBrightnessThresholdsChanged([I[I)V

    goto :goto_78

    .line 914
    :pswitch_71
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 916
    invoke-interface {p0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;->onDesiredDisplayModeSpecsChanged()V

    :goto_78
    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_5b
        :pswitch_4d
        :pswitch_41
        :pswitch_35
        :pswitch_1f
        :pswitch_13
        :pswitch_7
    .end packed-switch
.end method
