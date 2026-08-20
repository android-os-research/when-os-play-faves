.class public Lcom/android/server/am/ActivityManagerService$11;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 6166
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 6169
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    if-nez p1, :cond_7

    return-void

    .line 6172
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.server.am.BROADCAST_SET_KPM_POLICY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "ActivityManager"

    if-eqz p1, :cond_23

    const-string p1, "BROADCAST_SET_KPM_POLICY_RECEIVED"

    .line 6173
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6174
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    goto/16 :goto_b1

    .line 6175
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.android.server.am.BROADCAST_SET_KPM_DEBUG"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "BROADCAST_SET_KPM_DEBUG_RECEIVED"

    .line 6176
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6177
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    goto/16 :goto_b1

    .line 6178
    :cond_3c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.android.server.am.BROADCAST_SET_KPM_ONOFF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    const-string p1, "BROADCAST_SET_KPM_ONOFF_RECEIVED"

    .line 6179
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6180
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isPmmEnabled()Z

    move-result p1

    const-string/jumbo p2, "persist.sys.kpm_onoff"

    if-eqz p1, :cond_68

    .line 6181
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    const-string p1, "Normal"

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->forceChangeState(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 6182
    sput-boolean p0, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    const-string p0, "false"

    .line 6183
    invoke-static {p2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 6185
    :cond_68
    sput-boolean v0, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    const-string/jumbo p0, "true"

    .line 6186
    invoke-static {p2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 6188
    :cond_71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.server.am.BROADCAST_SET_KPM_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b1

    const-string p1, "BROADCAST_SET_KPM_STATE_RECEIVED"

    .line 6189
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "KpmState"

    .line 6190
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ac

    .line 6191
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    if-eqz p2, :cond_ac

    .line 6192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KPM CHANGE STATE: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6193
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->forceChangeState(Ljava/lang/String;)V

    goto :goto_b1

    :cond_ac
    const-string p0, "getExtras is null"

    .line 6195
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    :goto_b1
    return-void
.end method
