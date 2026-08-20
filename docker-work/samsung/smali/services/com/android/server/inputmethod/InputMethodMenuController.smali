.class public final Lcom/android/server/inputmethod/InputMethodMenuController;
.super Ljava/lang/Object;
.source "InputMethodMenuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_KEYBOARD_BUTTON_SWITCH:Ljava/lang/String; = "com.samsung.android.intent.action.KEYBOARDBUTTON_SWITCH"

.field public static final ACTION_ONSCREEN_KEYBOARD_SWITCH:Ljava/lang/String; = "com.samsung.android.intent.action.ONSCREENKEYBOARD_SWITCH"

.field public static final ACTION_SELECT_IME_FROM_IME_SWITCHER:Ljava/lang/String; = "com.samsung.android.intent.action.SELECT_IME_FROM_IME_SWITCHER"

.field public static final ACTION_SHOW_IME_SWITCHER:Ljava/lang/String; = "com.samsung.android.intent.action.SHOW_IME_SWITCHER"

.field public static final DEBUG_HARDWARE_KEYBOARD:Z = true

.field public static final GRAY_OUT:Ljava/lang/String; = "grayout"

.field public static final HIDE:Ljava/lang/String; = "hide"

.field public static final ICON_POINTER_PS:Ljava/lang/String; = "%s"

.field public static final IME_SWITCH_BUTTON_VISIBLE:Ljava/lang/String; = "ime_switch_button_visible"

.field public static final KEY:Ljava/lang/String; = "key_show_keyboard_button"

.field public static final PACKAGE_GOOGLE_VOICE_KEYPAD:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final PACKAGE_SAMSUNG_VOICE_KEYPAD:Ljava/lang/String; = "com.samsung.android.svoiceime"

.field public static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SWITCHER_SETTING:Ljava/lang/String; = "switcher_setting"

.field public static final SWTICH_CHECKED:Ljava/lang/String; = "switch_checked"

.field public static final TAG:Ljava/lang/String; = "InputMethodMenuController"

.field public static VAL_NO_MICROPHONE:Ljava/lang/String; = "noMicrophoneKey"

.field public static VAL_NO_MICROPHONE_COMPAT:Ljava/lang/String; = "nm"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field public mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mImeSwitchButtonVisible:Z

.field public mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field public mShowImeWithHardKeyboard:Z

