.class public Lcom/android/server/am/BaseRestrictionMgr;
.super Ljava/lang/Object;
.source "BaseRestrictionMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;
    }
.end annotation


# static fields
.field public static final INTENT_ACTION_STRING_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCKALL:I = 0x1

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_AUTORUNBLOCK:I = 0x8

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTFG:I = 0x2

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTSYSTEM:I = 0x4

.field public static final RESTRICTION_TYPE_BACKUP_BLOCKALL:I = 0x1000000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCKALL:I = 0x1000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_C2DM:I = 0x8000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_ESSENTIAL_INTENT:I = 0x100000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMFG:I = 0x2000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMLAUNCHER:I = 0x40000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMSYSTEM:I = 0x4000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_HIGH_PRIORITY_GCM:I = 0x20000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_SELF_INTENT:I = 0x80000

.field public static final RESTRICTION_TYPE_BROADCAST_PENDING:I = 0x20000000

.field public static final RESTRICTION_TYPE_EXCEPT_CARMODE_OFF:I = 0x8000000

.field public static final RESTRICTION_TYPE_EXCEPT_CARMODE_ON:I = 0x10000000

.field public static final RESTRICTION_TYPE_EXCEPT_LCD_OFF:I = 0x2000000

.field public static final RESTRICTION_TYPE_EXCEPT_LCD_ON:I = 0x4000000

.field public static final RESTRICTION_TYPE_NONE:I = 0x0

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_APPLOCKERBLOCK:I = 0x100

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_AUTORUNBLOCK:I = 0x800

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTFG:I = 0x200

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTSYSTEM:I = 0x400

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_APPLOCKERBLOCK:I = 0x10

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_AUTORUNBLOCK:I = 0x80

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTFG:I = 0x20

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTSYSTEM:I = 0x40

.field public static TAG:Ljava/lang/String; = "BaseRestrictionMgr"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mRestrictActivityTheme:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 173
    new-instance v0, Lcom/android/server/am/BaseRestrictionMgr$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseRestrictionMgr$1;-><init>(Lcom/android/server/am/BaseRestrictionMgr;)V

    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mRestrictActivityTheme:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BaseRestrictionMgr-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/BaseRestrictionMgr;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/BaseRestrictionMgr;
    .registers 1

    .line 208
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 8

    .line 693
    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 698
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.INFO"

    .line 699
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 701
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 704
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 706
    :cond_22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 707
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    :cond_31
    if-eqz v3, :cond_5c

    .line 711
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3a

    goto :goto_5c

    .line 714
    :cond_3a
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p1, 0x10000000

    .line 715
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 716
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 717
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 716
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_5c
    :goto_5c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRestrictionsByCurrentLevel(IZ)I
    .registers 5

    const p0, 0x20000008

    const/high16 v0, 0x20000000

    const v1, 0x101c0888

    packed-switch p1, :pswitch_data_76

    :pswitch_b
    const/4 p0, 0x0

    return p0

    :pswitch_d
    const p0, 0x1002220

    return p0

    :pswitch_11
    return v1

    :pswitch_12
    const p0, 0x1000112

    return p0

    :pswitch_16
    const p0, 0x1000220

    return p0

    .line 260
    :pswitch_1a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-nez p0, :cond_27

    const/16 p0, 0x2220

    return p0

    :cond_27
    const p0, 0x1c0888

    return p0

    .line 254
    :pswitch_2b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-nez p0, :cond_39

    const p0, 0x14148110

    return p0

    :cond_39
    return v1

    .line 231
    :pswitch_3a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_50

    .line 232
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result p1

    if-eqz p1, :cond_4f

    return p0

    :cond_4f
    return v0

    .line 238
    :cond_50
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p1

    if-eqz p1, :cond_68

    if-eqz p2, :cond_68

    .line 241
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result p1

    if-eqz p1, :cond_67

    return p0

    :cond_67
    return v0

    :cond_68
    return v1

    .line 225
    :pswitch_69
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result p1

    if-eqz p1, :cond_74

    return p0

    :cond_74
    return v0

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_69
        :pswitch_3a
        :pswitch_2b
        :pswitch_1a
        :pswitch_b
        :pswitch_16
        :pswitch_12
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseRestrictionMgr;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public final isBindNotificationListenerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 979
    :cond_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_58

    const-wide/16 v1, 0x0

    .line 982
    :try_start_c
    invoke-interface {v0, p2, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p3

    if-eqz p3, :cond_58

    const-string v0, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 984
    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_58

    const-string p3, "android"

    .line 985
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    const/4 p0, 0x1

    .line 987
    sget-object p1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3f} :catch_40

    goto :goto_58

    :catch_40
    move-exception p1

    .line 991
    sget-object p2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isBindNotificationListenerPackage exception="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return p0
