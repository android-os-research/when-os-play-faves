.class public Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;
.super Ljava/lang/Object;
.source "SmartSwitchE.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEvent;


# instance fields
.field private mCooldownInstall:Z

.field private mSmartSwitchFinished:Z

.field private mSmartSwitchOngoing:Z

.field private mSmartSwitchOtg:Z

.field private mSmartSwitchSmsRecovery:Z

.field private mSmartSwitchStarted:Z

.field private mSmartSwitchTransfer:Z


# direct methods
.method public constructor <init>(ZZZZZZZ)V
    .registers 8
    .param p1, "smartSwitchTransfer"    # Z
    .param p2, "smartSwitchOtg"    # Z
    .param p3, "smartSwitchSmsRecovery"    # Z
    .param p4, "smartSwitchStarted"    # Z
    .param p5, "smartSwitchOngoing"    # Z
    .param p6, "smartSwitchFinished"    # Z
    .param p7, "coolDownInstall"    # Z

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchTransfer:Z

    .line 27
    iput-boolean p2, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchOtg:Z

    .line 28
    iput-boolean p3, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchSmsRecovery:Z

    .line 29
    iput-boolean p4, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchStarted:Z

    .line 30
    iput-boolean p5, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchOngoing:Z

    .line 31
    iput-boolean p6, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchFinished:Z

    .line 32
    iput-boolean p7, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mCooldownInstall:Z

    .line 33
    return-void
.end method


# virtual methods
.method public isCooldownInstall()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mCooldownInstall:Z

    return v0
.end method

.method public isSmartSwitchFinished()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchFinished:Z

    return v0
.end method

.method public isSmartSwitchOngoing()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchOngoing:Z

    return v0
.end method

.method public isSmartSwitchOtg()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchOtg:Z

    return v0
.end method

.method public isSmartSwitchSmsRecovery()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchSmsRecovery:Z

    return v0
.end method

.method public isSmartSwitchStarted()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchStarted:Z

    return v0
.end method

.method public isSmartSwitchTransfer()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->mSmartSwitchTransfer:Z

    return v0
.end method
