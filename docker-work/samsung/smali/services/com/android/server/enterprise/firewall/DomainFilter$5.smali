.class public Lcom/android/server/enterprise/firewall/DomainFilter$5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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

    .line 364
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 367
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 369
    :try_start_3
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 370
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$mgetConnectivityService(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_4b

    const/16 v1, 0x11

    .line 371
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 373
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Captive portal detected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$mhasAnyRuleInDatabase(Lcom/android/server/enterprise/firewall/DomainFilter;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 375
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$mexemptCaptivePortalHostname(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_2e

    goto :goto_4b

    :catch_2e
    move-exception p0

    .line 379
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occured: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    return-void
.end method
