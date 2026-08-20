.class public final Lcom/android/server/usb/hal/port/UsbPortHalInstance;
.super Ljava/lang/Object;
.source "UsbPortHalInstance.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)Lcom/android/server/usb/hal/port/UsbPortHal;
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "Querying USB HAL version"

    .line 33
    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 34
    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_19

    const-string v0, "USB HAL HIDL present"

    .line 35
    invoke-static {v2, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/hal/port/UsbPortHidl;-><init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-object v0

    .line 38
    :cond_19
    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortAidl;->isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "USB HAL AIDL present"

    .line 39
    invoke-static {v2, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/android/server/usb/hal/port/UsbPortAidl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/hal/port/UsbPortAidl;-><init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-object v0

    :cond_2a
    return-object v1
.end method
