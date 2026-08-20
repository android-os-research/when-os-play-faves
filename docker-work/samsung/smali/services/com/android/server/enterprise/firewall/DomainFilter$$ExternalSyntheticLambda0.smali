.class public final synthetic Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/firewall/DomainFilter;

.field public final synthetic f$1:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$1:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$1:Landroid/net/Network;

    invoke-static {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->$r8$lambda$qid9NYqEtrFg3QvT8dKFC62PsAI(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V

    return-void
.end method
