.class public final Lcom/android/server/policy/GlobalKeyIntent;
.super Ljava/lang/Object;
.source "GlobalKeyIntent.java"


# static fields
.field public static final EXTRA_BEGAN_FROM_NON_INTERACTIVE:Ljava/lang/String; = "EXTRA_BEGAN_FROM_NON_INTERACTIVE"


# instance fields
.field public final mBeganFromNonInteractive:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/view/KeyEvent;Z)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mComponentName:Landroid/content/ComponentName;

    .line 39
    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, p2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object p1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 40
    iput-boolean p3, p0, Lcom/android/server/policy/GlobalKeyIntent;->mBeganFromNonInteractive:Z

    return-void
.end method

.method public static from(Landroid/content/Intent;)Lcom/android/server/policy/GlobalKeyIntent;
    .registers 4

    .line 74
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GLOBAL_BUTTON"

    if-eq v0, v1, :cond_11

    const-string p0, "GlobalKeyIntent"

    const-string v0, "Intent should be ACTION_GLOBAL_BUTTON"

    .line 75
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_11
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const-string v2, "EXTRA_BEGAN_FROM_NON_INTERACTIVE"

    .line 81
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 82
    new-instance v2, Lcom/android/server/policy/GlobalKeyIntent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/policy/GlobalKeyIntent;-><init>(Landroid/content/ComponentName;Landroid/view/KeyEvent;Z)V

    return-object v2
.end method


# virtual methods
.method public beganFromNonInteractive()Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lcom/android/server/policy/GlobalKeyIntent;->mBeganFromNonInteractive:Z

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 4

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GLOBAL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mComponentName:Landroid/content/ComponentName;

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mKeyEvent:Landroid/view/KeyEvent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/policy/GlobalKeyIntent;->mBeganFromNonInteractive:Z

    const-string v1, "EXTRA_BEGAN_FROM_NON_INTERACTIVE"

    .line 48
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getKeyEvent()Landroid/view/KeyEvent;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/policy/GlobalKeyIntent;->mKeyEvent:Landroid/view/KeyEvent;

    return-object p0
.end method
