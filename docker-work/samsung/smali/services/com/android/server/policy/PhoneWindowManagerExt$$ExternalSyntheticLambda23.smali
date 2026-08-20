.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->$r8$lambda$W4D9fIm3nk61E6zPESsBu8uIS1k(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p0

    return p0
.end method
