.class public Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;
.super Ljava/lang/Object;
.source "DeviceSelectActionFromTv.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/DeviceSelectActionFromTv;->queryDevicePowerStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/DeviceSelectActionFromTv;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/DeviceSelectActionFromTv;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;->this$0:Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 2

    if-eqz p1, :cond_8

    .line 132
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;->this$0:Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_8
    return-void
.end method
