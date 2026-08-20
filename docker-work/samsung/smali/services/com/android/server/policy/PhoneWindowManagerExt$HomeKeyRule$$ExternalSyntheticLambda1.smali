.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

.field public final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;Landroid/view/KeyEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent;

    invoke-static {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$lambda$Zrhb4SMX00uzbAe_nqTUyZ39K9E(Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;Landroid/view/KeyEvent;)V

    return-void
.end method
