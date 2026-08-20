.class public Lcom/android/server/pm/AutoDisableHandler$ADHandler;
.super Landroid/os/Handler;
.source "AutoDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AutoDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ADHandler"
.end annotation


# instance fields
.field public extras:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/android/server/pm/AutoDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AutoDisableHandler;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler$ADHandler;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler$ADHandler;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 81
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    goto :goto_3d

    .line 83
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3d

    const-string p1, "activity"

    .line 85
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    const-string/jumbo v1, "packageName"

    .line 86
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    const-string/jumbo v2, "userId"

    .line 87
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "isGoogleChanged"

    .line 88
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 90
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->setGoogleEnabled(Ljava/lang/String;I)V

    goto :goto_3d

    .line 92
    :cond_36
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->resetAutoDisabledAppState(Ljava/lang/String;IZ)V

    :cond_3d
    :goto_3d
    return-void
.end method
