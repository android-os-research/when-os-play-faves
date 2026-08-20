.class public abstract Lcom/android/server/usb/descriptors/UsbVCEndpoint;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbVCEndpoint.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbVCEndpoint"

.field public static final VCEP_ENDPOINT:B = 0x2t

.field public static final VCEP_GENERAL:B = 0x1t

.field public static final VCEP_INTERRUPT:B = 0x3t

.field public static final VCEP_UNDEFINED:B


# direct methods
.method public constructor <init>(IB)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IBB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 4

    .line 40
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    const/4 p0, 0x0

    if-eqz p3, :cond_29

    const/4 p1, 0x1

    if-eq p3, p1, :cond_29

    const/4 p1, 0x2

    if-eq p3, p1, :cond_29

    const/4 p1, 0x3

    if-eq p3, p1, :cond_29

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown Video Class Endpoint id:0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsbVCEndpoint"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-object p0
.end method
