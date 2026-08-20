.class public Lcom/android/server/spay/UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final GETDATA_OF_INTENT:Ljava/lang/String; = "getdata_of_intent"

.field public static final TAG:Ljava/lang/String; = "UpdateReceiver"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 62
    new-instance v0, Lcom/android/server/spay/UpdateReceiver$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/spay/UpdateReceiver$2;-><init>(Lcom/android/server/spay/UpdateReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/spay/UpdateReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 28
    iput-object p1, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_26

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateReceiver:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lcom/android/server/spay/UpdateReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/spay/UpdateReceiver$1;-><init>(Lcom/android/server/spay/UpdateReceiver;Ljava/lang/String;Landroid/content/Intent;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_26
    return-void
.end method

.method public triggerPFInstall(Landroid/content/Context;)V
    .registers 5

    .line 54
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.spay.action.PFINSTALL"

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.spay"

    const-string v2, "com.samsung.android.spay.common.us.LocalPFBroadcastReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 59
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v1, "com.samsung.android.spay.permission.INSTALL_PF"

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
