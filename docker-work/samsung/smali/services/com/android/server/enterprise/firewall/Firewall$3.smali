.class public Lcom/android/server/enterprise/firewall/Firewall$3;
.super Landroid/content/BroadcastReceiver;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$3;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 146
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 149
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$3;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$mpackageAdded(Lcom/android/server/enterprise/firewall/Firewall;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_38

    :cond_2b
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 151
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$3;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$mpackageRemoved(Lcom/android/server/enterprise/firewall/Firewall;Landroid/content/Context;Landroid/content/Intent;)V

    :cond_38
    :goto_38
    return-void
.end method
