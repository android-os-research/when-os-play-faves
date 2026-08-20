.class public final Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;
.super Lcom/android/server/hdmi/HdmiCecController$Dumpable;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageHistoryRecord"
.end annotation


# instance fields
.field public final mIsReceived:Z

.field public final mMessage:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method public constructor <init>(ZLcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3

    .line 1284
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;-><init>()V

    .line 1285
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mIsReceived:Z

    .line 1286
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .registers 6

    .line 1291
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mIsReceived:Z

    if-eqz v0, :cond_7

    const-string v0, "[R]"

    goto :goto_9

    :cond_7
    const-string v0, "[S]"

    :goto_9
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " time="

    .line 1292
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1293
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->mTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " message="

    .line 1294
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1295
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
