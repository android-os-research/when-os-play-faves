.class public Lcom/android/internal/app/UnlaunchableAppActivity;
.super Landroid/app/Activity;
.source "UnlaunchableAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final blacklist EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final blacklist TAG:Ljava/lang/String; = "UnlaunchableAppActivity"

.field private static final blacklist UNLAUNCHABLE_REASON_QUIET_MODE:I = 0x1


# instance fields
.field private blacklist mReason:I

.field private blacklist mTarget:Landroid/content/IntentSender;

.field private blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static final blacklist createBaseIntent()Landroid/content/Intent;
    .registers 4

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/internal/app/UnlaunchableAppActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 142
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    return-object v0
.end method

.method public static blacklist createInQuietModeDialogIntent(I)Landroid/content/Intent;
    .registers 4
    .param p0, "userId"    # I

    .line 147
    invoke-static {}, Lcom/android/internal/app/UnlaunchableAppActivity;->createBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "unlaunchable_reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    return-object v0
.end method

.method public static blacklist createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "target"    # Landroid/content/IntentSender;

    .line 154
    invoke-static {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    return-object v0
.end method

.method private blacklist getDialogMessage()Ljava/lang/String;
    .registers 4

    .line 119
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;)V

    const-string v2, "Core.UNLAUNCHABLE_APP_WORK_PAUSED_MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDialogTitle()Ljava/lang/String;
    .registers 4

    .line 114
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;)V

    const-string v2, "Core.UNLAUNCHABLE_APP_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkProfileName()Ljava/lang/String;
    .registers 3

    .line 109
    const-string v0, "getContainerLabel"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 110
    .local v1, "knoxInfo":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic blacklist lambda$getDialogMessage$1$com-android-internal-app-UnlaunchableAppActivity()Ljava/lang/String;
    .registers 4

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWorkProfileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x1040f81

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getDialogTitle$0$com-android-internal-app-UnlaunchableAppActivity()Ljava/lang/String;
    .registers 4

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWorkProfileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x1040f82

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$onClick$2$com-android-internal-app-UnlaunchableAppActivity(Landroid/os/UserManager;)V
    .registers 5
    .param p1, "userManager"    # Landroid/os/UserManager;

    .line 134
    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    .line 135
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    .line 134
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z

    return-void
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 131
    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1d

    .line 132
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 133
    .local v0, "userManager":Landroid/os/UserManager;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;Landroid/os/UserManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    .end local v0    # "userManager":Landroid/os/UserManager;
    :cond_1d
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "unlaunchable_reason"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    .line 65
    const-string v2, "android.intent.extra.user_handle"

    const/16 v4, -0x2710

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    .line 66
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    iput-object v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    .line 68
    iget v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    const-string v5, "UnlaunchableAppActivity"

    if-ne v2, v4, :cond_51

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Stopping."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    .line 71
    return-void

    .line 75
    :cond_51
    const/4 v2, 0x0

    .line 76
    .local v2, "dialogMessage":Ljava/lang/String;
    iget v4, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    if-ne v4, v0, :cond_ae

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040f83

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "dialogTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040f8b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 92
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 93
    invoke-virtual {v5, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 94
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    iget v6, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    const/4 v7, 0x0

    if-ne v6, v0, :cond_8f

    .line 95
    const v6, 0x1040f84

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v8, 0x1040000

    .line 96
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_95

    .line 98
    :cond_8f
    const v6, 0x104000a

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    :goto_95
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 101
    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->create()V

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 104
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 105
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 106
    return-void

    .line 85
    .end local v4    # "dialogTitle":Ljava/lang/String;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    :cond_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid unlaunchable type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    .line 87
    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    .line 127
    return-void
.end method
