.class public Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;
.super Lcom/android/server/ssrm/common/ABroadcastEG;
.source "SmartSwitchEG.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/ABroadcastEG<",
        "Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;",
        "Lcom/android/server/ssrm/common/intent/SmartSwitch/ASmartSwitchER;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_COOLDOWN_INSTALL_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_OFF"

.field private static final ACTION_COOLDOWN_INSTALL_ON:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_ON"

.field private static final ACTION_SMARTSWITCH_FINISHED:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

.field private static final ACTION_SMARTSWITCH_ONGOING:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

.field static final ACTION_SMARTSWITCH_SMSRECOVERY:Ljava/lang/String; = "com.samsung.android.intent.SMARTSWITCH_SMSRECOVERY"

.field private static final ACTION_SMARTSWITCH_STARTED:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

.field private static final ACTION_SMARTSWITCH_TRANSFER:Ljava/lang/String; = "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

.field static final ACTION_SMARTSWITCH_TYPE:Ljava/lang/String; = "com.samsung.android.intent.SMARTSWITCH_TYPE"

.field private static final EXTRA_BOOLEAN_SMARTSWITCH_OTG:Ljava/lang/String; = "smartswitch_otg"

.field private static final EXTRA_BOOLEAN_SMARTSWITCH_SMSRECOVERY:Ljava/lang/String; = "smartswitch_smsrecovery"

.field private static final EXTRA_BOOLEAN_SMARTSWITCH_TRANSFER:Ljava/lang/String; = "smartswitch_transfer"

.field private static final PERMISSION_SMARTSWITCH:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"


# instance fields
.field private mCoolDownInstall:Z

.field private mSmartSwitchFinished:Z

.field private mSmartSwitchOngoing:Z

.field private mSmartSwitchOtg:Z

.field private mSmartSwitchSmsRecovery:Z

.field private mSmartSwitchStarted:Z

.field private mSmartSwitchTransfer:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/android/server/ssrm/common/ABroadcastEG;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mCoolDownInstall:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchTransfer:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchOtg:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchSmsRecovery:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchStarted:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchOngoing:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchFinished:Z

    return-void
.end method


# virtual methods
.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 98
    const-class v0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "com.samsung.android.intent.SMARTSWITCH_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "com.samsung.android.intent.SMARTSWITCH_SMSRECOVERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    return-object v0
.end method

.method public bridge synthetic processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/IEvent;
    .registers 3

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;

    move-result-object p1

    return-object p1
.end method

.method public processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchFinished:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchOngoing:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchStarted:Z

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "action":Ljava/lang/String;
    if-eqz v1, :cond_78

    .line 56
    const-string v2, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 57
    const-string v2, "smartswitch_transfer"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchTransfer:Z

    goto :goto_78

    .line 59
    :cond_1e
    const-string v2, "com.samsung.android.intent.SMARTSWITCH_TYPE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 60
    const-string v2, "smartswitch_otg"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchOtg:Z

    goto :goto_78

    .line 61
    :cond_2f
    const-string v2, "com.samsung.android.intent.SMARTSWITCH_SMSRECOVERY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 62
    nop

    .line 63
    const-string v2, "smartswitch_smsrecovery"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchSmsRecovery:Z

    goto :goto_78

    .line 64
    :cond_41
    const-string v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4d

    .line 65
    iput-boolean v3, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchStarted:Z

    goto :goto_78

    .line 66
    :cond_4d
    const-string v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 67
    iput-boolean v3, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchOngoing:Z

    goto :goto_78

    .line 68
    :cond_58
    const-string v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 69
    iput-boolean v3, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchFinished:Z

    goto :goto_78

    .line 70
    :cond_63
    const-string v2, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_ON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 71
    iput-boolean v3, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mCoolDownInstall:Z

    goto :goto_78

    .line 72
    :cond_6e
    const-string v2, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_OFF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 73
    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mCoolDownInstall:Z

    .line 78
    :cond_78
    :goto_78
    new-instance v0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;

    iget-boolean v4, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchTransfer:Z

    iget-boolean v5, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchOtg:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchSmsRecovery:Z

    iget-boolean v7, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchStarted:Z

    iget-boolean v8, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchOngoing:Z

    iget-boolean v9, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mSmartSwitchFinished:Z

    iget-boolean v10, p0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;->mCoolDownInstall:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;-><init>(ZZZZZZZ)V

    return-object v0
.end method
