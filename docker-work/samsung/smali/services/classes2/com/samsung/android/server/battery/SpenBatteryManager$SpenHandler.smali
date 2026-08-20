.class public Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;
.super Landroid/os/Handler;
.source "SpenBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/battery/SpenBatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpenHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Looper;)V
    .registers 3

    .line 577
    iput-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    .line 578
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 583
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 585
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle Message reqID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenBatteryManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "REQUEST_ID : "

    packed-switch v0, :pswitch_data_7c

    .line 609
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 602
    :pswitch_46
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mhandlePairedSpenNotify(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Bundle;)V

    goto :goto_7a

    .line 606
    :pswitch_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 599
    :pswitch_63
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mhandleSpenInfo(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Bundle;)V

    goto :goto_7a

    .line 596
    :pswitch_69
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mhandleBatteryChanged(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Bundle;)V

    goto :goto_7a

    .line 593
    :pswitch_6f
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mhandleConnectionChanged(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Bundle;)V

    goto :goto_7a

    .line 590
    :pswitch_75
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$msetCallBacksForAllSPen(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Bundle;)V

    :cond_7a
    :goto_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_75
        :pswitch_6f
        :pswitch_69
        :pswitch_63
        :pswitch_4c
        :pswitch_4c
        :pswitch_46
    .end packed-switch
.end method
