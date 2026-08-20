.class public Lcom/android/server/usb/UsbUI$7;
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

    .line 353
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 13

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUEvent(Host Interface): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ACTION"

    .line 358
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "INTERFACE"

    .line 359
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WARNING"

    .line 361
    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unsupport_accessory"

    .line 364
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    const/16 v6, 0x72

    .line 370
    iget-object v5, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v9, 0x1

    const v7, 0x1040eab

    const v8, 0x1040eaa

    invoke-static/range {v5 .. v10}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_f8

    :cond_43
    const-string v4, "no_response"

    .line 372
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const/16 v6, 0x73

    .line 378
    iget-object v5, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v9, 0x1

    const v7, 0x1040e8f

    const v8, 0x1040e8e

    invoke-static/range {v5 .. v10}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_f8

    :cond_5c
    const-string v4, "hub_depth_exceed"

    .line 380
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    const/16 v6, 0x74

    .line 386
    iget-object v5, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v9, 0x1

    const v7, 0x1040e7e

    const v8, 0x1040e7d

    invoke-static/range {v5 .. v10}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_f8

    :cond_75
    const-string v4, "hub_power_exceed"

    .line 388
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    const/16 v6, 0x75

    .line 394
    iget-object v5, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v9, 0x1

    const v7, 0x1040e8f

    const v8, 0x1040e7f

    invoke-static/range {v5 .. v10}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_f8

    :cond_8d
    const-string v4, "host_resource_exceed"

    .line 396
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    const/16 v5, 0x76

    .line 402
    iget-object v4, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v8, 0x1

    const v6, 0x1040e7c

    const v7, 0x1040e7b

    invoke-static/range {v4 .. v9}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_f8

    :cond_a5
    :try_start_a5
    const-string v3, "/"

    .line 407
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 408
    aget-object v3, v2, v3

    const/4 v4, 0x1

    .line 409
    aget-object v4, v2, v4

    const/4 v5, 0x2

    .line 410
    aget-object v2, v2, v5

    if-eqz v3, :cond_cd

    if-eqz v4, :cond_cd

    if-nez v2, :cond_bb

    goto :goto_cd

    .line 414
    :cond_bb
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    .line 415
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 416
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 417
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 414
    invoke-static {p0, v0, v3, v4, v2}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyUsbInterface(Lcom/android/server/usb/UsbUI;Ljava/lang/String;III)V
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_a5 .. :try_end_cc} :catch_e4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a5 .. :try_end_cc} :catch_ce

    goto :goto_f8

    :cond_cd
    :goto_cd
    return-void

    :catch_ce
    move-exception p0

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ArrayIndexOutOfBoundsException "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f8

    .line 419
    :catch_e4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not parse state or devPath from event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f8
    return-void
.end method
