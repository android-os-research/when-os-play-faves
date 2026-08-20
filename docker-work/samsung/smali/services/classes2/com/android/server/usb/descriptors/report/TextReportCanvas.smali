.class public final Lcom/android/server/usb/descriptors/report/TextReportCanvas;
.super Lcom/android/server/usb/descriptors/report/ReportCanvas;
.source "TextReportCanvas.java"


# static fields
.field public static final LIST_INDENT_AMNT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "TextReportCanvas"


# instance fields
.field public mListIndent:I

.field public final mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 40
    iput-object p2, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public closeHeader(I)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string p1, "]\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeList()V
    .registers 2

    .line 93
    iget v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    return-void
.end method

.method public closeListItem()V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeParagraph()V
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openHeader(I)V
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    .line 57
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openList()V
    .registers 2

    .line 88
    iget v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    return-void
.end method

.method public openListItem()V
    .registers 2

    .line 98
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    .line 99
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "- "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openParagraph(Z)V
    .registers 2

    .line 67
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final writeListIndent()V
    .registers 4

    const/4 v0, 0x0

    .line 44
    :goto_1
    iget v1, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    if-ge v0, v1, :cond_f

    .line 45
    iget-object v1, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public writeParagraph(Ljava/lang/String;Z)V
    .registers 5

    .line 77
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openParagraph(Z)V

    if-eqz p2, :cond_1f

    .line 79
    iget-object p2, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 81
    :cond_1f
    iget-object p2, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :goto_24
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeParagraph()V

    return-void
.end method
