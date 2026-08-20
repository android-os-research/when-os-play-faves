.class public Lcom/android/server/usb/UsbUI$1;
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

    .line 181
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLocalechangedReceiver ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsbUI"

    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0}, Lcom/android/server/usb/UsbUI;->-$$Nest$mupdateChangedLocale(Lcom/android/server/usb/UsbUI;)V

    return-void
.end method
