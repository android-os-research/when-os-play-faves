.class public final Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;
.super Lcom/android/server/usb/descriptors/report/ReportCanvas;
.source "HTMLReportCanvas.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HTMLReportCanvas"


# instance fields
.field public final mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 38
    iput-object p2, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public closeHeader(I)V
    .registers 3

    .line 53
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "</h"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeList()V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "</ul>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeListItem()V
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "</li>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeParagraph()V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "</p>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openHeader(I)V
    .registers 3

    .line 48
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "<h"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openList()V
    .registers 2

    .line 80
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "<ul>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openListItem()V
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "<li>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openParagraph(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 60
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string p1, "<p style=\"color:red\">"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 62
    :cond_a
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string p1, "<p>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_11
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public writeParagraph(Ljava/lang/String;Z)V
    .registers 3

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->openParagraph(Z)V

    .line 74
    iget-object p2, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->closeParagraph()V

    return-void
.end method
