.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda0;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda0;->f$1:Landroid/view/KeyEvent;

    invoke-static {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$lambda$3FzJU70loiAV42J8LEixP7w057M(Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;Landroid/view/KeyEvent;)V

    return-void
.end method
