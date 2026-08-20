.class public Lcom/android/server/enterprise/plm/SystemStateTracker;
.super Landroid/os/Handler;
.source "SystemStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;,
        Lcom/android/server/enterprise/plm/SystemStateTracker$UserStateListener;,
        Lcom/android/server/enterprise/plm/SystemStateTracker$PackageStateListener;,
        Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;
    }
.end annotation


# static fields
.field public static final EVENT_BOOT_STATE_CHANGE:I = 0x4

.field public static final EVENT_EDM_STATE_CHANGE:I = 0x5

.field public static final EVENT_LICENSE_STATE_CHANGE:I = 0x1

.field public static final EVENT_PACKAGE_STATE_CHANGE:I = 0x2

.field public static final EVENT_USER_STATE_CHANGE:I = 0x3

.field public static final SETTINGS_KEY_KLM_STATUS:Ljava/lang/String; = "klm_activated"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mBootStateListener:Landroid/content/BroadcastReceiver;

.field public final mBootStateObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/plm/common/HandlerObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mEdmServiceReady:Z

.field public final mEdmStateObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/plm/common/HandlerObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

.field public final mLicenseStateObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/plm/common/HandlerObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageStateListener:Landroid/content/BroadcastReceiver;

.field public final mPackageStateObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/plm/common/HandlerObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mTargetPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUserStateListener:Landroid/content/BroadcastReceiver;

.field public final mUserStateObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/plm/common/HandlerObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/plm/ProcessAdapter;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    iput-object p2, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mTargetPackageNames:Ljava/util/List;

    if-eqz p3, :cond_4b

    .line 66
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 67
    iget-object p3, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mTargetPackageNames:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/server/enterprise/plm/ProcessAdapter;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_4b
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    .line 72
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmServiceReady:Z

    return-void
.end method


# virtual methods
.method public final getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .registers 1

    const-string p0, "enterprise_license_policy"

    .line 289
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 176
    sget-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_19
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_51

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_49

    const/4 v2, 0x4

    if-eq v1, v2, :cond_45

    const/4 v2, 0x5

    if-eq v1, v2, :cond_41

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 197
    :cond_41
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onEdmStateChange(Landroid/os/Message;)V

    goto :goto_5f

    .line 193
    :cond_45
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onBootStateChange(Landroid/os/Message;)V

    goto :goto_5f

    .line 189
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onUserStateChange(Landroid/os/Message;)V

    goto :goto_5f

    .line 185
    :cond_4d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onPackageStateChange(Landroid/os/Message;)V

    goto :goto_5f

    .line 181
    :cond_51
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onLicenseStateChange(Landroid/os/Message;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_54} :catch_55

    goto :goto_5f

    :catch_55
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return-void
.end method

.method public isEdmServiceReady()Z
    .registers 4

    .line 275
    iget-boolean p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmServiceReady:Z

    .line 276
    sget-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEdmServiceReady : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isKlmActive()Z
    .registers 4

    const/4 v0, 0x0

    .line 266
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "klm_activated"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_12

    const/4 p0, 0x1

    move v0, p0

    .line 267
    :cond_12
    sget-object p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKlmActive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a

    goto :goto_34

    :catch_2a
    move-exception p0

    .line 269
    sget-object v1, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return v0
.end method

.method public isUserUnlocked()Z
    .registers 4

    .line 281
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_15

    .line 282
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 283
    :goto_16
    sget-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUserUnlocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public notifyEvent(Lcom/android/server/enterprise/plm/InternalEvent;)V
    .registers 4

    .line 94
    sget-object v0, Lcom/android/server/enterprise/plm/InternalEvent;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/InternalEvent;

    if-ne p1, v0, :cond_f

    const/4 p1, 0x5

    .line 95
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    return-void
.end method

.method public final onBootStateChange(Landroid/os/Message;)V
    .registers 5

    .line 240
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 241
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootStateChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 244
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->notifyMessage(Ljava/lang/Object;)V

    goto :goto_2a

    :cond_3a
    return-void
.end method

.method public final onEdmStateChange(Landroid/os/Message;)V
    .registers 5

    .line 249
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 250
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 251
    sget-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEdmStateChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->setEdmServiceReady(Z)V

    .line 253
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    if-eqz p1, :cond_43

    const-string/jumbo v1, "ready"

    goto :goto_46

    :cond_43
    const-string/jumbo v1, "not ready"

    .line 254
    :goto_46
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->notifyMessage(Ljava/lang/Object;)V

    goto :goto_31

    :cond_4a
    return-void
.end method

.method public final onLicenseStateChange(Landroid/os/Message;)V
    .registers 6

    .line 211
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 212
    iget-object v0, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 213
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 214
    sget-object v1, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLicenseStateChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 216
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->notifyMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3a

    :cond_4e
    return-void
.end method

.method public final onPackageStateChange(Landroid/os/Message;)V
    .registers 6

    .line 221
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 222
    iget-object v0, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 223
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 224
    sget-object v1, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageStateChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 226
    invoke-virtual {v1, v0, p1}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->notifyMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_36

    :cond_46
    return-void
