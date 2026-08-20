.class public final Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerManagerHandlerCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 7932
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 7935
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_55

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_49

    const/4 v2, 0x5

    if-eq v0, v2, :cond_43

    packed-switch v0, :pswitch_data_68

    goto :goto_67

    .line 7967
    :pswitch_15
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "ABLL"

    invoke-static {p0, v0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleSendBroadcastToHWParam(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 7964
    :pswitch_21
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "DPSI"

    invoke-static {p0, v0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleSendBroadcastToHWParam(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 7961
    :pswitch_2d
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "DPLD"

    invoke-static {p0, v0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleSendBroadcastToHWParam(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 7958
    :pswitch_39
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mmakeDpucData(Lcom/android/server/power/PowerManagerService;[Ljava/lang/String;)V

    goto :goto_67

    .line 7954
    :cond_43
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleAttentiveTimeout(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_67

    .line 7951
    :cond_49
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->checkForLongWakeLocks()V

    goto :goto_67

    .line 7948
    :cond_4f
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleScreenBrightnessBoostTimeout(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_67

    .line 7945
    :cond_55
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleSandman(Lcom/android/server/power/PowerManagerService;I)V

    goto :goto_67

    .line 7939
    :cond_5d
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleAbuseWakelockWhenUseractivityChanged(Lcom/android/server/power/PowerManagerService;)V

    .line 7942
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleUserActivityTimeout(Lcom/android/server/power/PowerManagerService;)V

    :goto_67
    return v1

    :pswitch_data_68
    .packed-switch 0xb
        :pswitch_39
        :pswitch_2d
        :pswitch_21
        :pswitch_15
    .end packed-switch
.end method
