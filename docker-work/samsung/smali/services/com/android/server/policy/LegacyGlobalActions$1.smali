.class public Lcom/android/server/policy/LegacyGlobalActions$1;
.super Lcom/android/internal/globalactions/ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/internal/globalactions/ActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V
    .registers 13

    .line 230
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/globalactions/ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public changeStateFromPress(Z)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmHasTelephony(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 251
    :cond_9
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz p1, :cond_20

    .line 252
    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_22

    :cond_20
    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOff:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_22
    iput-object p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 253
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fputmAirplaneState(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ToggleAction$State;)V

    :cond_29
    return-void
.end method

.method public onToggle(Z)V
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmHasTelephony(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 235
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fputmIsWaitingForEcmExit(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    .line 237
    new-instance p1, Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmContext(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3c

    .line 242
    :cond_37
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$mchangeAirplaneModeSystemSetting(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    :goto_3c
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
