.class public final synthetic Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

.field public final synthetic f$1:Landroid/net/ConnectivityManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;->f$1:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;->f$1:Landroid/net/ConnectivityManager;

    invoke-static {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->$r8$lambda$aO5daDTWQhYFLQMKMv577rVZI_0(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;)V

    return-void
.end method
