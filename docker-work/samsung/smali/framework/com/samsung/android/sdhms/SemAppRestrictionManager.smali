.class public Lcom/samsung/android/sdhms/SemAppRestrictionManager;
.super Ljava/lang/Object;
.source "SemAppRestrictionManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;,
        Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_ANOMALY_AUTO:Ljava/lang/String; = "added_from_anomaly_auto"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_ANOMALY_MANUAL:Ljava/lang/String; = "added_from_anomaly_manual"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_MARS_AUTO:Ljava/lang/String; = "added_from_mars_auto"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_POLICY_IN_CHINA:Ljava/lang/String; = "added_from_policy_in_china"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_PRE_O:Ljava/lang/String; = "added_from_pre_o"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_UNKNOWN:Ljava/lang/String; = "added_from_unknown"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_USER_MANUAL:Ljava/lang/String; = "added_from_user_manual"

.field public static final whitelist RESTRICTION_REASON_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final whitelist RESTRICTION_REASON_TYPE_DELETE_MARS_AUTO:Ljava/lang/String; = "deleted_from_mars_auto"

.field public static final whitelist RESTRICTION_REASON_TYPE_DELETE_POLICY_IN_CHINA:Ljava/lang/String; = "deleted_from_policy_in_china"

.field public static final whitelist RESTRICTION_REASON_TYPE_DELETE_POST_O:Ljava/lang/String; = "deleted_from_post_o"

.field public static final whitelist RESTRICTION_REASON_TYPE_DELETE_UNKNOWN:Ljava/lang/String; = "deleted_from_unknown"

.field public static final whitelist RESTRICTION_REASON_TYPE_DELETE_USER_MANUAL:Ljava/lang/String; = "deleted_from_user_manual"

.field public static final whitelist RESTRICTION_STATE_NONE:I = 0x0

.field public static final whitelist RESTRICTION_STATE_OFF:I = 0x2

.field public static final whitelist RESTRICTION_STATE_ON:I = 0x1

.field public static final whitelist RESTRICTION_TYPE_DISABLE:I = 0x0

.field public static final whitelist RESTRICTION_TYPE_DISABLE_WITHIN_24_HOUR:I = 0x2

.field public static final whitelist RESTRICTION_TYPE_NEVER_SLEEP:I = 0x3

.field public static final whitelist RESTRICTION_TYPE_SLEEP:I = 0x1


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 371
    new-instance v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    .line 344
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    .line 351
    iput-object p1, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    .line 352
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    .line 355
    return-void
.end method

.method private blacklist checkPermission(Ljava/lang/String;)V
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    const-string v1, "Must have permission "

    const/4 v2, -0x1

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_e

    goto :goto_25

    .line 360
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_25
    :goto_25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 363
    .local v0, "uid":I
    const/16 v3, 0x3e8

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v3, v4, :cond_4f

    .line 364
    invoke-static {p1, v0}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_38

    goto :goto_4f

    .line 365
    :cond_38
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    .end local v0    # "uid":I
    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method public whitelist canRestrict(ILjava/lang/String;I)Z
    .registers 6
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 178
    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 180
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    .line 181
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->canRestrict(ILjava/lang/String;I)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return v1

    .line 184
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_10
    goto :goto_15

    .line 182
    :catch_11
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearRestrictionInfo(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 327
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 329
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    .line 330
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->clearRestrictionInfo(Ljava/util/List;)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return v1

    .line 333
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_10
    goto :goto_15

    .line 331
    :catch_11
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 334
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    .line 258
    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 260
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    .line 261
    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllRestrictedList()Ljava/util/List;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v1

    .line 264
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_10
    goto :goto_15

    .line 262
    :catch_11
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRestrictableList(I)Ljava/util/List;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    .line 237
    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 239
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    .line 240
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRestrictableList(I)Ljava/util/List;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v1

    .line 243
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_10
    goto :goto_15

    .line 241
    :catch_11
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 244
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRestrictedList(I)Ljava/util/List;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    .line 282
    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 284
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    .line 285
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRestrictedList(I)Ljava/util/List;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v1

    .line 288
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_10
    goto :goto_15

    .line 286
    :catch_11
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .registers 6
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 149
    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 151
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    .line 152
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v1

    .line 155
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_10
    goto :goto_15

    .line 153
    :catch_11
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist restrict(IIZLjava/lang/String;I)Z
    .registers 13
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "byUser"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .line 209
    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 211
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_16

    .line 212
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->restrict(IIZLjava/lang/String;I)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    return v1

    .line 216
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_16
    goto :goto_1b

    .line 214
    :catch_17
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 217
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "info"    # Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 305
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 307
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    .line 308
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return v1

    .line 311
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_10
    goto :goto_15

    .line 309
    :catch_11
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 393
    return-void
.end method
