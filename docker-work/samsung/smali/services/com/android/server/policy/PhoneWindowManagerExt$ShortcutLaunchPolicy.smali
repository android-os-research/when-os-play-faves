.class public Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutLaunchPolicy"
.end annotation


# static fields
.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_META_F:I = 0x1

.field public static final TYPE_META_H:I = 0x2

.field public static final TYPE_META_K:I = 0x3

.field public static final TYPE_META_LONG:I = 0x5

.field public static final TYPE_META_U:I = 0x4


# instance fields
.field public mDeniedActivities:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 5963
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo p1, "{com.android.phone/com.android.phone.UsimDownload}"

    .line 5959
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canLaunchAppByExternalKeyboard()Z
    .registers 3

    .line 5967
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->canLaunchAppByExternalKeyboard(ILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public canLaunchAppByExternalKeyboard(ILandroid/content/Intent;)Z
    .registers 7

    const/4 v0, 0x0

    const-string v1, "PhoneWindowManagerExt"

    if-nez p2, :cond_b

    const-string p0, "canLaunchAppByExternalKeyboard : intent is null"

    .line 5972
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5975
    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    if-nez v3, :cond_17

    const-string p0, "canLaunchAppByExternalKeyboard : Boot is not completed"

    .line 5976
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5979
    :cond_17
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_25

    const-string p0, "canLaunchAppByExternalKeyboard : User setup is not completed"

    .line 5980
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5983
    :cond_25
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string p0, "canLaunchAppByExternalKeyboard : Keyguard is shown"

    .line 5984
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5987
    :cond_35
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-eqz v2, :cond_3f

    const-string p0, "canLaunchAppByExternalKeyboard : Factory binary"

    .line 5988
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5991
    :cond_3f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string p0, "canLaunchAppByExternalKeyboard : Automatic test mode"

    .line 5992
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4f
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6a

    .line 5997
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_5e

    const-string p0, "canLaunchAppByExternalKeyboard : SFinder activity is not available"

    .line 5998
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 6002
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->isDeniedActivity()Z

    move-result p0

    if-eqz p0, :cond_6a

    const-string p0, "canLaunchAppByExternalKeyboard: It is denied activity"

    .line 6003
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6a
    return v2
.end method

.method public getIntent(I)Landroid/content/Intent;
    .registers 3

    const/4 v0, 0x0

    .line 6012
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->getIntent(ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getIntent(ILandroid/content/ComponentName;)Landroid/content/Intent;
    .registers 7

    .line 6017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntent, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_a2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_84

    const/4 v0, 0x3

    const-string v3, "android.intent.action.MAIN"

    if-eq p1, v0, :cond_79

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6b

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4d

    .line 6063
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getIntent, componentName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_43

    return-object v2

    .line 6067
    :cond_43
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6068
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_e2

    .line 6055
    :cond_4d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 6056
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    .line 6057
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6058
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.ROLE_NAME"

    const-string p2, "android.app.role.ASSISTANT"

    .line 6059
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a0

    .line 6049
    :cond_6b
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.samsung.accessibility.ACCESSIBILITY_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p1, 0x10008000

    .line 6050
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_e2

    .line 6044
    :cond_79
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.intent.category.APP_CALENDAR"

    .line 6045
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e2

    .line 6036
    :cond_84
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "samsung.honeyboard.honeyvoice.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 6037
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6038
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_a0

    return-object v2

    :cond_a0
    :goto_a0
    move-object p0, p1

    goto :goto_e2

    .line 6021
    :cond_a2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.app.galaxyfinder/com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    .line 6022
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p2, 0x0

    const-string v0, "callername"

    .line 6024
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6025
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_e3

    .line 6027
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TYPE_META_F, top="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6028
    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "componentname"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a0

    :goto_e2
    return-object p0

    :cond_e3
    const-string p0, "TYPE_META_F, Unknown top activity!"

    .line 6030
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final isActivityAvailable(Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 6110
    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 6111
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->semQueryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 6112
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public final isDeniedActivity()Z
    .registers 6

    .line 6116
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 6121
    :cond_c
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 6122
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    array-length v2, p0

    move v3, v1

    :goto_14
    if-ge v3, v2, :cond_23

    aget-object v4, p0, v3

    .line 6123
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_23
    return v1
.end method

.method public launchApp(II)Z
    .registers 4

    .line 6076
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchAppIfPossible(ILandroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

.method public launchApp(ILandroid/content/ComponentName;I)Z
    .registers 4

    .line 6084
    invoke-virtual {p0, p3, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->getIntent(ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 6088
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchAppIfPossible(ILandroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

.method public launchApp(ILjava/lang/String;)Z
    .registers 4

    .line 6080
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(ILandroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public final launchAppIfPossible(ILandroid/content/Intent;I)Z
    .registers 6

    .line 6092
    invoke-virtual {p0, p3, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->canLaunchAppByExternalKeyboard(ILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 6096
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launch keyboard shortcut app, displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6097
    invoke-virtual {p0, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->typeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PhoneWindowManagerExt"

    .line 6096
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6098
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p3

    .line 6099
    invoke-virtual {p3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 6100
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6101
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 6102
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    const/4 p0, 0x1

    return p0
.end method

.method public final typeToString(I)Ljava/lang/String;
    .registers 3

    const-string p0, "TYPE_DEFAULT"

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-eq p1, v0, :cond_17

    const/4 v0, 0x5

    if-eq p1, v0, :cond_17

    .line 6145
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :cond_17
    return-object p0

    :cond_18
    const-string p0, "TYPE_META_F"

    :cond_1a
    return-object p0
.end method
