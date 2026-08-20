.class public Lcom/android/server/hdmi/HotplugDetectionAction$2;
.super Ljava/lang/Object;
.source "HotplugDetectionAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HotplugDetectionAction;->pollAudioSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HotplugDetectionAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction$2;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPollingFinished(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/android/server/hdmi/HotplugDetectionAction$2;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->-$$Nest$mcheckHotplug(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V

    return-void
.end method
