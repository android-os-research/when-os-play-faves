.class public final synthetic Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:[B

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>([BJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;->f$0:[B

    iput-wide p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;->f$1:J

    iput p4, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;->f$0:[B

    iget-wide v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;->f$1:J

    iget p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->$r8$lambda$bw0CKvIaIdUJeRIMefA1OhM_KA4([BJILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method
