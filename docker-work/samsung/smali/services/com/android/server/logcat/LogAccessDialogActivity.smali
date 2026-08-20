.class public Lcom/android/server/logcat/LogAccessDialogActivity;
.super Landroid/app/Activity;
.source "LogAccessDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DIALOG_TIME_OUT:I

.field public static final MSG_DISMISS_DIALOG:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAlert:Landroid/app/AlertDialog;

.field public mAlertDialog:Landroid/app/AlertDialog$Builder;

.field public mAlertTitle:Ljava/lang/String;

.field public mAlertView:Landroid/view/View;

.field public mHandler:Landroid/os/Handler;

.field public final mLogcatManagerInternal:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

.field public mPackageName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public static synthetic $r8$lambda$8TbY_jXQghMrK4tSBKVUrnF1ius(Lcom/android/server/logcat/LogAccessDialogActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/logcat/LogAccessDialogActivity;->lambda$onCreate$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TOfh_TkE9WlCR-h1qs8lKRTBypI(Lcom/android/server/logcat/LogAccessDialogActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/logcat/LogAccessDialogActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAlert(Lcom/android/server/logcat/LogAccessDialogActivity;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAlert(Lcom/android/server/logcat/LogAccessDialogActivity;Landroid/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeclineLogAccess(Lcom/android/server/logcat/LogAccessDialogActivity;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->declineLogAccess()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    .line 49
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_10

    const v0, 0xea60

    goto :goto_13

    :cond_10
    const v0, 0x493e0

    :goto_13
    sput v0, Lcom/android/server/logcat/LogAccessDialogActivity;->DIALOG_TIME_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-class v0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    .line 53
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mLogcatManagerInternal:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    .line 136
    new-instance v0, Lcom/android/server/logcat/LogAccessDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/server/logcat/LogAccessDialogActivity$1;-><init>(Lcom/android/server/logcat/LogAccessDialogActivity;)V

    iput-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;)V
    .registers 2

    .line 94
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->declineLogAccess()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/content/DialogInterface;)V
    .registers 2

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final createView(I)Landroid/view/View;
    .registers 4

    .line 173
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 174
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x10900b8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3e

    const v0, 0x10203c1

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertTitle:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x10203be

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 185
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x10203c0

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 188
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 178
    :cond_3e
    new-instance p0, Landroid/view/InflateException;

    invoke-direct {p0}, Landroid/view/InflateException;-><init>()V

    throw p0
.end method

.method public final declineLogAccess()V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mLogcatManagerInternal:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    iget v1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mUid:I

    iget-object p0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->declineAccessForClient(ILjava/lang/String;)V

    return-void
.end method

.method public final getTitleString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 159
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    const/high16 v0, 0x10000000

    .line 157
    invoke-virtual {p0, p2, v0, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 159
    invoke-virtual {p2, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    const p0, 0x10406e5

    .line 161
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x10203be

    if-eq p1, v0, :cond_16

    const v0, 0x10203c0

    if-eq p1, v0, :cond_f

    goto :goto_22

    .line 202
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->declineLogAccess()V

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_22

    .line 198
    :cond_16
    iget-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mLogcatManagerInternal:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    iget v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mUid:I

    iget-object v1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->approveAccessForClient(ILjava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogAccessDialogActivity;->readIntentInfo(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 69
    sget-object p1, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    const-string v0, "Invalid Intent extras, finishing"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 76
    :cond_18
    :try_start_18
    iget-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mUid:I

    invoke-virtual {p0, p0, p1, v0}, Lcom/android/server/logcat/LogAccessDialogActivity;->getTitleString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertTitle:Ljava/lang/String;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_22} :catch_79

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ne p1, v0, :cond_35

    const/4 p1, 0x1

    goto :goto_36

    :cond_35
    move p1, v1

    :goto_36
    if-eqz p1, :cond_3c

    const p1, 0x10302d1

    goto :goto_3f

    :cond_3c
    const p1, 0x10302d2

    .line 89
    :goto_3f
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogAccessDialogActivity;->createView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertView:Landroid/view/View;

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 94
    iget-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/logcat/LogAccessDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    iget-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/logcat/LogAccessDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    iget-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    .line 99
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 102
    iget-object p0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mHandler:Landroid/os/Handler;

    sget p1, Lcom/android/server/logcat/LogAccessDialogActivity;->DIALOG_TIME_OUT:I

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catch_79
    move-exception p1

    .line 78
    sget-object v0, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to fetch label of package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/server/logcat/LogAccessDialogActivity;->declineLogAccess()V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 109
    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_18
    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    return-void
.end method

.method public final readIntentInfo(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 116
    sget-object p0, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    const-string p1, "Intent is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 120
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_34

    :cond_1c
    const-string v1, "android.intent.extra.UID"

    .line 126
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 127
    sget-object p0, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    const-string p1, "Missing EXTRA_UID"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 131
    :cond_2c
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity;->mUid:I

    const/4 p0, 0x1

    return p0

    .line 122
    :cond_34
    :goto_34
    sget-object p0, Lcom/android/server/logcat/LogAccessDialogActivity;->TAG:Ljava/lang/String;

    const-string p1, "Missing package name extra"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
