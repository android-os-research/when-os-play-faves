.class public Lcom/android/server/usb/UsbUI$6;
.super Landroid/os/UEventObserver;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUEvent(Host Path): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbUI"

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ACTION"

    .line 292
    invoke-virtual {v1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "STATE"

    .line 293
    invoke-virtual {v1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "remove"

    .line 295
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 296
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$mcancelAllHostNotification(Lcom/android/server/usb/UsbUI;)V

    return-void

    :cond_36
    const-string v3, "change"

    .line 300
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    if-eqz v1, :cond_ef

    const/4 v2, -0x1

    .line 301
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "REMOVE"

    const-string v5, "ADD"

    sparse-switch v3, :sswitch_data_f0

    goto :goto_74

    :sswitch_4d
    const-string v3, "UNKNOWN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    goto :goto_74

    :cond_56
    const/4 v2, 0x3

    goto :goto_74

    :sswitch_58
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_74

    :cond_5f
    const/4 v2, 0x2

    goto :goto_74

    :sswitch_61
    const-string v3, "OVERCURRENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_74

    :cond_6a
    const/4 v2, 0x1

    goto :goto_74

    :sswitch_6c
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    goto :goto_74

    :cond_73
    const/4 v2, 0x0

    :goto_74
    packed-switch v2, :pswitch_data_102

    goto :goto_c1

    .line 327
    :pswitch_78
    iget-object v6, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v7, 0x71

    const v8, 0x1040e76

    const/4 v9, 0x0

    const v10, 0x1080aa8

    const-wide/16 v11, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIIJ)V

    goto :goto_c1

    .line 303
    :pswitch_89
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v2}, Lcom/android/server/usb/UsbUI;->-$$Nest$mturnOnDisplay(Lcom/android/server/usb/UsbUI;)V

    .line 304
    iget-object v6, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v7, 0x6f

    const v8, 0x1040e77

    const/4 v9, 0x0

    const-wide/16 v10, 0x103

    invoke-static/range {v6 .. v11}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_c1

    .line 319
    :pswitch_9c
    iget-object v12, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v13, 0x70

    const v14, 0x1040e7a

    const v15, 0x1040e79

    const v16, 0x1080aa7

    const-wide/16 v17, 0x0

    invoke-static/range {v12 .. v18}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIIJ)V

    goto :goto_c1

    .line 311
    :pswitch_af
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v2}, Lcom/android/server/usb/UsbUI;->-$$Nest$mcancelAllHostNotification(Lcom/android/server/usb/UsbUI;)V

    .line 312
    iget-object v6, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v7, 0x6f

    const v8, 0x1040e78

    const/4 v9, 0x0

    const-wide/16 v10, 0x103

    invoke-static/range {v6 .. v11}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    .line 340
    :goto_c1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cd

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 341
    :cond_cd
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fputmIsHostConnected(Lcom/android/server/usb/UsbUI;Z)V

    .line 343
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmSupportDualRole(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-nez v1, :cond_ef

    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsEmergencyMode(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 344
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsHostConnected(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V

    :cond_ef
    return-void

    :sswitch_data_f0
    .sparse-switch
        -0x7022137c -> :sswitch_6c
        -0x523741fb -> :sswitch_61
        0xfc81 -> :sswitch_58
        0x19d1382a -> :sswitch_4d
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_af
        :pswitch_9c
        :pswitch_89
        :pswitch_78
    .end packed-switch
.end method
