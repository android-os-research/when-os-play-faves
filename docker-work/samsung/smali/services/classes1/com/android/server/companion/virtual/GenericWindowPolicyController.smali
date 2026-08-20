.class public Lcom/android/server/companion/virtual/GenericWindowPolicyController;
.super Landroid/window/DisplayWindowPolicyController;
.source "GenericWindowPolicyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;,
        Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;
    }
.end annotation


# static fields
.field public static final ALLOW_SECURE_ACTIVITY_DISPLAY_ON_REMOTE_DEVICE:J = 0xc05e3dfL

.field public static final BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

.field public static final TAG:Ljava/lang/String; = "GenericWindowPolicyController"


# instance fields
.field public final mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

.field public final mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

.field public final mAllowedActivities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mAllowedCrossTaskNavigations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mAllowedUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final mBlockedActivities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mBlockedCrossTaskNavigations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultActivityPolicy:I

.field public final mDeviceProfile:Ljava/lang/String;

.field public mDisplayId:I

.field public final mGenericWindowPolicyControllerLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public final mRunningAppsChangedListener:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mRunningUids:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGenericWindowPolicyControllerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TQOM3llI0CErml-fSbyvZYN83q8(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/util/ArraySet;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onRunningAppsChanged$2(Landroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_-T4gXiz8mKaMVsLA7IybAgcwJA(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onTopActivityChanged$0(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o5UDI34916k-jAaEfo1PjSU6QGk(Lcom/android/server/companion/virtual/GenericWindowPolicyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onRunningAppsChanged$1()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 76
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/app/BlockedAppStreamingActivity;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(IILandroid/util/ArraySet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILandroid/companion/virtual/VirtualDeviceManager$ActivityListener;Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I",
            "Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;",
            "Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Landroid/window/DisplayWindowPolicyController;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    .line 102
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListener:Landroid/util/ArraySet;

    .line 147
    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    .line 148
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 149
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3, p5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 150
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedActivities:Landroid/util/ArraySet;

    .line 151
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedActivities:Landroid/util/ArraySet;

    .line 152
    iput p8, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDefaultActivityPolicy:I

    .line 153
    iput-object p10, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/window/DisplayWindowPolicyController;->setInterestedWindowFlags(II)V

    .line 155
    iput-object p9, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 156
    iput-object p11, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDeviceProfile:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onRunningAppsChanged$1()V
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v0, p0}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onDisplayEmpty(I)V

    return-void
.end method

.method private synthetic lambda$onRunningAppsChanged$2(Landroid/util/ArraySet;)V
    .registers 3

    .line 267
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListener:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;

    .line 268
    invoke-interface {v0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;->onRunningAppsChanged(Landroid/util/ArraySet;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$onTopActivityChanged$0(Landroid/content/ComponentName;)V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v0, p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public canActivityBeLaunched(Landroid/content/pm/ActivityInfo;IIZ)Z
    .registers 8
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 198
    invoke-virtual {p0, p2}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 202
    :cond_8
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    .line 203
    sget-object v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    return v2

    .line 208
    :cond_16
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;II)Z

    move-result v1

    if-nez v1, :cond_24

    .line 209
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {p2, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    return v0

    :cond_24
    if-nez p3, :cond_27

    return v2

    :cond_27
    const-string p3, "GenericWindowPolicyController"

    if-eqz p4, :cond_57

    .line 216
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 217
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 218
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Virtual device blocking cross task navigation of "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {p2, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    return v0

    :cond_57
    if-eqz p4, :cond_85

    .line 222
    iget-object p4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_85

    iget-object p4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 223
    invoke-virtual {p4, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_85

    .line 224
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Virtual device not allowing cross task navigation of "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {p2, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    return v0

    :cond_85
    return v2
.end method

.method public canContainActivities(Ljava/util/List;I)Z
    .registers 7
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p2}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 183
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    move v1, v0

    :goto_d
    if-ge v1, p2, :cond_26

    .line 185
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 186
    invoke-virtual {p0, v2, v0, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;II)Z

    move-result v3

    if-nez v3, :cond_23

    .line 187
    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {p1, p0, v2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    return v0

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method public final canContainActivity(Landroid/content/pm/ActivityInfo;II)Z
    .registers 10

    .line 300
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    .line 303
    :cond_9
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 304
    sget-object v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    return v3

    .line 308
    :cond_17
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 309
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 310
    iget-object v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "GenericWindowPolicyController"

    if-nez v4, :cond_3e

    .line 311
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Virtual device activity not allowed from user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 314
    :cond_3e
    iget v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDefaultActivityPolicy:I

    if-nez v4, :cond_5f

    iget-object v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedActivities:Landroid/util/ArraySet;

    .line 315
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 316
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Virtual device blocking launch of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 319
    :cond_5f
    iget v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDefaultActivityPolicy:I

    if-ne v4, v3, :cond_80

    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedActivities:Landroid/util/ArraySet;

    .line 320
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not in the allowed list."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_80
    const-wide/32 v4, 0xc05e3df

    .line 324
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, p0, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_96

    and-int/lit16 p0, p2, 0x2000

    if-eqz p0, :cond_90

    return v1

    :cond_90
    const/high16 p0, 0x80000

    and-int/2addr p0, p3

    if-eqz p0, :cond_96

    return v1

    :cond_96
    return v3
.end method

.method public canShowTasksInRecents()Z
    .registers 6

    .line 275
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDeviceProfile:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    :cond_6
    const/4 v1, -0x1

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3c033486

    const/4 v4, 0x0

    if-eq v2, v3, :cond_21

    const v3, 0xbddb975

    if-eq v2, v3, :cond_17

    goto :goto_2a

    :cond_17
    const-string v2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    move v1, v4

    goto :goto_2a

    :cond_21
    const-string v2, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    move v1, v0

    :cond_2a
    :goto_2a
    if-eqz v1, :cond_2d

    return v0

    :cond_2d
    return v4
.end method

.method public containsUid(I)Z
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 295
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z
    .registers 4

    .line 237
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;II)Z

    move-result p2

    if-nez p2, :cond_f

    .line 238
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {p2, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    const/4 p0, 0x0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 260
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 261
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 263
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2f

    .line 266
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/util/ArraySet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_2f
    move-exception p0

    .line 265
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public onTopActivityChanged(Landroid/content/ComponentName;I)V
    .registers 4

    .line 249
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    if-eqz p2, :cond_10

    if-eqz p1, :cond_10

    .line 251
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/content/ComponentName;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method public registerRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListener:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDisplayId(I)V
    .registers 2

    .line 163
    iput p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    return-void
.end method

.method public unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListener:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
