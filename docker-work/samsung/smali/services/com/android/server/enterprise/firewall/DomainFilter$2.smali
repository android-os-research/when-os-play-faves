.class public Lcom/android/server/enterprise/firewall/DomainFilter$2;
.super Landroid/content/BroadcastReceiver;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$2;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 201
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 203
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$2;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$monUserRemoved(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V

    goto :goto_3c

    .line 204
    :cond_2b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 205
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$2;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$monUserAdded(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V

    :cond_3c
    :goto_3c
    return-void
.end method
