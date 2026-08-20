.class public Lcom/android/server/policy/LegacyGlobalActions$10;
.super Landroid/telephony/PhoneStateListener;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    .line 762
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmHasTelephony(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 766
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 767
    :goto_13
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    if-eqz p1, :cond_1a

    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_1c

    :cond_1a
    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_1c
    invoke-static {v0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fputmAirplaneState(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 768
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmAirplaneModeOn(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmAirplaneState(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction$State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 769
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$10;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmAdapter(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/globalactions/ActionsAdapter;->notifyDataSetChanged()V

    return-void
.end method
