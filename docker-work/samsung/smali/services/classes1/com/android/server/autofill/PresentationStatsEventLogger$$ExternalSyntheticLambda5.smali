.class public final synthetic Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;->f$0:I

    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->$r8$lambda$4fZiSBDMdcT1MOvjYSMln2fbF_Q(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method
