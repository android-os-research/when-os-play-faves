.class public Lcom/android/server/hdmi/RequestArcInitiationAction$1;
.super Ljava/lang/Object;
.source "RequestArcInitiationAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/RequestArcInitiationAction;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/RequestArcInitiationAction;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/android/server/hdmi/RequestArcInitiationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 2

    if-eqz p1, :cond_10

    .line 51
    iget-object p1, p0, Lcom/android/server/hdmi/RequestArcInitiationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArc()V

    .line 52
    iget-object p0, p0, Lcom/android/server/hdmi/RequestArcInitiationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :cond_10
    return-void
.end method
