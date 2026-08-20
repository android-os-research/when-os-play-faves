.class public Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodMenuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mCheckedItem:I

.field public mContext:Landroid/content/Context;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsKidsMode:Z

.field public final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mTextViewResourceId:I

.field public final mUserId:I

.field public final settingButtonViewId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mUserId:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;II)V"
        }
    .end annotation

    .line 650
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/16 v0, 0x5ac

    .line 640
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->settingButtonViewId:I

    .line 652
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 653
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 654
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 655
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 658
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    .line 659
    iput p5, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mUserId:I

    .line 660
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->isKidsModeRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mIsKidsMode:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILjava/util/List;IILcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    return-void
.end method


# virtual methods
.method public final addSettingButton(Landroid/view/View;)V
    .registers 9

    .line 700
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 701
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 705
    :cond_14
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_30

    .line 706
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    :cond_30
    :try_start_30
    const-string/jumbo v0, "package"

    .line 711
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3f} :catch_42

    if-eqz v0, :cond_4b

    return-void

    .line 716
    :catch_42
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Security Startup has RemoteException, Ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_4b
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 721
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x5ac

    .line 722
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 723
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a71

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 724
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10601e3

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 725
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 727
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 728
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 729
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10501a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 730
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 731
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 732
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 734
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x108082f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 735
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x11

    .line 736
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 737
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040bee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 738
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 739
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x1

    .line 740
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 741
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 744
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->isSettingButtonEnabled()Z

    move-result v1

    .line 745
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 746
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 749
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 750
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter$1;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final clearSettingButton(Landroid/view/View;)V
    .registers 2

    const/16 p0, 0x5ac

    .line 774
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_f

    .line 776
    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    if-eqz p2, :cond_3

    goto :goto_c

    .line 667
    :cond_3
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_c
    if-ltz p1, :cond_8a

    .line 668
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p1, p3, :cond_17

    goto :goto_8a

    .line 669
    :cond_17
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 670
    iget-object v0, p3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 671
    iget-object v1, p3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    const v2, 0x1020014

    .line 672
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1020015

    .line 673
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 675
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->clearSettingButton(Landroid/view/View;)V

    .line 677
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v4, :cond_48

    .line 678
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_79

    .line 681
    :cond_48
    iget-object v4, p3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.samsung.android.honeyboard"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 682
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 684
    iget-object p3, p3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_79

    iget-boolean p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mIsKidsMode:Z

    if-nez p3, :cond_79

    .line 685
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->addSettingButton(Landroid/view/View;)V

    goto :goto_79

    .line 689
    :cond_70
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_79
    :goto_79
    const p3, 0x10204cb

    .line 693
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    .line 694
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, p0, :cond_87

    const/4 v5, 0x1

    :cond_87
    invoke-virtual {p3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_8a
    :goto_8a
    return-object p2
.end method

.method public final isHoneyboardSupported()Z
    .registers 5

    .line 830
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.honeyboard"

    .line 833
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 836
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHoneyboardSupport : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " package name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isKidsModeRunning()Z
    .registers 4

    .line 783
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.kidshome"

    const-string v2, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 786
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 787
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 788
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 789
    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_3e

    .line 792
    :catch_33
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodMenuController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "kidsRunning check exception"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_3e
    return p0
.end method

.method public final isSettingButtonEnabled()Z
    .registers 9

    const-string/jumbo v0, "keyboard_setting_enable"

    .line 802
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 804
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->isHoneyboardSupported()Z

    move-result v1

    const/4 v7, 0x1

    if-nez v1, :cond_f

    return v7

    .line 808
    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    .line 809
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 808
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_61

    if-eqz p0, :cond_5c

    .line 812
    :try_start_24
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5c

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 814
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 815
    invoke-static {p0, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 816
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 818
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 819
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_51
    .catchall {:try_start_24 .. :try_end_51} :catchall_52

    goto :goto_5c

    :catchall_52
    move-exception v0

    .line 808
    :try_start_53
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p0

    :try_start_58
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw v0

    :cond_5c
    :goto_5c
    if-eqz p0, :cond_61

    .line 821
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_61

    :catch_61
    :cond_61
    return v7
.end method
