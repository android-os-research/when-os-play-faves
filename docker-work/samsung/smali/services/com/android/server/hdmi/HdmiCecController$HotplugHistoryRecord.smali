.class public final Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;
.super Lcom/android/server/hdmi/HdmiCecController$Dumpable;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotplugHistoryRecord"
.end annotation


# instance fields
.field public final mConnected:Z

.field public final mPort:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    .line 1304
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;-><init>()V

    .line 1305
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mPort:I

    .line 1306
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mConnected:Z

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .registers 6

    const-string v0, "[H]"

    .line 1311
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " time="

    .line 1312
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->mTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " hotplug port="

    .line 1314
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    iget p2, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mPort:I

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string p2, " connected="

    .line 1316
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mConnected:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    return-void
.end method
