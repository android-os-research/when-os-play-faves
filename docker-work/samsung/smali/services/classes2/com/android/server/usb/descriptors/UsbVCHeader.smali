.class public final Lcom/android/server/usb/descriptors/UsbVCHeader;
.super Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;
.source "UsbVCHeader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbVCHeader"


# direct methods
.method public constructor <init>(IBBI)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;-><init>(IBBI)V

    return-void
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 2

    .line 42
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    move-result p0

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    return-void
.end method
