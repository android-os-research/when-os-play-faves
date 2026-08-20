.class public Lcom/android/server/wm/PolicyControl;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PolicyControl$Filter;
    }
.end annotation


# static fields
.field public static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field public static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field public static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field public static final TAG:Ljava/lang/String; = "PolicyControl"

.field public static sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field public static sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field public static sSettingValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 145
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_27

    .line 146
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_27

    .line 149
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p0

    if-nez p0, :cond_27

    :cond_26
    const/4 v1, 0x1

    :cond_27
    :goto_27
    return v1
.end method

.method public static dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 176
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "PolicyControl."

    .line 177
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x3d

    .line 179
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(C)V

    if-nez p1, :cond_18

    const-string p0, "null"

    .line 181
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    .line 183
    :cond_18
    invoke-virtual {p1, p3}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    .line 184
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :goto_1e
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 171
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string/jumbo v1, "sImmersiveStatusFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 172
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string/jumbo v1, "sImmersiveNavigationFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static isKeyguardShowingAndNotOccluded(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 125
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result p0

    if-nez p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public static reloadFromSetting(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 156
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "policy_control"

    const/4 v3, -0x2

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 158
    sget-object p0, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz p0, :cond_19

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    return v0

    .line 161
    :cond_19
    invoke-static {v1}, Lcom/android/server/wm/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 162
    sput-object v1, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_20

    const/4 p0, 0x1

    return p0

    :catchall_20
    move-exception p0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading policy control, value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PolicyControl"

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static setFilters(Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 190
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 191
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez p0, :cond_8

    return-void

    :cond_8
    const-string v0, ":"

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 197
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_5a

    aget-object v3, p0, v2

    const/16 v4, 0x3d

    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f

    goto :goto_57

    .line 200
    :cond_1f
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "immersive.full"

    .line 202
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 203
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v3

    .line 204
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_57

    :cond_3a
    const-string v4, "immersive.status"

    .line 205
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 206
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v3

    .line 207
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_57

    :cond_49
    const-string v4, "immersive.navigation"

    .line 208
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 209
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v3

    .line 210
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_5a
    return-void
.end method

.method public static shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 97
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/PolicyControl;->isKeyguardShowingAndNotOccluded(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_45

    .line 102
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f8

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2e

    .line 103
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 104
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_2c

    goto :goto_2e

    :cond_2c
    move v1, v0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v1, v3

    :goto_2f
    if-nez v1, :cond_38

    .line 108
    invoke-static {p0}, Lcom/android/server/wm/PolicyControl;->shouldApplySplitImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_38

    return v3

    .line 116
    :cond_38
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_45

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 117
    invoke-virtual {v1, p0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_45

    move v0, v3

    :cond_45
    :goto_45
    return v0
.end method

.method public static shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 72
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/PolicyControl;->isKeyguardShowingAndNotOccluded(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_45

    .line 77
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f8

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2e

    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 79
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_2c

    goto :goto_2e

    :cond_2c
    move v1, v0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v1, v3

    :goto_2f
    if-nez v1, :cond_38

    .line 88
    invoke-static {p0}, Lcom/android/server/wm/PolicyControl;->shouldApplySplitImmersiveStatusBar(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_38

    return v3

    .line 92
    :cond_38
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_45

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 93
    invoke-virtual {v1, p0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_45

    move v0, v3

    :cond_45
    :goto_45
    return v0
.end method

.method public static shouldApplySplitImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 130
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_10

    .line 133
    :cond_8
    invoke-static {p0}, Lcom/android/server/wm/PolicyControl;->canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static shouldApplySplitImmersiveStatusBar(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 137
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_c

    .line 139
    invoke-static {p0}, Lcom/android/server/wm/PolicyControl;->canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
