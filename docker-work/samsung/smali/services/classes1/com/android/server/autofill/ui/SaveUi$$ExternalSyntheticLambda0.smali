.class public final synthetic Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/SaveUi;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Landroid/service/autofill/SaveInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/CheckBox;Landroid/service/autofill/SaveInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;->f$2:Landroid/service/autofill/SaveInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;->f$2:Landroid/service/autofill/SaveInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->$r8$lambda$nPOhPJDX9Df3wvzoSJOLnsZ4RJc(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/CheckBox;Landroid/service/autofill/SaveInfo;Landroid/view/View;)V

    return-void
.end method
