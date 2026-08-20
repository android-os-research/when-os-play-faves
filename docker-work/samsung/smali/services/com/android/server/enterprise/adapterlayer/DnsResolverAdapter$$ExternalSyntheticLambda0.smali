.class public final synthetic Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Landroid/net/ResolverParamsParcel;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ResolverParamsParcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/net/ResolverParamsParcel;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/net/IDnsResolver;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/net/ResolverParamsParcel;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->$r8$lambda$QMABR3zVReP6LZM8PqL_5KBKFDY(Landroid/net/ResolverParamsParcel;Landroid/net/IDnsResolver;)V

    return-void
.end method
