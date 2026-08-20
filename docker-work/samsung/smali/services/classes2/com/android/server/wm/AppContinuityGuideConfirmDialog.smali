.class public Lcom/android/server/wm/AppContinuityGuideConfirmDialog;
.super Ljava/lang/Object;
.source "AppContinuityGuideConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;,
        Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;
    }
.end annotation


# static fields
.field public static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field public static final DEBUG:Z = false

.field public static final FOLDED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AppContinuityGuideConfirmation"

.field public static final UNFOLDED:I = 0x1

.field public static final USER_USED_APP_CONTINUITY_SETTING_TRUE:I = 0x1


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

.field public mConfirmedFolded:Z

.field public mConfirmedUnfolded:Z

.field public final mContext:Landroid/content/Context;

.field public final mDoConfirmFolded:Ljava/lang/Runnable;

.field public final mDoConfirmUnfolded:Ljava/lang/Runnable;

.field public final mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

.field public mLauncherIntent:Landroid/content/Intent;

.field public mShowing:Z

.field public mUserUsedAppContinuitySetting:Z

.field public mWindowManager:Landroid/view/WindowManager;

.field public final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$1Ens3dxJBv3SqoV-gCFfZCGrqwY(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Jvmzdh1baPFlyOHahN8qlDFZnbs(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAtmService(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmUserUsedAppContinuitySetting(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mUserUsedAppContinuitySetting:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBubbleLayoutParams(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetWindowManager(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Landroid/view/WindowManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleHide(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->handleHide()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleShow(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;ZLcom/android/server/wm/Task;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->handleShow(ZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mUserUsedAppContinuitySetting:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedFolded:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedUnfolded:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mShowing:Z

    .line 86
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mWindowToken:Landroid/os/IBinder;

    .line 210
    new-instance v0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)V

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mDoConfirmUnfolded:Ljava/lang/Runnable;

    .line 223
    new-instance v0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)V

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mDoConfirmFolded:Ljava/lang/Runnable;

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 98
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mContext:Landroid/content/Context;

    .line 99
    new-instance p1, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    .line 100
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->loadSetting()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 212
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedUnfolded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedUnfolded:Z

    const-string/jumbo v0, "persist.always.show.app.continuity.guide.dialog"

    .line 214
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 215
    iput-boolean v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedUnfolded:Z

    .line 217
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->saveSetting()V

    .line 219
    :cond_16
    iput-boolean v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mShowing:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->handleHide()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedFolded:Z

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mShowing:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->handleHide()V

    return-void
.end method


# virtual methods
.method public final getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .line 263
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x31

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method public final getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 231
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e1

    const v4, 0x1000322

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 241
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 242
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "AppContinuityGuideConfirmGuideDialog"

    .line 243
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x3dcccccd    # 0.1f

    .line 244
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v0, 0x40

    .line 245
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const v0, 0x1030305

    .line 247
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 248
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mWindowToken:Landroid/os/IBinder;

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p0, 0x1

    .line 249
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object v6
.end method

.method public final getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_11

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 259
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public final handleHide()V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    if-eqz v0, :cond_10

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    :cond_10
    return-void
.end method

.method public final handleShow(ZLcom/android/server/wm/Task;)V
    .registers 10

    .line 189
    new-instance v6, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_9

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mDoConfirmFolded:Ljava/lang/Runnable;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mDoConfirmUnfolded:Ljava/lang/Runnable;

    :goto_b
    move-object v3, v0

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;Landroid/content/Context;Ljava/lang/Runnable;ZLcom/android/server/wm/Task;)V

    iput-object v6, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    .line 191
    iget-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    if-eq p1, p2, :cond_2e

    .line 193
    iget-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 198
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public hide()V
    .registers 3

    .line 179
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mShowing:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mShowing:Z

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_13
    return-void
.end method

.method public final isLauncherAppsPackage(Ljava/lang/String;I)Z
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mLauncherIntent:Landroid/content/Intent;

    if-nez v0, :cond_17

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mLauncherIntent:Landroid/content/Intent;

    .line 147
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mLauncherIntent:Landroid/content/Intent;

    const/high16 v1, 0xc0000

    invoke-virtual {v0, p0, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 153
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 154
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    const/4 p0, 0x1

    return p0

    .line 158
    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not found in LauncherApps."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppContinuityGuideConfirmation"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final loadSetting()V
    .registers 4

    .line 123
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->updateUserUsedAppContinuitySetting()V

    .line 124
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedUnfolded:Z

    if-nez v0, :cond_1c

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "app_continuity_guide_confirmation_unfolded"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "confirmed"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedUnfolded:Z

    :cond_1c
    return-void
.end method

.method public final saveSetting()V
    .registers 4

    .line 134
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedUnfolded:Z

    if-eqz v0, :cond_7

    const-string v0, "confirmed"

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 135
    :goto_8
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "app_continuity_guide_confirmation_unfolded"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public shouldShowAppContinuityGuide()Z
    .registers 1

    .line 104
    iget-boolean p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedUnfolded:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public show(ZLcom/android/server/wm/Task;)V
    .registers 6

    if-eqz p1, :cond_15

    .line 163
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mConfirmedFolded:Z

    if-nez v0, :cond_14

    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 164
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/android/server/wm/Task;->mUserId:I

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->isLauncherAppsPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    return-void

    .line 168
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mShowing:Z

    if-nez v0, :cond_35

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    xor-int/2addr p1, v2

    .line 170
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 171
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    iput-boolean v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mShowing:Z

    .line 173
    iget-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_35
    return-void
.end method

.method public final updateUserUsedAppContinuitySetting()V
    .registers 5

    .line 108
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mUserUsedAppContinuitySetting:Z

    if-nez v0, :cond_19

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "user_used_app_continuity_setting"

    const/4 v3, 0x0

    .line 109
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    move v3, v1

    :cond_17
    iput-boolean v3, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->mUserUsedAppContinuitySetting:Z

    :cond_19
    return-void
.end method
