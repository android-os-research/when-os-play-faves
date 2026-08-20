.class public final synthetic Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->$r8$lambda$8bqtlm-Pil576T0CDHr6qEO9AEk(Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
