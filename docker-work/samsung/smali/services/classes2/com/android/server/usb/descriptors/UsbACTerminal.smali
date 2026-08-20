.class public abstract Lcom/android/server/usb/descriptors/UsbACTerminal;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACTerminal.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbACTerminal"


# instance fields
.field public mAssocTerminal:B

.field public mTerminalID:B

.field public mTerminalType:I


# direct methods
.method public constructor <init>(IBBI)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    return-void
.end method


# virtual methods
.method public getAssocTerminal()B
    .registers 1

    .line 48
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACTerminal;->mAssocTerminal:B

    return p0
.end method

.method public getTerminalID()B
    .registers 1

    .line 40
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalID:B

    return p0
.end method

.method public getTerminalType()I
    .registers 1

    .line 44
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 3

    .line 53
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalID:B

    .line 54
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    .line 55
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbACTerminal;->mAssocTerminal:B

    .line 57
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 5

    .line 62
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 64
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getTerminalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalID()B

    move-result p0

    invoke-static {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
