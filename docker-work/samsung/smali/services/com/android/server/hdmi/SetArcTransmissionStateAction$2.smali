.class public Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;
.super Ljava/lang/Object;
.source "SetArcTransmissionStateAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendReportArcInitiated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    goto :goto_16

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-static {p1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->-$$Nest$mdisableArc(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed to send <Report Arc Initiated>."

    .line 108
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object p0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :goto_16
    return-void
.end method
