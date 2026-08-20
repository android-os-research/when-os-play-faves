.class public Lcom/android/server/usb/UsbUI$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 189
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mUsbWetStateReceiver ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsbUI"

    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 198
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x1040eb5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p2}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object p2

    const v0, 0x1040ebd

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 202
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetisSupportWirelessCharging(Lcom/android/server/usb/UsbUI;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 203
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040ebe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6a

    .line 205
    :cond_5d
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040ebc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6a
    const-string v1, "\\n"

    const-string v2, "\n"

    .line 207
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x5

    const/16 v3, 0x20

    if-ne v1, v3, :cond_8a

    const/4 v2, 0x4

    .line 215
    :cond_8a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v3}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 216
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 219
    new-instance p1, Lcom/android/server/usb/UsbUI$2$1;

    invoke-direct {p1, p0}, Lcom/android/server/usb/UsbUI$2$1;-><init>(Lcom/android/server/usb/UsbUI$2;)V

    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 228
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 229
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
