.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public final synthetic f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuController;->$r8$lambda$2cw20qxWsgBwd65V6Cw8V1QSEk8(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method
