.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$1;
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

    .line 528
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$1;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 531
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl.receiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.USER_ADDED"

    .line 534
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "On %s : UserId = %d"

    const/16 v6, -0x2710

    const-string v7, "android.intent.extra.user_handle"

    if-eqz v0, :cond_48

    .line 535
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 536
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$1;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const/4 p1, 0x5

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mquickMessage(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;II)V

    goto :goto_8e

    :cond_48
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 539
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 540
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 541
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$1;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const/4 p1, 0x6

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mquickMessage(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;II)V

    goto :goto_8e

    :cond_6c
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 544
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 545
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 546
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$1;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$monManagedProfileUnavailable(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    :cond_8e
    :goto_8e
    return-void
.end method
