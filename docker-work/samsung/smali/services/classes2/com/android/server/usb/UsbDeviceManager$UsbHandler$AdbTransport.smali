.class public Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;
.super Landroid/debug/IAdbTransport$Stub;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdbTransport"
.end annotation


# instance fields
.field public final mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .registers 2

    .line 1034
    invoke-direct {p0}, Landroid/debug/IAdbTransport$Stub;-><init>()V

    .line 1035
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-void
.end method


# virtual methods
.method public onAdbEnabled(ZB)V
    .registers 3

    if-nez p2, :cond_8

    .line 1041
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    :cond_8
    return-void
.end method
