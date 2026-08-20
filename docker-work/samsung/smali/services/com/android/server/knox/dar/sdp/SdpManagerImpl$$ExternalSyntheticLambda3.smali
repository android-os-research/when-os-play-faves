.class public final synthetic Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;->f$0:I

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;->f$2:I

    check-cast p1, Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->$r8$lambda$Bni0A_Nptmz0mFfiMMCdwAeK1LI(ILjava/lang/String;ILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method
