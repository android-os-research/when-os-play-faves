.class public Lcom/android/server/policy/AppOpsPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 167
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    return-void

    .line 171
    :cond_12
    iget-object p2, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-static {p2}, Lcom/android/server/policy/AppOpsPolicy;->-$$Nest$fgetmRoleManager(Lcom/android/server/policy/AppOpsPolicy;)Landroid/app/role/RoleManager;

    move-result-object p2

    const-string v0, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {p2, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 173
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 174
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-static {p0, p1}, Lcom/android/server/policy/AppOpsPolicy;->-$$Nest$mupdateActivityRecognizerTags(Lcom/android/server/policy/AppOpsPolicy;Ljava/lang/String;)V

    :cond_29
    return-void
.end method