.end method

.method public final onUserStateChange(Landroid/os/Message;)V
    .registers 5

    .line 231
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 232
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserStateChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 235
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->notifyMessage(Ljava/lang/Object;)V

    goto :goto_2a

    :cond_3a
    return-void
.end method

.method public final provideBootIntentFilter()Landroid/content/IntentFilter;
    .registers 1

    .line 342
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    return-object p0
.end method

.method public final providePackageIntentFilter()Landroid/content/IntentFilter;
    .registers 4

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 322
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mTargetPackageNames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_16

    :cond_27
    return-object v0
.end method

.method public final provideUserIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 329
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public registerBootStateObserver(Landroid/os/Handler;I)V
    .registers 4

    .line 145
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    new-instance v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-direct {v0, p1, p2}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Landroid/os/Handler;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerEdmStateObserver(Landroid/os/Handler;I)V
    .registers 4

    .line 160
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    new-instance v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-direct {v0, p1, p2}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Landroid/os/Handler;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerLicenseStateObserver(Landroid/os/Handler;I)V
    .registers 4

    .line 100
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    new-instance v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-direct {v0, p1, p2}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Landroid/os/Handler;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerPackageObserver(Landroid/os/Handler;I)V
    .registers 4

    .line 115
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    new-instance v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-direct {v0, p1, p2}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Landroid/os/Handler;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerUserStateObserver(Landroid/os/Handler;I)V
    .registers 4

    .line 130
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    new-instance v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-direct {v0, p1, p2}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Landroid/os/Handler;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setEdmServiceReady(Z)V
    .registers 5

    .line 259
    sget-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edm service ready : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iput-boolean p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmServiceReady:Z

    return-void
.end method

.method public start()V
    .registers 1

    .line 80
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->startLicenseStateListener()V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->startPackageStateListener()V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->startUserStateListener()V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->startBootStateListener()V

    return-void
.end method

.method public final startBootStateListener()V
    .registers 4

    .line 383
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopBootStateListener()V

    .line 384
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->provideBootIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 386
    :cond_e
    new-instance v1, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener-IA;)V

    iput-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Landroid/content/BroadcastReceiver;

    .line 387
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final startLicenseStateListener()V
    .registers 4

    .line 293
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLicenseStateListener()V

    .line 295
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 297
    new-instance v1, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener-IA;)V

    iput-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    .line 298
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V

    :cond_14
    return-void
.end method

.method public final startPackageStateListener()V
    .registers 7

    .line 350
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopPackageStateListener()V

    .line 351
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->providePackageIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 352
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 353
    :cond_e
    new-instance v1, Lcom/android/server/enterprise/plm/SystemStateTracker$PackageStateListener;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/plm/SystemStateTracker$PackageStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;Lcom/android/server/enterprise/plm/SystemStateTracker$PackageStateListener-IA;)V

    iput-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Landroid/content/BroadcastReceiver;

    .line 354
    iget-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final startUserStateListener()V
    .registers 4

    .line 367
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopUserStateListener()V

    .line 368
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->provideUserIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 370
    :cond_e
    new-instance v1, Lcom/android/server/enterprise/plm/SystemStateTracker$UserStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/plm/SystemStateTracker$UserStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;Lcom/android/server/enterprise/plm/SystemStateTracker$UserStateListener-IA;)V

    iput-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Landroid/content/BroadcastReceiver;

    .line 371
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stop()V
    .registers 1

    .line 87
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopBootStateListener()V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopUserStateListener()V

    .line 89
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopPackageStateListener()V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLicenseStateListener()V

    return-void
.end method

.method public final stopBootStateListener()V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 392
    iget-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Landroid/content/BroadcastReceiver;

    .line 395
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final stopLicenseStateListener()V
    .registers 3

    .line 303
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 305
    iget-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    if-eqz v1, :cond_10

    .line 306
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->removeElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    .line 310
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final stopPackageStateListener()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 360
    iget-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Landroid/content/BroadcastReceiver;

    .line 363
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final stopUserStateListener()V
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 376
    iget-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Landroid/content/BroadcastReceiver;

    .line 379
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public unregisterBootStateObserver(Landroid/os/Handler;)V
    .registers 3

    .line 149
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 150
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 151
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 152
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 153
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1b
    return-void
.end method

.method public unregisterEdmStateObserver(Landroid/os/Handler;)V
    .registers 3

    .line 164
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 165
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 166
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 167
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 168
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1b
    return-void
.end method

.method public unregisterLicenseStateObserver(Landroid/os/Handler;)V
    .registers 3

    .line 104
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 105
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 106
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 107
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 108
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1b
    return-void
.end method

.method public unregisterPackageObserver(Landroid/os/Handler;)V
    .registers 3

    .line 119
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 120
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 121
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 122
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 123
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1b
    return-void
.end method

.method public unregisterUserStateObserver(Landroid/os/Handler;)V
    .registers 3

    .line 134
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 135
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 136
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 137
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 138
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1b
    return-void
.end method
