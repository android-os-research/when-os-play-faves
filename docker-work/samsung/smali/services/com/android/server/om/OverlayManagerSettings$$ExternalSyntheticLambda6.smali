.class public final synthetic Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/Predicate;

    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/Predicate;

    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {v0, p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->$r8$lambda$yeIo4dsq_4SqI7mm7YZF4uVN30o(Ljava/util/function/Predicate;ILandroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method
