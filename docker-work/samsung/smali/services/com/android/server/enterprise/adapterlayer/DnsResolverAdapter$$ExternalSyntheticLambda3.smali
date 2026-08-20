.class public final synthetic Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda3;->f$0:Z

    iput p2, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/net/IDnsResolver;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda3;->f$0:Z

    iget p0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->$r8$lambda$djoXl5v9iju7wfH8Y-0Osr1EJ-Y(ZILandroid/net/IDnsResolver;)V

    return-void
.end method
