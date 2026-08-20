.class public Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HotKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;
    }
.end annotation


# static fields
.field public static final GUIDE_DIALOG_TITLE:Ljava/lang/String; = "HotKeyGuideDialog"

.field public static final GUIDE_MESSAGE_TIMEOUT:I = 0x3

.field public static final LAUNCH_TIMEOUT:I = 0xbb8


# instance fields
.field public guideDialog:Landroid/app/AlertDialog;

.field public isTriggered:Z

.field public keyCode:I

.field public registerAppRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public static synthetic $r8$lambda$E34iZZawTpTWjOYlrLoLZDdr43c(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->lambda$showGuideDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y8l4Juj-zhTfCcYBCBOc5sZU9Dg(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->lambda$showGuideDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dSInbYOVHwf0O1SUg8GTs3-sICA(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->lambda$launchApp$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetisTriggered(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetkeyCode(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->keyCode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputisTriggered(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$misMatchWithLauncherApps(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isMatchWithLauncherApps(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 4665
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4659
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 4660
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->keyCode:I

    const/4 p1, 0x0

    .line 4662
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Ljava/lang/Runnable;

    .line 4663
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    .line 4666
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$launchApp$0()V
    .registers 1

    .line 4763
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->showGuideDialog()V

    return-void
.end method

.method public static synthetic lambda$showGuideDialog$1(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 4796
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showGuideDialog$2(Landroid/content/DialogInterface;)V
    .registers 2

    const/4 p1, 0x0

    .line 4798
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final cancelLaunchAppPendingAction()V
    .registers 2

    .line 4732
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isMatchWithLauncherApps(Ljava/lang/String;)Z
    .registers 4

    .line 4736
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 4737
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4738
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 4739
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1c

    return v1

    .line 4743
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 4744
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_38
    return v1
.end method

.method public launchApp(II)V
    .registers 6

    .line 4752
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    if-nez v0, :cond_5

    return-void

    .line 4756
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->cancelLaunchAppPendingAction()V

    const/4 v0, 0x0

    .line 4757
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 4758
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 4759
    invoke-virtual {v1, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getHotKeyComponentName(I)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_29

    const-string p1, "PhoneWindowManagerExt"

    const-string p2, "Can not launch hotkey app. The package info is empty."

    .line 4761
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4768
    :cond_29
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4769
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 4771
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 4772
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    .line 4773
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4775
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4777
    :cond_4f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToastIfNeeded(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_58

    return-void

    .line 4780
    :cond_58
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmShortcutLaunchPolicy(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    move-result-object p0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(ILandroid/content/ComponentName;I)Z

    return-void
.end method

.method public registerAppInfo(I)V
    .registers 4

    .line 4670
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1d

    .line 4671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerAppHotKey isTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    :cond_1d
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->keyCode:I

    const/4 p1, 0x1

    .line 4674
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 4675
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->cancelLaunchAppPendingAction()V

    .line 4676
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final showGuideDialog()V
    .registers 8

    .line 4785
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    const-string p0, "PhoneWindowManagerExt"

    const-string/jumbo v0, "showHotKeyGuideDialog is showing"

    .line 4786
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4790
    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x10405e0

    .line 4791
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4792
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1150006

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 4794
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 4792
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    .line 4795
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4797
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 4800
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    .line 4801
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "HotKeyGuideDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4802
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 4804
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
