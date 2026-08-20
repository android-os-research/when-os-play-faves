.class public final synthetic Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/net/IDnsResolver;)V
    .registers 2

    iget p0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {p0, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->$r8$lambda$qH5_vTyInMmnv42jfI_DklHgaSs(ILandroid/net/IDnsResolver;)V

    return-void
.end method
