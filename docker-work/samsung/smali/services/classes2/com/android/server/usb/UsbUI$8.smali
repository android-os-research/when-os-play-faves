.class public Lcom/android/server/usb/UsbUI$8;
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

    .line 429
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUEvent(USB Control): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TYPE"

    .line 434
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE"

    .line 435
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usberr"

    .line 437
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "WORDS"

    .line 438
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "abnormal_reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_6d

    :cond_3e
    const-string p1, "ADD"

    .line 440
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 441
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    const v0, 0x1040e63

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$mmakeLongToast(Lcom/android/server/usb/UsbUI;I)V

    .line 442
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v2, 0x6d

    const v3, 0x1040e62

    const v4, 0x1040e61

    const-wide/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_6d

    :cond_5e
    const-string p1, "REMOVE"

    .line 446
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 447
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 p1, 0x6d

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mcancelNotification(Lcom/android/server/usb/UsbUI;I)V

    :cond_6d
    :goto_6d
    return-void
.end method
