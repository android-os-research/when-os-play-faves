.class public final synthetic Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iput p2, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFilterComplete(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iget p0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/android/server/autofill/ui/FillUi;->$r8$lambda$IKp4uKqNFLpaXAxRtiMd5BMeoyc(Lcom/android/server/autofill/ui/FillUi;II)V

    return-void
.end method
