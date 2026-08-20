.class public Lcom/android/server/enterprise/firewall/DomainFilter$3$1;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/DomainFilter$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/firewall/DomainFilter$3;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter$3;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$3$1;->this$1:Lcom/android/server/enterprise/firewall/DomainFilter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$3$1;->this$1:Lcom/android/server/enterprise/firewall/DomainFilter$3;

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$3;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$minitUserIdMap(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method
