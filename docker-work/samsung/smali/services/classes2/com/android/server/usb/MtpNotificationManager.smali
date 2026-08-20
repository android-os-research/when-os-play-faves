.class public Lcom/android/server/usb/MtpNotificationManager;
.super Ljava/lang/Object;
.source "MtpNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;,
        Lcom/android/server/usb/MtpNotificationManager$Receiver;
    }
.end annotation


# static fields
.field public static final ACTION_OPEN_IN_APPS:Ljava/lang/String; = "com.android.server.usb.ACTION_OPEN_IN_APPS"

.field public static final PROTOCOL_MTP:I = 0x0

.field public static final PROTOCOL_PTP:I = 0x1

.field public static final SUBCLASS_MTP:I = 0xff

.field public static final SUBCLASS_STILL_IMAGE_CAPTURE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "UsbMtpNotificationManager"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

.field public final mReceiver:Lcom/android/server/usb/MtpNotificationManager$Receiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/usb/MtpNotificationManager;)Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    .line 72
    new-instance p2, Lcom/android/server/usb/MtpNotificationManager$Receiver;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/usb/MtpNotificationManager$Receiver;-><init>(Lcom/android/server/usb/MtpNotificationManager;Lcom/android/server/usb/MtpNotificationManager$Receiver-IA;)V

    iput-object p2, p0, Lcom/android/server/usb/MtpNotificationManager;->mReceiver:Lcom/android/server/usb/MtpNotificationManager$Receiver;

    .line 73
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static isMtpDevice(Landroid/hardware/usb/UsbDevice;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 139
    :goto_2
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 140
    invoke-virtual {p0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ne v3, v4, :cond_21

    .line 142
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v3

    if-ne v3, v5, :cond_21

    .line 143
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v3

    if-ne v3, v5, :cond_21

    return v5

    .line 146
    :cond_21
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_42

    .line 147
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v3

    if-ne v3, v4, :cond_42

    .line 148
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v3

    if-nez v3, :cond_42

    .line 149
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MTP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    return v5

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_45
    return v0
.end method

.method public static shouldShowNotification(Landroid/content/pm/PackageManager;Landroid/hardware/usb/UsbDevice;)Z
    .registers 3

    const-string v0, "android.hardware.type.automotive"

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    .line 135
    invoke-static {p1}, Lcom/android/server/usb/MtpNotificationManager;->isMtpDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public hideNotification(I)V
    .registers 3

    .line 112
    iget-object p0, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x19

    .line 112
    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public showNotification(Landroid/hardware/usb/UsbDevice;)V
    .registers 8

    .line 77
    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x1040e8c

    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1040e8b

    .line 81
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080aa4

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "sys"

    .line 88
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "device"

    .line 91
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v2, 0x50000000

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v3

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v5, 0xc000000

    .line 95
    invoke-static {v2, v3, v1, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 104
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 106
    iget-object p0, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 107
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x19

    .line 106
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/usb/MtpNotificationManager;->mReceiver:Lcom/android/server/usb/MtpNotificationManager$Receiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
