.class public Lcom/android/server/accessibility/AccessibilityManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public static synthetic $r8$lambda$H85NcnimzytB9pqsMBCDPepab3k(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$2;->lambda$onPackageUpdateFinished$0(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$P9lnZ4-Zop1ehh3uALu0nbVESjA(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$2;->lambda$onPackageUpdateFinished$1(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QnotenkNUGxYXFpaH5auBaTiQhY(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$2;->lambda$onPackageRemoved$2(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 1057
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onPackageRemoved$2(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 1138
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$onPackageUpdateFinished$0(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 1102
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$onPackageUpdateFinished$1(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 1104
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 15

    .line 1170
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1171
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onHandleForceStop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";packages="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";uid="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";doit="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1176
    :cond_44
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1177
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p3

    .line 1180
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_5a

    .line 1181
    monitor-exit p1

    return v1

    .line 1183
    :cond_5a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 1184
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1185
    :cond_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 1186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1187
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1188
    array-length v5, p2

    move v6, v1

    :goto_78
    if-ge v6, v5, :cond_66

    aget-object v7, p2, v6

    .line 1189
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    if-nez p4, :cond_87

    .line 1191
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    .line 1193
    :cond_87
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1194
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1195
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getCrashedServicesLocked()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1196
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v8, "enabled_accessibility_services"

    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {v7, v8, v9, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1199
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_a6
    add-int/lit8 v6, v6, 0x1

    goto :goto_78

    .line 1203
    :cond_a9
    monitor-exit p1

    return v1

    :catchall_ab
    move-exception p0

    .line 1204
    monitor-exit p1
    :try_end_ad
    .catchall {:try_start_4b .. :try_end_ad} :catchall_ab

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 9

    .line 1123
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1124
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onPackageRemoved"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1129
    :cond_34
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1130
    :try_start_3b
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1133
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    if-eq v0, v1, :cond_49

    .line 1134
    monitor-exit p2

    return-void

    .line 1136
    :cond_49
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 1137
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$2$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 1140
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1141
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1142
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 1144
    :cond_65
    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1146
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1147
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1148
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1149
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_65

    :cond_85
    if-eqz v3, :cond_9f

    .line 1155
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v2, "enabled_accessibility_services"

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {p1, v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1159
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-virtual {p1, v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1162
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1164
    :cond_9f
    monitor-exit p2

    return-void

    :catchall_a1
    move-exception p0

    monitor-exit p2
    :try_end_a3
    .catchall {:try_start_3b .. :try_end_a3} :catchall_a1

    throw p0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 9

    .line 1089
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1090
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onPackageUpdateFinished"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1094
    :cond_34
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1095
    :try_start_3b
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1096
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    if-eq v0, v1, :cond_49

    .line 1097
    monitor-exit p2

    return-void

    .line 1099
    :cond_49
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 1100
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6f

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$2$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 1103
    invoke-interface {v1, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_6f

    :cond_6d
    move v1, v2

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v1, 0x1

    .line 1107
    :goto_70
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1108
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1109
    invoke-static {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v3

    if-nez v1, :cond_7f

    if-eqz v3, :cond_84

    .line 1111
    :cond_7f
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1116
    :cond_84
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mmigrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    .line 1118
    monitor-exit p2

    return-void

    :catchall_8b
    move-exception p0

    monitor-exit p2
    :try_end_8d
    .catchall {:try_start_3b .. :try_end_8d} :catchall_8b

    throw p0
.end method

.method public onSomePackagesChanged()V
    .registers 5

    .line 1060
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1061
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.PM.onSomePackagesChanged"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 1065
    :cond_1a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1068
    :try_start_21
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v2

    if-eq v1, v2, :cond_2f

    .line 1069
    monitor-exit v0

    return-void

    .line 1072
    :cond_2f
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 1076
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1077
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1078
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1080
    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_21 .. :try_end_4b} :catchall_49

    throw p0
.end method
