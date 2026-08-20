.class public Lcom/android/server/policy/PhoneWindowManagerExt$17;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;->registerSystemUIReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public static synthetic $r8$lambda$4ddlB98qyQvXE5qCxjsiK2jlK-o(Lcom/android/server/policy/PhoneWindowManagerExt$17;Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$17;->lambda$onReceive$0(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 6902
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$17;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 4

    .line 6912
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x100

    .line 6913
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 6912
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 6915
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$17;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$mbindKeyguardOnPkgChanged(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_40

    .line 6905
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 6906
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 6907
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 6908
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz p2, :cond_25

    .line 6909
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    if-eqz p1, :cond_40

    .line 6910
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 6911
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$17;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$17$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$17$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$17;Landroid/content/Context;Landroid/content/ComponentName;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p2, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_40
    return-void
.end method
