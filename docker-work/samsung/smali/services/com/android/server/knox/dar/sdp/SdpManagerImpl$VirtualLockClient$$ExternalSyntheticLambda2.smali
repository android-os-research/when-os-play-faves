.class public final synthetic Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;->f$2:I

    check-cast p1, Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->$r8$lambda$2DTWkSfGqKLTIjnAeq_vidiYD1E(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/widget/ILockSettings;)V

    return-void
.end method