.end method

.method public final isBlockAssociatedActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 7

    .line 178
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    if-eqz p1, :cond_66

    .line 179
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_66

    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mRestrictActivityTheme:Ljava/util/ArrayList;

    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    .line 181
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_30

    return v0

    .line 186
    :cond_30
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 187
    array-length v4, p0

    if-gt v4, v0, :cond_59

    .line 188
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to analyze taskAffinity: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 191
    :cond_59
    aget-object p0, p0, v0

    .line 192
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p1

    invoke-virtual {p1, v2, p0, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_66

    return v0

    :cond_66
    return v1
.end method

.method public final isCurrentLauncherApp(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_28

    .line 821
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/HomeFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->getHomePackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 822
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call from Current Launcher app :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public final isEssentialIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 805
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isJobSchedulerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 934
    :cond_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_58

    const-wide/16 v1, 0x0

    .line 937
    :try_start_c
    invoke-interface {v0, p2, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p3

    if-eqz p3, :cond_58

    const-string v0, "android.permission.BIND_JOB_SERVICE"

    .line 939
    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_58

    const-string p3, "android"

    .line 940
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    const/4 p0, 0x1

    .line 942
    sget-object p1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoRun Policy isJobSchedulerPackage -- package = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3f} :catch_40

    goto :goto_58

    :catch_40
    move-exception p1

    .line 946
    sget-object p2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isJobSchedulerPackage exception="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return p0
.end method

.method public final isLauncherableApp(Ljava/lang/String;I)Z
    .registers 5

    const-string v0, "com.baidu.searchbox_samsung"

    .line 881
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_71

    const-string v0, "com.bst.floatingmsgproxy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_71

    .line 885
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_71

    .line 887
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 888
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_3c

    .line 889
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoRun Policy isLauncherableApp -- Not launcherable 3rd party package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return v1

    .line 892
    :cond_3d
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_57

    .line 893
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoRun Policy isLauncherableApp -- Not launcherable system package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_57} :catch_59

    :cond_57
    const/4 p0, 0x0

    return p0

    :catch_59
    move-exception p0

    .line 898
    sget-object p1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isLaucherableApp exception="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    :goto_71
    return v1
.end method

.method public final isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I
    .registers 15

    .line 726
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, "Blocked by policy:"

    const/4 v3, -0x1

    if-nez p1, :cond_2b

    .line 731
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_2a

    .line 732
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- Caller is null!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return v3

    .line 737
    :cond_2b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3d

    .line 738
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result v4

    if-nez v4, :cond_3d

    return v5

    :cond_3d
    const/4 v4, 0x4

    if-eq p7, v4, :cond_55

    .line 744
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v6

    invoke-virtual {v6, p6}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result p6

    if-eqz p6, :cond_55

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result p6

    if-nez p6, :cond_55

    return v5

    :cond_55
    const-string/jumbo p6, "startService"

    .line 749
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    const-string v6, "bindService"

    if-nez p6, :cond_66

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_6d

    .line 750
    :cond_66
    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/android/server/am/BaseRestrictionMgr;->isShouldSkipCaseForPolicy(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Z

    move-result p6

    if-eqz p6, :cond_6d

    return v5

    :cond_6d
    const-string p6, "com.sec.android.app.samsungapps"

    .line 754
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_76

    return v5

    .line 759
    :cond_76
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_d1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_d1

    .line 760
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->isSamsungService(Ljava/lang/String;I)Z

    move-result p2

    const-string/jumbo p6, "is Blocked by Policy:"

    if-nez p2, :cond_a9

    .line 761
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_a8

    .line 762
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- Caller is not samsung!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    return v3

    .line 765
    :cond_a9
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result p2

    if-eqz p2, :cond_d1

    .line 766
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_d0

    .line 767
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- isCalmMode!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    return v3

    .line 774
    :cond_d1
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/am/BaseRestrictionMgr;->isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 775
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_f4

    .line 776
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- should Block cases!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    return v3

    .line 781
    :cond_f5
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p2

    if-eqz p2, :cond_173

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_173

    if-eq p7, v4, :cond_12b

    .line 782
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isJobSchedulerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result p2

    if-eqz p2, :cond_12b

    .line 783
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_12a

    .line 784
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- JobSchedulerPackage!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12a
    return v3

    .line 788
    :cond_12b
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/server/am/BaseRestrictionMgr;->isSyncManagerPackage(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_14f

    .line 789
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_14e

    .line 790
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- SyncManagerPackage!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14e
    return v3

    .line 793
    :cond_14f
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isBindNotificationListenerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result p0

    if-eqz p0, :cond_173

    .line 794
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_172

    .line 795
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- isBindNotificationListenerPackage!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_172
    return v3

    :cond_173
    const/4 p0, 0x2

    return p0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z
    .registers 18

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    .line 279
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;)Z
    .registers 19

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move-object/from16 v10, p7

    .line 284
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZ)Z
    .registers 19

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 289
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZ)Z
    .registers 21

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 295
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLandroid/content/pm/ActivityInfo;)Z
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p7

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 315
    invoke-static {v12, v9}, Lcom/android/server/am/MARsPolicyManager;->isIntentProhibited(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    const/4 v15, 0x1

    if-eqz v1, :cond_18

    return v15

    :cond_18
    const-string v1, "com.google.android.projection.gearhead"

    .line 320
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "bindService"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 321
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v14, v13}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Ljava/lang/String;I)V

    :cond_2f
    if-eqz v12, :cond_44

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    .line 323
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 324
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v14, v13}, Lcom/android/server/am/MARsPolicyManager;->onAppUsedForSpecificCase(Ljava/lang/String;I)V

    .line 327
    :cond_44
    sget-object v16, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v16

    .line 328
    :try_start_47
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz v1, :cond_76

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-eqz v1, :cond_76

    .line 329
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1, v3, v14, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_78

    :cond_76
    const/16 v17, 0x0

    .line 332
    :goto_78
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    const/4 v8, -0x1

    const/16 v18, 0x0

    if-eqz v1, :cond_c7

    .line 333
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_c7

    move/from16 v3, v18

    const/4 v4, 0x0

    .line 335
    :goto_9a
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_c0

    .line 336
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 338
    iget-object v5, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    if-nez v5, :cond_b2

    .line 339
    sget-object v5, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    const-string v6, "Abnomal case in isRestrictedPackage package name is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 352
    :cond_b2
    iget v5, v4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    if-eq v13, v5, :cond_bc

    if-ne v13, v8, :cond_b9

    goto :goto_bc

    :cond_b9
    :goto_b9
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 356
    :cond_bc
    :goto_bc
    iget v1, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    move v3, v15

    goto :goto_c4

    :cond_c0
    move v1, v8

    move v5, v1

    move/from16 v3, v18

    :goto_c4
    move/from16 v19, v3

    goto :goto_ce

    :cond_c7
    move v1, v8

    move v5, v1

    move/from16 v3, v18

    move/from16 v19, v3

    const/4 v4, 0x0

    :goto_ce
    if-nez v3, :cond_134

    .line 369
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz v6, :cond_134

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v6

    if-eqz v6, :cond_134

    .line 371
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-eqz v6, :cond_134

    move/from16 v7, v18

    .line 373
    :goto_f8
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v7, v2, :cond_134

    .line 374
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageInfo;

    .line 376
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_112

    .line 377
    sget-object v2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    const-string v15, "Abnomal case in isRestrictedPackage package name is null"

    invoke-static {v2, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    .line 381
    :cond_112
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v15

    if-eq v13, v15, :cond_11f

    if-ne v13, v8, :cond_11b

    goto :goto_11f

    :cond_11b
    :goto_11b
    add-int/lit8 v7, v7, 0x1

    const/4 v15, 0x1

    goto :goto_f8

    .line 384
    :cond_11f
    :goto_11f
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    .line 385
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    .line 386
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    const/4 v6, 0x1

    xor-int/2addr v3, v6

    move/from16 v21, v1

    move-object v15, v2

    move v1, v3

    move v7, v5

    const/4 v3, 0x1

    goto :goto_139

    :cond_134
    move/from16 v21, v1

    move v7, v5

    move v1, v8

    const/4 v15, 0x0

    :goto_139
    if-nez v3, :cond_16f

    .line 394
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_16d

    if-eqz v12, :cond_14c

    .line 395
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_14e

    :cond_14c
    const-string v0, ""

    :goto_14e
    move-object v7, v0

    .line 397
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    if-eqz v17, :cond_15a

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    goto :goto_15b

    :cond_15a
    move v1, v8

    .line 398
    :goto_15b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move/from16 v2, p7

    move/from16 v3, p3

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-wide/from16 v8, v19

    .line 397
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 400
    :cond_16d
    monitor-exit v16

    return v18

    :cond_16f
    if-eqz p8, :cond_1a9

    if-eqz v15, :cond_1a9

    if-nez v19, :cond_1a9

    .line 414
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a7

    if-eqz v12, :cond_186

    .line 415
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_188

    :cond_186
    const-string v0, ""

    :goto_188
    move-object v7, v0

    .line 417
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    if-eqz v17, :cond_194

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    goto :goto_195

    :cond_194
    move v1, v8

    .line 418
    :goto_195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move/from16 v2, p7

    move/from16 v3, p3

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-wide/from16 v8, v19

    .line 417
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 420
    :cond_1a7
    monitor-exit v16

    return v18

    :cond_1a9
    if-eqz v15, :cond_1e7

    .line 425
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    if-nez v2, :cond_1e7

    if-nez v4, :cond_1e7

    .line 426
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e5

    if-eqz v12, :cond_1c4

    .line 427
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c6

    :cond_1c4
    const-string v0, ""

    :goto_1c6
    move-object v7, v0

    .line 429
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    if-eqz v17, :cond_1d2

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    goto :goto_1d3

    :cond_1d2
    move v1, v8

    .line 430
    :goto_1d3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move/from16 v2, p7

    move/from16 v3, p3

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-wide/from16 v8, v19

    .line 429
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 432
    :cond_1e5
    monitor-exit v16

    return v18

    :cond_1e7
    if-eqz v19, :cond_1f1

    .line 438
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v14, v7}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v1

    :cond_1f1
    move/from16 v22, v1

    const/4 v1, 0x4

    if-eqz v15, :cond_204

    .line 442
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    if-eqz v2, :cond_204

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move v6, v2

    goto :goto_20a

    :cond_204
    if-eqz v19, :cond_208

    move v6, v1

    goto :goto_20a

    :cond_208
    move/from16 v6, v18

    :goto_20a
    if-eqz v15, :cond_211

    .line 443
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v2

    goto :goto_218

    :cond_211
    if-eqz v19, :cond_217

    if-nez v22, :cond_217

    const/4 v2, 0x2

    goto :goto_218

    :cond_217
    const/4 v2, 0x1

    :goto_218
    const/16 v5, 0x8

    if-eqz v4, :cond_221

    .line 446
    iget-boolean v8, v4, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v8, :cond_221

    move v2, v5

    :cond_221
    if-eqz v19, :cond_228

    if-eqz v4, :cond_228

    .line 450
    iget-boolean v4, v4, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    goto :goto_22a

    :cond_228
    move/from16 v4, v18

    :goto_22a
    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/BaseRestrictionMgr;->getRestrictionsByCurrentLevel(IZ)I

    move-result v8

    if-ne v6, v1, :cond_236

    and-int/lit8 v1, v8, 0x0

    if-eqz v1, :cond_236

    move/from16 v3, v18

    :cond_236
    const/high16 v1, 0x2000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_247

    .line 458
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v1

    if-nez v1, :cond_247

    move/from16 v3, v18

    :cond_247
    const/high16 v1, 0x4000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_258

    .line 464
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v1

    if-eqz v1, :cond_258

    move/from16 v3, v18

    :cond_258
    const/high16 v1, 0x8000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_269

    .line 470
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v1

    if-nez v1, :cond_269

    move/from16 v3, v18

    :cond_269
    const/high16 v1, 0x10000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_27a

    .line 476
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v1

    if-eqz v1, :cond_27a

    move/from16 v3, v18

    :cond_27a
    if-eqz v3, :cond_517

    const-string v1, "activity"

    .line 485
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_315

    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_296

    move/from16 p8, v6

    move v13, v7

    move-object/from16 p9, v15

    move/from16 v1, v18

    move/from16 v24, v1

    :goto_291
    const/4 v2, 0x1

    :goto_292
    const/16 v23, -0x1

    goto/16 :goto_50e

    :cond_296
    and-int/lit8 v1, v8, 0x2

    if-eqz v1, :cond_2aa

    .line 493
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2a6

    const/4 v1, 0x1

    goto :goto_2a8

    :cond_2a6
    move/from16 v1, v18

    :goto_2a8
    const/4 v2, 0x1

    goto :goto_2ad

    :cond_2aa
    move/from16 v1, v18

    move v2, v1

    :goto_2ad
    and-int/lit8 v3, v8, 0x4

    if-eqz v3, :cond_2b9

    .line 499
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2b8

    const/4 v1, 0x1

    :cond_2b8
    const/4 v2, 0x1

    :cond_2b9
    and-int/lit8 v3, v8, 0x8

    if-eqz v3, :cond_308

    .line 504
    invoke-virtual {v0, v14, v9}, Lcom/android/server/am/BaseRestrictionMgr;->isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_308

    move-object/from16 v3, p10

    invoke-virtual {v0, v3}, Lcom/android/server/am/BaseRestrictionMgr;->isBlockAssociatedActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-nez v4, :cond_2dd

    .line 505
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    move/from16 p6, v1

    const/4 v1, 0x0

    .line 505
    invoke-virtual {v4, v5, v8, v1, v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30a

    goto :goto_2df

    :cond_2dd
    move/from16 p6, v1

    .line 507
    :goto_2df
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block activity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p10 .. p10}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --- isBlockAssociatedActivity which is not started by itself."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, p6

    move/from16 p8, v6

    move v13, v7

    move-object/from16 p9, v15

    move/from16 v1, v18

    goto :goto_291

    :cond_308
    move/from16 p6, v1

    :cond_30a
    move/from16 v24, p6

    move/from16 p8, v6

    move v13, v7

    move-object/from16 p9, v15

    move/from16 v1, v18

    goto/16 :goto_292

    :cond_315
    const-string/jumbo v1, "startService"

    .line 512
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49c

    const-string v1, "bindService"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_328

    goto/16 :goto_49c

    :cond_328
    const-string/jumbo v1, "provider"

    .line 540
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a2

    and-int/lit16 v1, v8, 0x100

    if-eqz v1, :cond_355

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 p8, v6

    move-object/from16 v6, p5

    move v13, v7

    move/from16 v7, v21

    move-object/from16 p9, v15

    const/16 v23, -0x1

    move v15, v8

    move/from16 v8, p8

    .line 542
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1

    if-lez v1, :cond_35d

    const/4 v1, 0x1

    goto :goto_35f

    :cond_355
    move/from16 p8, v6

    move v13, v7

    move-object/from16 p9, v15

    const/16 v23, -0x1

    move v15, v8

    :cond_35d
    move/from16 v1, v18

    :goto_35f
    and-int/lit16 v2, v15, 0x200

    if-eqz v2, :cond_370

    .line 550
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36e

    const/4 v1, 0x1

    :cond_36e
    const/4 v2, 0x1

    goto :goto_372

    :cond_370
    move/from16 v2, v18

    :goto_372
    and-int/lit16 v3, v15, 0x400

    if-eqz v3, :cond_384

    .line 556
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_380

    const/4 v2, 0x1

    const/16 v24, 0x1

    goto :goto_386

    :cond_380
    move/from16 v24, v1

    const/4 v2, 0x1

    goto :goto_386

    :cond_384
    move/from16 v24, v1

    :goto_386
    and-int/lit16 v1, v15, 0x800

    if-eqz v1, :cond_50c

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v21

    move/from16 v8, p8

    .line 562
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1

    if-lez v1, :cond_508

    goto/16 :goto_506

    :cond_3a2
    move/from16 p8, v6

    move v13, v7

    move-object/from16 p9, v15

    const/16 v23, -0x1

    move v15, v8

    const-string v1, "broadcast"

    .line 568
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_483

    if-eqz v12, :cond_479

    and-int/lit16 v1, v15, 0x1000

    if-eqz v1, :cond_3ba

    goto/16 :goto_479

    :cond_3ba
    const/high16 v1, 0x20000000

    and-int/2addr v1, v15

    if-eqz v1, :cond_3d3

    .line 576
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v14, v13}, Lcom/android/server/am/FreecessController;->isPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3cf

    const/4 v1, 0x1

    goto :goto_3d1

    :cond_3cf
    move/from16 v1, v18

    :goto_3d1
    const/4 v2, 0x1

    goto :goto_3d6

    :cond_3d3
    move/from16 v1, v18

    move v2, v1

    :goto_3d6
    and-int/lit16 v3, v15, 0x2000

    if-eqz v3, :cond_3e6

    .line 582
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3e5

    const/4 v1, 0x1

    :cond_3e5
    const/4 v2, 0x1

    :cond_3e6
    and-int/lit16 v3, v15, 0x4000

    if-eqz v3, :cond_3f2

    .line 588
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3f1

    const/4 v1, 0x1

    :cond_3f1
    const/4 v2, 0x1

    :cond_3f2
    const v3, 0x8000

    and-int/2addr v3, v15

    if-eqz v3, :cond_40c

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    .line 595
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_407

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_40a

    :cond_407
    move v2, v1

    move/from16 v1, v18

    :goto_40a
    const/4 v3, 0x1

    goto :goto_410

    :cond_40c
    move v3, v2

    move v2, v1

    move/from16 v1, v18

    :goto_410
    const/high16 v4, 0x20000

    and-int/2addr v4, v15

    move/from16 v8, p8

    if-eqz v4, :cond_432

    const/4 v4, 0x1

    if-ne v8, v4, :cond_431

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    .line 606
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_431

    const-string v3, "foreground"

    move-object/from16 v4, p6

    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_431

    const/4 v2, 0x1

    :cond_431
    const/4 v3, 0x1

    :cond_432
    const/high16 v4, 0x80000

    and-int/2addr v4, v15

    if-eqz v4, :cond_43f

    .line 615
    invoke-virtual {v0, v14, v9}, Lcom/android/server/am/BaseRestrictionMgr;->isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43e

    const/4 v2, 0x1

    :cond_43e
    const/4 v3, 0x1

    :cond_43f
    const/high16 v4, 0x100000

    and-int/2addr v4, v15

    if-eqz v4, :cond_450

    .line 622
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v14, v9, v3}, Lcom/android/server/am/BaseRestrictionMgr;->isEssentialIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44f

    const/4 v2, 0x1

    :cond_44f
    const/4 v3, 0x1

    :cond_450
    const/high16 v4, 0x40000

    and-int/2addr v4, v15

    if-eqz v4, :cond_472

    .line 629
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v3

    if-eqz v3, :cond_46c

    invoke-virtual {v0, v9}, Lcom/android/server/am/BaseRestrictionMgr;->isCurrentLauncherApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46c

    move/from16 p8, v8

    const/4 v2, 0x1

    const/16 v24, 0x1

    goto/16 :goto_50e

    :cond_46c
    move/from16 v24, v2

    move/from16 p8, v8

    goto/16 :goto_50a

    :cond_472
    move/from16 v24, v2

    move v2, v3

    move/from16 p8, v8

    goto/16 :goto_50e

    :cond_479
    :goto_479
    move/from16 v8, p8

    :goto_47b
    move/from16 p8, v8

    move/from16 v1, v18

    move/from16 v24, v1

    goto/16 :goto_50a

    :cond_483
    move/from16 v8, p8

    const-string v1, "backup"

    .line 633
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_493

    const/high16 v1, 0x1000000

    and-int/2addr v1, v15

    if-eqz v1, :cond_493

    goto :goto_47b

    :cond_493
    move/from16 p8, v8

    move/from16 v1, v18

    move v2, v1

    move/from16 v24, v2

    goto/16 :goto_50e

    :cond_49c
    :goto_49c
    move v13, v7

    move-object/from16 p9, v15

    const/16 v23, -0x1

    move v15, v8

    move v8, v6

    and-int/lit8 v1, v15, 0x10

    if-eqz v1, :cond_4c3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v21

    move/from16 p8, v8

    .line 515
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1

    if-lez v1, :cond_4bf

    const/4 v1, 0x1

    goto :goto_4c1

    :cond_4bf
    move/from16 v1, v18

    :goto_4c1
    const/4 v2, 0x1

    goto :goto_4c8

    :cond_4c3
    move/from16 p8, v8

    move/from16 v1, v18

    move v2, v1

    :goto_4c8
    and-int/lit8 v3, v15, 0x20

    if-eqz v3, :cond_4d8

    .line 523
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4d7

    const/4 v1, 0x1

    :cond_4d7
    const/4 v2, 0x1

    :cond_4d8
    and-int/lit8 v3, v15, 0x40

    if-eqz v3, :cond_4ea

    .line 529
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4e6

    const/4 v2, 0x1

    const/16 v24, 0x1

    goto :goto_4ec

    :cond_4e6
    move/from16 v24, v1

    const/4 v2, 0x1

    goto :goto_4ec

    :cond_4ea
    move/from16 v24, v1

    :goto_4ec
    and-int/lit16 v1, v15, 0x80

    if-eqz v1, :cond_50c

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v21

    move/from16 v8, p8

    .line 535
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1

    if-lez v1, :cond_508

    :goto_506
    const/16 v24, 0x1

    :cond_508
    move/from16 v1, v18

    :goto_50a
    const/4 v2, 0x1

    goto :goto_50e

    :cond_50c
    move/from16 v1, v18

    :goto_50e
    if-nez v2, :cond_512

    const/16 v24, 0x1

    :cond_512
    const/4 v2, 0x1

    xor-int/lit8 v3, v24, 0x1

    move v15, v3

    goto :goto_521

    :cond_517
    move/from16 p8, v6

    move v13, v7

    move-object/from16 p9, v15

    const/16 v23, -0x1

    move v15, v3

    move/from16 v1, v18

    :goto_521
    if-nez v15, :cond_52d

    if-eqz v1, :cond_52d

    .line 648
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v14, v2, v13}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    .line 652
    :cond_52d
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_5ac

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v14, v13}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5ac

    if-nez v15, :cond_5ac

    .line 655
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, v14, v13, v11}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 656
    sget-object v0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hostingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is allowed by freecess, caller is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_5aa

    if-eqz v12, :cond_589

    .line 660
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_58b

    :cond_589
    const-string v0, ""

    :goto_58b
    move-object v7, v0

    .line 661
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    if-eqz v17, :cond_597

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    goto :goto_599

    :cond_597
    move/from16 v1, v23

    .line 662
    :goto_599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move/from16 v2, p7

    move/from16 v3, p3

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-wide v8, v12

    .line 661
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 664
    :cond_5aa
    monitor-exit v16

    return v18

    :cond_5ac
    if-nez v15, :cond_5bb

    if-eqz p9, :cond_5bb

    .line 668
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    const/16 v2, 0x1000

    move-object/from16 v3, p9

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 671
    :cond_5bb
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_5f9

    if-eqz v15, :cond_5f9

    .line 672
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hostingType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is Restricted by policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " caller is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_5f9
    monitor-exit v16
    :try_end_5fa
    .catchall {:try_start_47 .. :try_end_5fa} :catchall_658

    .line 677
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v1

    if-nez v1, :cond_623

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz v1, :cond_623

    .line 678
    iget-object v0, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, v13, :cond_623

    .line 679
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    move v1, v15

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object v4, v14

    move/from16 v5, v22

    move/from16 v6, v21

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/mars/database/MARsComponentTracker;->trackComponent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 683
    :cond_623
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_657

    if-nez v15, :cond_657

    if-eqz v12, :cond_636

    .line 684
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_638

    :cond_636
    const-string v0, ""

    :goto_638
    move-object v7, v0

    .line 685
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    if-eqz v17, :cond_644

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    goto :goto_646

    :cond_644
    move/from16 v1, v23

    .line 686
    :goto_646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move/from16 v2, p7

    move/from16 v3, p3

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-wide v8, v12

    .line 685
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_657
    return v15

    :catchall_658
    move-exception v0

    .line 675
    :try_start_659
    monitor-exit v16
    :try_end_65a
    .catchall {:try_start_659 .. :try_end_65a} :catchall_658

    throw v0
