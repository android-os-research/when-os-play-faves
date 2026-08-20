.class public Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntelligentBatterySaverGoogleAppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IBSGoogleAppPolicyReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)V
    .registers 4

    .line 131
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.server.action_google_net_state"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->-$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.server.action_google_net_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    const/4 p1, 0x0

    const-string/jumbo v0, "state"

    .line 140
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " state = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IntelligentBatterySaverGoogleAppPolicy"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_43

    .line 143
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4d

    .line 145
    :cond_43
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4d
    :goto_4d
    return-void
.end method
