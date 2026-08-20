.class public Lcom/android/server/enterprise/plm/ProcessStateTracker;
.super Landroid/os/Handler;
.source "ProcessStateTracker.java"

# interfaces
.implements Lcom/android/server/enterprise/plm/IStateDelegate;


# static fields
.field public static final EVENT_BOOT_UPDATE:I = 0x6

.field public static final EVENT_EDM_UPDATE:I = 0x7

.field public static final EVENT_LICENSE_UPDATE:I = 0x3

.field public static final EVENT_PACKAGE_UPDATE:I = 0x4

.field public static final EVENT_TRACKER_START:I = 0x1

.field public static final EVENT_TRACKER_STOP:I = 0x2

.field public static final EVENT_USER_UPDATE:I = 0x5

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/plm/ProcessAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mStarted:Z

.field public final mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V
    .registers 5
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

    .line 34
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/plm/SystemStateTracker;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 36
    iput-object p2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_32

    .line 38
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 39
    invoke-virtual {p2, p0}, Lcom/android/server/enterprise/plm/ProcessAdapter;->setDelegate(Lcom/android/server/enterprise/plm/IStateDelegate;)V

    .line 40
    iget-object p3, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/server/enterprise/plm/ProcessAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_32
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 64
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :try_start_19
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_5e

    goto :goto_3b

    .line 87
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onEdmUpdate(Landroid/os/Message;)V

    goto :goto_5c

    .line 84
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onBootUpdate(Landroid/os/Message;)V

    goto :goto_5c

    .line 81
    :pswitch_27
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onUserUpdate(Landroid/os/Message;)V

    goto :goto_5c

    .line 78
    :pswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onPackageUpdate(Landroid/os/Message;)V

    goto :goto_5c

    .line 75
    :pswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onLicenseUpdate(Landroid/os/Message;)V

    goto :goto_5c

    .line 72
    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onTrackerStop(Landroid/os/Message;)V

    goto :goto_5c

    .line 69
    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onTrackerStart(Landroid/os/Message;)V

    goto :goto_5c

    .line 90
    :goto_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_51} :catch_52

    goto :goto_5c

    :catch_52
    move-exception p0

    .line 94
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method public isEdmServiceReady()Z
    .registers 1

    .line 227
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->isEdmServiceReady()Z

    move-result p0

    return p0
.end method

.method public isKlmActivated()Z
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->isKlmActive()Z

    move-result p0

    return p0
.end method

.method public final isStarted()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    return p0
.end method

.method public isUserUnlocked()Z
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->isUserUnlocked()Z

    move-result p0

    return p0
.end method

.method public final notifyUpdateToAdapters()V
    .registers 2

    const-string v0, ""

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyUpdateToAdapters(Ljava/lang/String;)V
    .registers 6

    .line 151
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify update for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "all"

    goto :goto_17

    :cond_16
    move-object v2, p1

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2b
    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/ProcessAdapter;

    if-nez v0, :cond_40

    goto :goto_2b

    .line 155
    :cond_40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 156
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/ProcessAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 157
    :cond_50
    sget-object v1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify update to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/ProcessAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/ProcessAdapter;->update()V

    goto :goto_2b

    :cond_6f
    return-void
.end method

.method public final onBootUpdate(Landroid/os/Message;)V
    .registers 4

    .line 202
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 203
    :cond_7
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_16

    return-void

    .line 207
    :cond_16
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 208
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters()V

    return-void
.end method

.method public final onEdmUpdate(Landroid/os/Message;)V
    .registers 4

    .line 214
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 215
    :cond_7
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEdmUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_16

    return-void

    .line 219
    :cond_16
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 220
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters()V

    return-void
.end method

.method public final onLicenseUpdate(Landroid/os/Message;)V
    .registers 6

    .line 164
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 165
    :cond_7
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLicenseUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_16

    return-void

    .line 169
    :cond_16
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 170
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "license "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_32

    const-string p1, "activated"

    goto :goto_34

    :cond_32
    const-string p1, "deactivated"

    :goto_34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters()V

    return-void
.end method

.method public final onPackageUpdate(Landroid/os/Message;)V
    .registers 6

    .line 177
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 178
    :cond_7
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_16

    return-void

    .line 182
    :cond_16
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 183
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/server/enterprise/plm/common/Utils;->getEnabledState(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    return-void
.end method

.method public final onTrackerStart(Landroid/os/Message;)V
    .registers 5

    .line 99
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_7

    return-void

    .line 101
    :cond_7
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/StartReason;

    .line 102
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrackerStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_71

    .line 105
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->start()V

    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerLicenseStateObserver(Landroid/os/Handler;I)V

    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerPackageObserver(Landroid/os/Handler;I)V

    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerUserStateObserver(Landroid/os/Handler;I)V

    .line 109
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerBootStateObserver(Landroid/os/Handler;I)V

    .line 110
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerEdmStateObserver(Landroid/os/Handler;I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_55
    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/plm/ProcessAdapter;

    if-eqz v1, :cond_55

    .line 114
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->start()V

    goto :goto_55

    :cond_6d
    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->setStarted(Z)V

    .line 120
    :cond_71
    sget-object v0, Lcom/android/server/enterprise/plm/StartReason;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/StartReason;

    if-ne p1, v0, :cond_7c

    .line 121
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    sget-object p1, Lcom/android/server/enterprise/plm/InternalEvent;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/InternalEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->notifyEvent(Lcom/android/server/enterprise/plm/InternalEvent;)V

    :cond_7c
    return-void
.end method

.method public final onTrackerStop(Landroid/os/Message;)V
    .registers 3

    .line 126
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onTrackerStop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/ProcessAdapter;

    if-eqz v0, :cond_1c

    .line 132
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/ProcessAdapter;->stop()V

    goto :goto_1c

    .line 135
    :cond_34
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterEdmStateObserver(Landroid/os/Handler;)V

    .line 136
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterBootStateObserver(Landroid/os/Handler;)V

    .line 137
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterUserStateObserver(Landroid/os/Handler;)V

    .line 138
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterPackageObserver(Landroid/os/Handler;)V

    .line 139
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterLicenseStateObserver(Landroid/os/Handler;)V

    .line 140
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stop()V

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->setStarted(Z)V

    :cond_56
    return-void
.end method

.method public final onUserUpdate(Landroid/os/Message;)V
    .registers 4

    .line 190
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 191
    :cond_7
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_16

    return-void

    .line 195
    :cond_16
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 196
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters()V

    return-void
.end method

.method public final setStarted(Z)V
    .registers 5

    .line 50
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-boolean p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    return-void
.end method

.method public start(Lcom/android/server/enterprise/plm/StartReason;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x2

    .line 59
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
