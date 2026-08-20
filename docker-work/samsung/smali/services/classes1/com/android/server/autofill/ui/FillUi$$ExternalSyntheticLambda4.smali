.class public final synthetic Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;

.field public final synthetic f$1:Landroid/service/autofill/FillResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;->f$1:Landroid/service/autofill/FillResponse;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;->f$1:Landroid/service/autofill/FillResponse;

    invoke-static {v0, p0, p1}, Lcom/android/server/autofill/ui/FillUi;->$r8$lambda$MrOAnboCzueaBwwduk80mo8t6J4(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method
