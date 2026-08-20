.class public Lcom/android/server/am/MARsTrigger$13;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .registers 2

    .line 729
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$13;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_54

    .line 732
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_54

    .line 735
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 736
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "MARS_REQUEST_PKG_INFO"

    .line 738
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 739
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    const/4 p2, 0x1

    if-nez p0, :cond_26

    .line 744
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/MARsPolicyManager;->postInit(Z)V

    goto :goto_54

    :cond_26
    const/4 p0, 0x0

    if-eqz p1, :cond_4b

    const-string v0, "MARS_EXTRA"

    const-string v1, ""

    .line 751
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "create"

    .line 752
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "update"

    .line 754
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "init"

    .line 756
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    goto :goto_49

    :cond_48
    move p2, p0

    :goto_49
    move p0, v0

    goto :goto_4d

    :cond_4b
    move p2, p0

    move v1, p2

    .line 759
    :goto_4d
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    invoke-virtual {p1, p0, v1, p2}, Lcom/android/server/am/mars/database/MARsDBManager;->sendSMDBChangedMsgToDBHandler(ZZZ)V

    :cond_54
    :goto_54
    return-void
.end method
