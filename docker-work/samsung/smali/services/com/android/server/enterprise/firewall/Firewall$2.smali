.class public Lcom/android/server/enterprise/firewall/Firewall$2;
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

    .line 129
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "android.intent.action.USER_ADDED"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 135
    :cond_14
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$monUserHandle(Lcom/android/server/enterprise/firewall/Firewall;Landroid/content/Intent;)V

    :cond_19
    return-void
.end method
