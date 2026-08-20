.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$17$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt$17;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$17;Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$17$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$17;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$17$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$17$$ExternalSyntheticLambda0;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$17$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$17;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$17$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$17$$ExternalSyntheticLambda0;->f$2:Landroid/content/ComponentName;

    invoke-static {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$17;->$r8$lambda$4ddlB98qyQvXE5qCxjsiK2jlK-o(Lcom/android/server/policy/PhoneWindowManagerExt$17;Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method
