.class public Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;
.super Ljava/lang/Object;
.source "SetArcTransmissionStateAction.java"

# interfaces
.implements Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SetArcTransmissionStateAction;->start()Z
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

    .line 63
    iput-object p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSadDone(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "SetArcTransmissionStateAction"

    const-string v1, "Enabling ARC"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableArc(Ljava/util/List;)V

    .line 77
    iget-object p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 79
    iget-object p0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-static {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->-$$Nest$msendReportArcInitiated(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    return-void
.end method