.end method

.method public final isSamsungService(Ljava/lang/String;I)Z
    .registers 6

    const-string/jumbo v0, "system"

    .line 861
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_58

    const-string v0, "com.sec."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "com.samsung."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_58

    :cond_1b
    const-string v0, "com.baidu.BaiduMap"

    .line 867
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_57

    const-string v0, "com.baidu.searchbox_samsung"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    const-string v0, "com.baidu.netdisk_ss"

    .line 868
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_57

    .line 872
    :cond_35
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 873
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_56

    .line 874
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSamsungService -- SystemPackage:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return v1

    :cond_57
    :goto_57
    return v2

    .line 862
    :cond_58
    :goto_58
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_73

    .line 863
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSamsungService -- SamsungService:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    return v1
.end method

.method public final isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_25

    .line 811
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 812
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_23

    .line 813
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSelfIntent :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public final isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 7

    if-eqz p3, :cond_d

    .line 905
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 906
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    const-string v0, "android"

    .line 909
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "binderCallingUid"

    const/16 v2, 0x3e8

    .line 910
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    if-eq p3, v2, :cond_32

    .line 912
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "isShouldBlockCase: block AccountAuthenticator"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 915
    :cond_32
    sget-object p3, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isShouldBlockCase: not block AccountAuthenticator"

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_3a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_50

    .line 919
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p3

    const/4 v0, 0x2

    invoke-virtual {p3, v0, p2, p1, p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_50

    return v1

    :cond_50
    const/4 p0, 0x0

    return p0
.end method

.method public final isShouldSkipCaseForPolicy(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Z
    .registers 7

    if-eqz p4, :cond_d

    .line 830
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 831
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    const-string p4, "android"

    .line 834
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_3b

    if-nez p0, :cond_3b

    .line 835
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->isEnabledAccessibilityApp(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3b

    .line 836
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isShouldSkipCase: Enable AccessibilityService callee = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 840
    :cond_3b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p4

    if-eqz p4, :cond_50

    .line 841
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p4

    invoke-virtual {p4, v0, p3, p1, p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_50

    return v0

    .line 847
    :cond_50
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p4

    if-eqz p4, :cond_87

    .line 848
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p4

    const/4 v1, 0x7

    invoke-virtual {p4, v1, p3, p1, p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_87

    .line 850
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_87

    .line 851
    sget-object p0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isShouldSkipCase: Foreground caller and callee = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_87
    const/4 p0, 0x0

    return p0
.end method

.method public final isSyncManagerPackage(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 960
    :cond_4
    :try_start_4
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    const-string p1, "android.content.SyncAdapter"

    .line 961
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    const/4 p0, 0x1

    .line 963
    sget-object p1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoRun Policy isSyncManagerPackage -- package = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3a

    goto :goto_52

    :catch_3a
    move-exception p1

    .line 966
    sget-object p2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSyncManagerPackage exception="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return p0
.end method

.method public final isSystemPackage(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 1000
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1001
    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-nez p2, :cond_e

    return v0

    .line 1007
    :cond_e
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-nez p2, :cond_15

    return v0

    .line 1011
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p2, "android"

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_21} :catch_25

    if-ltz p0, :cond_24

    move v0, v1

    :cond_24
    return v0

    :catch_25
    move-exception p0

    .line 1016
    sget-object p1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSystemPackage exception="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    return-void
.end method
