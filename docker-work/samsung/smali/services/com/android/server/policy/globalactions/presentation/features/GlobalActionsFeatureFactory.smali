.class public Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;
.super Ljava/lang/Object;
.source "GlobalActionsFeatureFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;


# instance fields
.field public mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public mContext:Landroid/content/Context;

.field public mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

.field public mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

.field public mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field public mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/ConditionChecker;)V
    .registers 7

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 56
    iput-object p3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 57
    iput-object p4, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    .line 58
    iput-object p5, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 59
    iput-object p6, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    return-void
.end method


# virtual methods
.method public createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_60

    goto :goto_33

    :sswitch_11
    const-string v1, "emergency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_33

    :cond_1a
    const/4 v2, 0x2

    goto :goto_33

    :sswitch_1c
    const-string/jumbo v1, "restart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_33

    :cond_26
    const/4 v2, 0x1

    goto :goto_33

    :sswitch_28
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    packed-switch v2, :pswitch_data_6e

    goto :goto_5f

    .line 128
    :pswitch_37
    new-instance p1, Lcom/samsung/android/globalactions/features/SktStrategy;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/ToastController;

    .line 129
    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 130
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 131
    invoke-interface {p0, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p1, v1, v2, v3, p0}, Lcom/samsung/android/globalactions/features/SktStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 128
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5f
    return-object v0

    :sswitch_data_60
    .sparse-switch
        0x65e8905 -> :sswitch_28
        0x416a9e0f -> :sswitch_1c
        0x6118c591 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method public createActionsCreationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "DATA_MODE"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 87
    new-instance v0, Lcom/samsung/android/globalactions/features/DataModeStrategy;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactions/features/DataModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1b
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "LOCKDOWN_MODE"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 91
    new-instance v0, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    return-object p1
.end method

.method public createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "emergency"

    .line 144
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 145
    iget-object p2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "SAFETY_CARE"

    invoke-interface {p2, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 146
    new-instance p2, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p2, p1, v1, v2}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_2b
    iget-object p1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string p2, "DESKTOP_MODE"

    invoke-interface {p1, p2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 150
    new-instance p1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object p2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {p1, p2, v1, v2, v3}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_4d
    iget-object p1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string p2, "RESERVE_BATTERY_MODE"

    invoke-interface {p1, p2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 155
    new-instance p1, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {p1, p0}, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    return-object v0
.end method

.method public createDisposingStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "DESKTOP_MODE"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 113
    new-instance v0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    return-object p1
.end method

.method public createInitializationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DESKTOP_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 67
    new-instance v1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v4, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v5, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_27
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SAFETY_CARE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 72
    new-instance v1, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_45
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_CONTAINER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 76
    new-instance v1, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    return-object v0
.end method

.method public createOnKeyListenerStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public createSecureConfirmStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public createSoftwareUpdateStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/SoftwareUpdateStrategy;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "restart"

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 174
    new-instance p2, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {p0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-direct {p2, v0, p0}, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SystemController;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-object p1
.end method

.method public createViewInflateStrategy()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public createWindowDecorationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "NAV_BAR"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 102
    new-instance v0, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    return-object p1
.end method

.method public createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
