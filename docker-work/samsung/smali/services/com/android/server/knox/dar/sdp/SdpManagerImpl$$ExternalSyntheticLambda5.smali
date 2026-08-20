.class public final synthetic Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda5;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda5;->f$0:I

    check-cast p1, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->$r8$lambda$HTvIZ9allYXEi0JVmDs8wzSIfzA(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
