.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    .line 580
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$2;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 583
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl.receiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 586
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string v0, "android.intent.extra.UID"

    const/4 v2, -0x1

    .line 587
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_30

    .line 589
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    :cond_30
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    .line 590
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_44

    const-string v3, "android.intent.extra.DATA_REMOVED"

    .line 591
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_44

    move v3, v5

    goto :goto_45

    :cond_44
    move v3, v4

    :goto_45
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v7, 0x4

    aput-object v0, v6, v7

    const-string v0, "On %s : DATA = %s, UID = %d, UserId = %d, Is replacing? %s"

    .line 592
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7e

    new-array p0, v5, [Ljava/lang/Object;

    aput-object p1, p0, v4

    const-string p1, "On %s : Skipped!"

    .line 597
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 599
    :cond_7e
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_b2

    .line 601
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 602
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_PACKAGE_REMOVED packageName:: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "userId"

    .line 605
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "pkgName"

    .line 606
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$2;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, v7, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mquickMessage(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;ILandroid/os/Bundle;)V

    :cond_b2
    :goto_b2
    return-void
.end method
