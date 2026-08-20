.class public final Lcom/android/server/usb/descriptors/UsbVCInputTerminal;
.super Lcom/android/server/usb/descriptors/UsbVCInterface;
.source "UsbVCInputTerminal.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbVCInputTerminal"


# direct methods
.method public constructor <init>(IBB)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbVCInterface;-><init>(IBB)V

    return-void
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 2

    .line 41
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    move-result p0

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    return-void
.end method
