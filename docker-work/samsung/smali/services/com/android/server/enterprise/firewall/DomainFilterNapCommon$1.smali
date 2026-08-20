.class public Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DomainFilterNapCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5

    .line 46
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->-$$Nest$mhasFeatureEnabled(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 49
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->-$$Nest$mupdateEnforceDnsUidForNetwork(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;IZ)V

    :cond_32
    return-void
.end method