.field public mSubtypeIds:[I

.field public mSwitchInSelectDialogView:Landroid/view/View;

.field public final mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field public mSwitchingDialog:Landroid/app/AlertDialog;

.field public mSwitchingDialogTitleView:Landroid/view/View;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$2cw20qxWsgBwd65V6Cw8V1QSEk8(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodMenuController;->lambda$showInputMethodMenu$0(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$W7u2IcDwusWARGt5NW8-lOGWwDE(Lcom/android/server/inputmethod/InputMethodMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodMenuController;->lambda$sendSALogging$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodMenuController;)Lcom/android/server/inputmethod/InputMethodManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettings(Lcom/android/server/inputmethod/InputMethodMenuController;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSwitchingDialog(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImeSwitchButtonVisible:Z

    .line 154
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 156
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mContext:Landroid/content/Context;

    .line 158
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 159
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 160
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    .line 161
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 162
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-void
.end method

.method private synthetic lambda$sendSALogging$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 6

    .line 931
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p4, :cond_10

    const-string/jumbo p1, "input_method_id"

    .line 934
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    :cond_10
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$showInputMethodMenu$0(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/DialogInterface;I)V
    .registers 8

    .line 371
    const-class p2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p2

    .line 374
    :try_start_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 376
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_1b

    array-length v0, v0

    if-le v0, p3, :cond_1b

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    if-eqz v0, :cond_1b

    array-length v0, v0

    if-gt v0, p3, :cond_1d

    .line 378
    :cond_1b
    monitor-exit p2

    return-void

    .line 381
    :cond_1d
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v0, v0, p3

    .line 382
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    aget v1, v1, p3

    .line 383
    iput p3, p1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 384
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 385
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    if-eqz v0, :cond_53

    if-ltz v1, :cond_37

    .line 387
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    if-lt v1, p1, :cond_38

    :cond_37
    const/4 v1, -0x1

    :cond_38
    const-string p1, "com.samsung.android.intent.action.SELECT_IME_FROM_IME_SWITCHER"

    const-string/jumbo p3, "ime_switch_button_visible"

    .line 391
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImeSwitchButtonVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p3, v2, v3}, Lcom/android/server/inputmethod/InputMethodMenuController;->sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 393
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 395
    :cond_53
    monitor-exit p2

    return-void

    :catchall_55
    move-exception p0

    monitor-exit p2
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw p0
.end method


# virtual methods
.method public final applyStringWithIcon()Landroid/text/SpannableString;
    .registers 6

    .line 865
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040d5a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 866
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "%s"

    .line 867
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 868
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106090e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 869
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x1080b7d

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 870
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 871
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 872
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p0, v0, 0x2

    const/16 v3, 0x11

    .line 873
    invoke-virtual {v1, v2, v0, p0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public final getContextThemeWrapper(Landroid/content/Context;Z)Landroid/content/Context;
    .registers 3

    if-eqz p2, :cond_b

    .line 887
    new-instance p0, Landroid/view/ContextThemeWrapper;

    const p2, 0x10302e3

    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_13

    .line 889
    :cond_b
    new-instance p0, Landroid/view/ContextThemeWrapper;

    const p2, 0x103012b

    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_13
    return-object p0
.end method

.method public final getInputMethodSwitchDialogTitleXmlId(Z)I
    .registers 2

    if-eqz p1, :cond_6

    const p0, 0x10901b6

    goto :goto_9

    :cond_6
    const p0, 0x10901b5

    :goto_9
    return p0
.end method

.method public getShowImeWithHardKeyboard()Z
    .registers 1

    .line 599
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    return p0
.end method

.method public getSwitchingDialogLocked()Landroid/app/AlertDialog;
    .registers 1

    .line 595
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public handleHardKeyboardStatusChange(Z)V
    .registers 5

    .line 613
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 623
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_23

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    if-eqz v2, :cond_23

    .line 624
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 625
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    const v1, 0x1020334

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    goto :goto_20

    :cond_1e
    const/16 p1, 0x8

    .line 626
    :goto_20
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public hideInputMethodMenu()V
    .registers 2

    .line 573
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 574
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 575
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public hideInputMethodMenuLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1a

    .line 583
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 584
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 585
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 587
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked()V

    .line 588
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 589
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 590
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    :cond_1a
    return-void
.end method

.method public final isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 881
    :cond_4
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isScreenLocked()Z
    .registers 2

    .line 541
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 542
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public final isVisibleShowKeyboardSwitch(Landroid/os/Bundle;)Z
    .registers 3

    .line 905
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    move-result v0

    if-nez v0, :cond_23

    if-eqz p1, :cond_13

    const-string/jumbo v0, "hide"

    .line 906
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    :cond_13
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mContext:Landroid/content/Context;

    .line 907
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 908
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->isScreenLocked()Z

    move-result p0

    if-nez p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public final isVoiceInputDisable()Z
    .registers 5

    .line 848
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 849
    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 850
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_1d

    .line 855
    sget-object v3, Lcom/android/server/inputmethod/InputMethodMenuController;->VAL_NO_MICROPHONE_COMPAT:Ljava/lang/String;

    .line 856
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    sget-object v3, Lcom/android/server/inputmethod/InputMethodMenuController;->VAL_NO_MICROPHONE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_1d
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 857
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isPasswordInputType(I)Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_25
    const/4 v1, 0x1

    .line 860
    :cond_26
    sget-object p0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check voice input Disable : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return v1
.end method

.method public isisInputMethodPickerShownForTestLocked()Z
    .registers 1

    .line 603
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 606
    :cond_6
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    const/4 v0, 0x0

    .line 919
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public final sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 13

    .line 930
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 938
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setImeSwitchButtonVisible(Z)V
    .registers 2

    .line 915
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImeSwitchButtonVisible:Z

    return-void
.end method

.method public showInputMethodMenu(ZI)V
    .registers 19

    move-object/from16 v0, p0

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->isVoiceInputDisable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_d

    :cond_b
    move/from16 v1, p1

    .line 174
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->isScreenLocked()Z

    move-result v3

    .line 176
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 177
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v5

    .line 180
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    .line 181
    :try_start_20
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 182
    invoke-virtual {v7, v1, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListForImeMenuLocked(ZZ)Ljava/util/List;

    move-result-object v11

    .line 184
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 185
    monitor-exit v6

    return-void

    .line 188
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    const/4 v7, -0x1

    if-ne v5, v7, :cond_52

    .line 191
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 192
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    if-eqz v8, :cond_52

    .line 194
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v5

    .line 195
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 197
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    .line 196
    invoke-static {v5, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    :cond_52
    move v8, v2

    move v9, v8

    .line 224
    :goto_54
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    const/4 v15, 0x1

    if-ge v8, v10, :cond_93

    .line 225
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 226
    iget-object v10, v10, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 227
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    const-string v12, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    .line 230
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8c

    const-string v12, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    .line 231
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8c

    if-eqz v9, :cond_82

    const-string v12, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 232
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_82

    goto :goto_8c

    :cond_82
    const-string v12, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 235
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_91

    move v9, v15

    goto :goto_91

    .line 233
    :cond_8c
    :goto_8c
    invoke-interface {v11, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    :cond_91
    :goto_91
    add-int/2addr v8, v15

    goto :goto_54

    .line 240
    :cond_93
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .line 241
    new-array v9, v8, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v9, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 242
    new-array v9, v8, [I

    iput-object v9, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    move v9, v2

    move v14, v9

    :goto_a1
    if-ge v9, v8, :cond_d9

    .line 244
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 245
    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v13, v10, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v13, v12, v9

    .line 246
    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    iget v10, v10, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    aput v10, v12, v9

    .line 247
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 248
    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    aget v10, v10, v9

    if-eq v10, v7, :cond_d5

    if-ne v5, v7, :cond_c9

    if-eqz v10, :cond_d5

    :cond_c9
    if-eq v10, v5, :cond_d5

    .line 249
    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v10, v10, v9

    .line 252
    invoke-virtual {v0, v10}, Lcom/android/server/inputmethod/InputMethodMenuController;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v10

    if-eqz v10, :cond_d6

    :cond_d5
    move v14, v9

    :cond_d6
    add-int/lit8 v9, v9, 0x1

    goto :goto_a1

    .line 259
    :cond_d9
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_1b0

    .line 260
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListForImeMenuLocked(ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1b0

    .line 265
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 266
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 267
    new-array v4, v3, [Landroid/view/inputmethod/InputMethodInfo;

    .line 268
    new-array v5, v3, [Ljava/lang/String;

    move v7, v2

    move v8, v7

    .line 271
    :goto_f8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_144

    .line 272
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 273
    iget-object v9, v9, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 274
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    const-string v12, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13b

    .line 275
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    const-string v12, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13b

    if-eqz v8, :cond_12d

    const-string v10, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 277
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12d

    goto :goto_13b

    .line 281
    :cond_12d
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_142

    move v8, v15

    goto :goto_142

    .line 278
    :cond_13b
    :goto_13b
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v3, v3, -0x1

    :cond_142
    :goto_142
    add-int/2addr v7, v15

    goto :goto_f8

    :cond_144
    move v7, v2

    move v8, v7

    :goto_146
    if-ge v7, v3, :cond_1b0

    .line 288
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 289
    iget-object v10, v9, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v10, v4, v7

    .line 290
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    const-string v12, "com.samsung.android.honeyboard"

    .line 291
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_174

    aget-object v10, v5, v7

    const-string v12, "com.google.android.googlequicksearchbox"

    .line 292
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_174

    aget-object v10, v5, v7

    const-string v12, "com.samsung.android.svoiceime"

    .line 293
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1ad

    .line 294
    :cond_174
    sget-object v10, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IMMS: showInputMethodMenuInternal() -checkitem : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v14, v7, :cond_1ab

    .line 297
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMMS: showInputMethodMenuInternal() checkedItem==i -checkitem : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " i =  "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ab
    add-int/lit8 v8, v8, 0x1

    :cond_1ad
    add-int/lit8 v7, v7, 0x1

    goto :goto_146

    .line 305
    :cond_1b0
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1c2

    move v1, v15

    goto :goto_1c3

    :cond_1c2
    move v1, v2

    .line 307
    :goto_1c3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    .line 308
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v3

    .line 309
    invoke-virtual {v0, v3, v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->getContextThemeWrapper(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v3

    .line 310
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 319
    new-instance v5, Lcom/android/server/inputmethod/InputMethodMenuController$1;

    invoke-direct {v5, v0}, Lcom/android/server/inputmethod/InputMethodMenuController$1;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 328
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 329
    sget-object v4, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v5, 0x101005d

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v4, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x2

    .line 332
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 334
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 336
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 338
    const-class v4, Landroid/view/LayoutInflater;

    invoke-virtual {v9, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 344
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->getInputMethodSwitchDialogTitleXmlId(Z)I

    move-result v1

    invoke-virtual {v4, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 346
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 366
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    const v10, 0x10901b7

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 369
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v13

    const/4 v5, 0x0

    move-object v8, v1

    move v12, v14

    move v2, v14

    move-object v14, v5

    invoke-direct/range {v8 .. v14}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;IILcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter-IA;)V

    .line 370
    new-instance v5, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v1}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)V

    .line 397
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x10901b4

    .line 401
    invoke-virtual {v4, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 402
    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    const v2, 0x1020334

    .line 406
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 407
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_249

    const/4 v4, 0x0

    goto :goto_24a

    :cond_249
    move v4, v5

    :goto_24a
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    const v4, 0x1020335

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 410
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 411
    sget-object v4, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ShowIME with HW Keyboard: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getShowImeWithHardKeyboardValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v2}, Landroid/widget/Switch;->semSetSamsungBasicInteraction()V

    .line 413
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getShowImeWithHardKeyboardValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 414
    new-instance v4, Lcom/android/server/inputmethod/InputMethodMenuController$2;

    invoke-direct {v4, v0}, Lcom/android/server/inputmethod/InputMethodMenuController$2;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 436
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    move-result-object v2

    const-string v4, "com.android.settings"

    .line 437
    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "key_show_keyboard_button"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 438
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodMenuController;->isVisibleShowKeyboardSwitch(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_2b7

    if-eqz v2, :cond_2b7

    const-string/jumbo v7, "grayout"

    .line 440
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b7

    move v2, v15

    goto :goto_2b8

    :cond_2b7
    const/4 v2, 0x0

    .line 442
    :goto_2b8
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    const v8, 0x10205b1

    .line 443
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v4, :cond_2c4

    const/4 v5, 0x0

    .line 444
    :cond_2c4
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    const v7, 0x10205b2

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    .line 449
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040deb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    const v9, 0x1020396

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 452
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v15, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 453
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->applyStringWithIcon()Landroid/text/SpannableString;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    .line 457
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_316

    const/16 v9, 0x3231

    .line 460
    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    .line 462
    invoke-virtual {v8, v7}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 465
    :cond_316
    invoke-virtual {v5}, Landroid/widget/Switch;->semSetSamsungBasicInteraction()V

    if-nez v2, :cond_31d

    move v11, v15

    goto :goto_31e

    :cond_31d
    const/4 v11, 0x0

    .line 466
    :goto_31e
    invoke-virtual {v5, v11}, Landroid/widget/Switch;->setEnabled(Z)V

    if-eqz v4, :cond_32d

    .line 467
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowKeyboardButton()Z

    move-result v2

    if-eqz v2, :cond_32d

    move v11, v15

    goto :goto_32e

    :cond_32d
    const/4 v11, 0x0

    :goto_32e
    invoke-virtual {v5, v11}, Landroid/widget/Switch;->setChecked(Z)V

    .line 468
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuController$3;

    invoke-direct {v2, v0}, Lcom/android/server/inputmethod/InputMethodMenuController$3;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 486
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v2

    if-nez v2, :cond_343

    if-eqz v4, :cond_348

    .line 487
    :cond_343
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 491
    :cond_348
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 493
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuController$4;

    invoke-direct {v2, v0}, Lcom/android/server/inputmethod/InputMethodMenuController$4;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 509
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDEXStandAloneMode()Z

    move-result v1

    if-eqz v1, :cond_36a

    .line 510
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 513
    :cond_36a
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v15}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 514
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v4, 0x7dc

    .line 516
    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 517
    invoke-virtual {v1, v15}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 521
    invoke-virtual {v3}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 522
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v3, "Select input method"

    .line 523
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 525
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked()V

    .line 526
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 527
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const-string v1, "com.samsung.android.intent.action.SHOW_IME_SWITCHER"

    const-string/jumbo v2, "ime_switch_button_visible"

    .line 530
    iget-boolean v3, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImeSwitchButtonVisible:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodMenuController;->sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 532
    monitor-exit v6

    return-void

    :catchall_3b4
    move-exception v0

    monitor-exit v6
    :try_end_3b6
    .catchall {:try_start_20 .. :try_end_3b6} :catchall_3b4

    throw v0
.end method

.method public updateKeyboardFromSettingsLocked()V
    .registers 5

    .line 547
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    .line 557
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    if-eqz v1, :cond_3e

    .line 559
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 560
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    const v1, 0x1020335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 564
    sget-object v1, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HARDWARE_KEYBOARD] mShowImeWithHardKeyboard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_3e
    return-void
.end method
