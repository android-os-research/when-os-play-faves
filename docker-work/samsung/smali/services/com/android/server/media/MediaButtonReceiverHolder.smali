.class public final Lcom/android/server/media/MediaButtonReceiverHolder;
.super Ljava/lang/Object;
.source "MediaButtonReceiverHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaButtonReceiverHolder$ComponentType;
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME_USER_ID_DELIM:Ljava/lang/String; = ","

.field public static final COMPONENT_TYPE_ACTIVITY:I = 0x2

.field public static final COMPONENT_TYPE_BROADCAST:I = 0x1

.field public static final COMPONENT_TYPE_INVALID:I = 0x0

.field public static final COMPONENT_TYPE_SERVICE:I = 0x3

.field public static final DEBUG_KEY_EVENT:Z = true

.field public static final PACKAGE_MANAGER_COMMON_FLAGS:I = 0xc0000

.field public static final TAG:Ljava/lang/String; = "PendingIntentHolder"


# instance fields
.field public final mComponentName:Landroid/content/ComponentName;

.field public final mComponentType:I

.field public final mPackageName:Ljava/lang/String;

.field public final mPendingIntent:Landroid/app/PendingIntent;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V
    .registers 5

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 147
    iput-object p2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 148
    iput-object p3, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    if-eqz p3, :cond_10

    .line 149
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_10
    const-string p1, ""

    :goto_12
    iput-object p1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    .line 150
    iput p4, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 4

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 155
    iput-object p2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    .line 157
    iput-object p3, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 158
    iput p1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    return-void
.end method

.method public static create(ILandroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_4
    invoke-static {p1}, Lcom/android/server/media/MediaButtonReceiverHolder;->getComponentType(Landroid/app/PendingIntent;)I

    move-result v0

    .line 126
    invoke-static {p1, v0}, Lcom/android/server/media/MediaButtonReceiverHolder;->getComponentName(Landroid/app/PendingIntent;I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 128
    new-instance p2, Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    return-object p2

    .line 135
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unresolvable implicit intent is set, pi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PendingIntentHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(ILandroid/content/ComponentName;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 5

    .line 140
    new-instance v0, Lcom/android/server/media/MediaButtonReceiverHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    return-object v0
.end method

.method public static getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .registers 2

    .line 375
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_5

    return-object v0

    .line 377
    :cond_5
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_a

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getComponentName(Landroid/app/PendingIntent;I)Landroid/content/ComponentName;
    .registers 5

    .line 332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_16

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    goto :goto_25

    :cond_e
    const p1, 0xc0004

    .line 342
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    move-result-object v0

    goto :goto_25

    :cond_16
    const p1, 0xd0001

    .line 335
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    move-result-object v0

    goto :goto_25

    :cond_1e
    const p1, 0xc0002

    .line 346
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    move-result-object v0

    .line 351
    :goto_25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 352
    invoke-static {v0}, Lcom/android/server/media/MediaButtonReceiverHolder;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 353
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_29

    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 356
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_59
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getComponentType(Landroid/app/PendingIntent;)I
    .registers 2

    .line 288
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 290
    :cond_8
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x2

    return p0

    .line 292
    :cond_10
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isService()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x3

    return p0
.end method

.method public static getComponentType(Landroid/content/Context;Landroid/content/ComponentName;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 310
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0xc0001

    .line 312
    :try_start_b
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_f} :catch_13

    if-eqz v0, :cond_13

    const/4 p0, 0x2

    return p0

    :catch_13
    :cond_13
    const v0, 0xc0004

    .line 320
    :try_start_16
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1a} :catch_1e

    if-eqz p0, :cond_1e

    const/4 p0, 0x3

    return p0

    :catch_1e
    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public static unflattenFromString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 8

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, ","

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 93
    array-length v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_19

    array-length v0, p1

    if-eq v0, v2, :cond_19

    goto :goto_3e

    :cond_19
    const/4 v0, 0x0

    .line 96
    aget-object v0, p1, v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_23

    return-object v1

    :cond_23
    const/4 v4, 0x1

    .line 100
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 102
    array-length v5, p1

    if-ne v5, v2, :cond_34

    .line 103
    aget-object p0, p1, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_38

    .line 104
    :cond_34
    invoke-static {p0, v0}, Lcom/android/server/media/MediaButtonReceiverHolder;->getComponentType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    .line 105
    :goto_38
    new-instance p1, Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-direct {p1, v4, v1, v0, p0}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    return-object p1

    :cond_3e
    :goto_3e
    return-object v1
.end method


# virtual methods
.method public flattenToString()Ljava/lang/String;
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_7

    const-string p0, ""

    return-object p0

    :cond_7
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 276
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 277
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget p0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    .line 278
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, ","

    .line 275
    invoke-static {p0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 165
    iget p0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    return p0
.end method

.method public send(Landroid/content/Context;Landroid/view/KeyEvent;Ljava/lang/String;ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;J)Z
    .registers 22

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    .line 196
    new-instance v5, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 197
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.KEY_EVENT"

    .line 198
    invoke-virtual {v5, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v4, p3

    .line 200
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v3

    const/4 v9, 0x0

    const/16 v10, 0x139

    const-string v11, ""

    move-object v6, v3

    move-wide/from16 v7, p7

    .line 203
    invoke-virtual/range {v6 .. v11}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    const/4 v10, 0x1

    .line 206
    invoke-virtual {v3, v10}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 207
    iget-object v4, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v6, "Sending "

    const/4 v11, 0x0

    const-string v12, "PendingIntentHolder"

    if-eqz v4, :cond_7d

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to the last known PendingIntent "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_start_53
    iget-object v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v8, 0x0

    .line 215
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    move-object v3, p1

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 213
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_64
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_53 .. :try_end_64} :catch_65

    goto :goto_ce

    :catch_65
    move-exception v0

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending key event to media button receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v11

    .line 220
    :cond_7d
    iget-object v4, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_ef

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to the restored intent "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v4, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 226
    iget v4, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 228
    :try_start_b2
    iget v6, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_cb

    const/4 v7, 0x3

    if-eq v6, v7, :cond_c3

    const/4 v6, 0x0

    .line 239
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 238
    invoke-virtual {p1, v5, v4, v6, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_ce

    .line 233
    :cond_c3
    invoke-virtual {p1, v4, v11}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_ce

    .line 230
    :cond_cb
    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ce} :catch_cf

    :goto_ce
    return v10

    :catch_cf
    move-exception v0

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending media button to the restored intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v11

    :cond_ef
    const-string v0, "Shouldn\'t be happen -- pending intent or component name must be set"

    .line 248
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MBR {pi="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", componentName="

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
