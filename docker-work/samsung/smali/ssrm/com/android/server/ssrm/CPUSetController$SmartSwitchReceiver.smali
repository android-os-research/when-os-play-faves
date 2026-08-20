.class Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;
.super Lcom/android/server/ssrm/common/intent/SmartSwitch/ASmartSwitchER;
.source "CPUSetController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CPUSetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CPUSetController;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CPUSetController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/CPUSetController;

    .line 88
    iput-object p1, p0, Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;->this$0:Lcom/android/server/ssrm/CPUSetController;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/SmartSwitch/ASmartSwitchER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 88
    check-cast p1, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;

    .line 92
    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->isSmartSwitchStarted()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->isSmartSwitchOngoing()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->isSmartSwitchTransfer()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_20

    .line 94
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->isSmartSwitchFinished()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 95
    iget-object v0, p0, Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;->this$0:Lcom/android/server/ssrm/CPUSetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/CPUSetController;->updateMediaProvier(Z)V

    goto :goto_26

    .line 93
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;->this$0:Lcom/android/server/ssrm/CPUSetController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/CPUSetController;->updateMediaProvier(Z)V

    .line 97
    :cond_26
    :goto_26
    return-void
.end method
