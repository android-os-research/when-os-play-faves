.class public Lcom/android/server/sepunion/cover/CoverServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 88
    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 97
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$fgetmCoverStateProvider(Lcom/android/server/sepunion/cover/CoverServiceManager;)Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v1, :cond_2d

    if-eqz v2, :cond_90

    .line 99
    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez v2, :cond_45

    if-eqz p2, :cond_3e

    const-string v1, "android.intent.extra.REPLACING"

    .line 100
    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3e

    goto :goto_45

    .line 103
    :cond_3e
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {p2, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$maddCoverService(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result p2

    goto :goto_4b

    .line 101
    :cond_45
    :goto_45
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {p2, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mupdateCoverService(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result p2

    .line 105
    :goto_4b
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_5d

    .line 106
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {p2, v1, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    goto :goto_90

    :cond_5d
    if-eqz p2, :cond_90

    .line 107
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result p2

    if-eqz p2, :cond_90

    .line 109
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p2, v1, v2, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mgetCoverServiceNameLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;IZZ)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_87

    .line 110
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mfindActiveServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v1

    if-nez v1, :cond_87

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 111
    invoke-static {v1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mcontainsBindingServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 112
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mremoveBindingServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)V

    .line 114
    :cond_87
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {p2, v1, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    :cond_90
    :goto_90
    const-string p2, "com.android.systemui"

    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a9

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 118
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    :cond_a9
    return-void
.end method
