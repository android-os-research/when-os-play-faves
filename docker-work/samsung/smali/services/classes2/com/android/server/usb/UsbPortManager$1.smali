.class public Lcom/android/server/usb/UsbPortManager$1;
.super Landroid/os/Handler;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V
    .registers 3

    .line 1202
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1205
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    goto :goto_34

    .line 1215
    :cond_9
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-static {p0}, Lcom/android/server/usb/UsbPortManager;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "notification"

    .line 1216
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbPortManager;->-$$Nest$fputmNotificationManager(Lcom/android/server/usb/UsbPortManager;Landroid/app/NotificationManager;)V

    goto :goto_34

    .line 1207
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "port_info"

    .line 1208
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1209
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->-$$Nest$fgetmLock(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1210
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/server/usb/UsbPortManager;->-$$Nest$mupdatePortsLocked(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 1211
    monitor-exit v0

    :goto_34
    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw p0
.end method
