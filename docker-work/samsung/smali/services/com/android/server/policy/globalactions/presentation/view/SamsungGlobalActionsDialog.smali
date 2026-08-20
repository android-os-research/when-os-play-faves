.class public Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;
.super Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;
.source "SamsungGlobalActionsDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SamsungGlobalActionsDialog"


# instance fields
.field public final mOnDismiss:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V
    .registers 5

    .line 36
    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;

    invoke-direct {v0}, Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    .line 38
    iput-object p3, p0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mOnDismiss:Ljava/lang/Runnable;

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->initDependencies(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mOnDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    :cond_b
    invoke-super {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->dismiss()V

    return-void
.end method

.method public final initDependencies(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 16

    .line 44
    new-instance v4, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;

    invoke-direct {v4, p1}, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 46
    new-instance p1, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v4}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;)V

    .line 48
    new-instance v10, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-direct {v10, v0, v1}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;)V

    .line 50
    const-class v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "[Service]"

    .line 51
    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->setPackageTag(Ljava/lang/String;)V

    .line 53
    const-class v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 55
    new-instance v12, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalyticsImpl;

    invoke-direct {v12}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalyticsImpl;-><init>()V

    .line 57
    new-instance v0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, p1, v10, v1}, Lcom/samsung/android/globalactions/util/SystemConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 60
    new-instance v3, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v3, p1, v0, v1, v12}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    .line 63
    new-instance v0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;

    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    move-object v5, v0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 66
    invoke-virtual {v3, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V

    .line 68
    new-instance v13, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    const-class v0, Lcom/samsung/android/globalactions/util/BroadcastManager;

    .line 69
    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/globalactions/util/BroadcastManager;

    const-class v0, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-class v0, Lcom/samsung/android/globalactions/util/ThemeChecker;

    .line 70
    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/android/globalactions/util/ThemeChecker;

    const-class v0, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    move-object v0, v13

    move-object v1, p0

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;-><init>(Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/util/BroadcastManager;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/ContentObserverWrapper;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    iput-object v13, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    return-void
.end method

.method public showDialog()V
    .registers 13

    .line 76
    new-instance v11, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v9, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    iget-boolean v10, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFromSystemServer:Z

    move-object v0, v11

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;Z)V

    iput-object v11, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentViewFactory:Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;

    .line 79
    invoke-super {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->showDialog()V

    return-void
.end method
