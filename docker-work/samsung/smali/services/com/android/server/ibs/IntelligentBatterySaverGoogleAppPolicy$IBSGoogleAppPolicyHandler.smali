.class public Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;
.super Landroid/os/Handler;
.source "IntelligentBatterySaverGoogleAppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IBSGoogleAppPolicyHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Landroid/os/Looper;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 153
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 158
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_15

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    goto :goto_1f

    .line 164
    :cond_a
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-static {p1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->-$$Nest$fputmNetworkLimited(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)V

    .line 165
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-static {p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->-$$Nest$msetGoogleAppsNetworkAllow(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)V

    goto :goto_1f

    .line 160
    :cond_15
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-static {p1, v1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->-$$Nest$fputmNetworkLimited(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)V

    .line 161
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-static {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->-$$Nest$msetGoogleAppsNetworkAllow(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)V

    :goto_1f
    return-void
.end method
