.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;,
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;,
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_TRACK:Ljava/lang/String; = "com.android.fitness.TRACK"

.field public static final ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ATTR_FIXED:Ljava/lang/String; = "fixed"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field public static final ATTR_WHITELISTED:Ljava/lang/String; = "whitelisted"

.field public static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field public static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z = false

.field public static final DEFAULT_INTENT_QUERY_FLAGS:I = 0xc2000

.field public static final DEFAULT_PACKAGE_INFO_QUERY_FLAGS:I = 0x2000b080

.field public static final FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_READ_DEFAULT_PERMISSION_EXCEPTIONS:I = 0x1

.field public static final NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_UID:Ljava/lang/String; = "android.uid.system"

.field public static final SYSTEM_UI_UID:Ljava/lang/String; = "android.uid.systemui"

.field public static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"

.field public static final TAG_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final TAG_EXCEPTIONS:Ljava/lang/String; = "exceptions"

.field public static final TAG_PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field public final NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

.field public final mContext:Landroid/content/Context;

.field public mDialerAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mGrantExceptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mLocationPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public final mLock:Ljava/lang/Object;

.field public mNotiBlockableDataByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field public mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mSmsAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;

.field public mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;


# direct methods
.method public static synthetic $r8$lambda$nU1o85mUgdzZ7ySa3_NBpWXWZY0(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGrantExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceInternal(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmGrantExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 153
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 157
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CALL_PHONE"

    .line 158
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CALL_LOG"

    .line 159
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_CALL_LOG"

    .line 160
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 161
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.USE_SIP"

    .line 162
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 163
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    .line 168
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 169
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 170
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 175
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 176
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 177
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 182
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 188
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    .line 194
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    .line 199
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_CALENDAR"

    .line 200
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    .line 205
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_SMS"

    .line 206
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_SMS"

    .line 207
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    .line 208
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_MMS"

    .line 209
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    .line 210
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 215
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    .line 225
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 226
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 231
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 232
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 233
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    .line 234
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 235
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 236
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    .line 241
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 242
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 243
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.UWB_RANGING"

    .line 244
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    .line 245
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 250
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mNotiBlockableDataByUid:Ljava/util/Map;

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 274
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    .line 341
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 342
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "DefaultPermGrantPolicy"

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 344
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 345
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 357
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method public static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    .line 2498
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_c

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x16

    if-le p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;
    .registers 1

    .line 2113
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final getDefaultCaptivePortalLoginPackage()Ljava/lang/String;
    .registers 2

    .line 1783
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const v0, 0x1040319

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultPermissionFiles()[Ljava/io/File;
    .registers 5

    .line 2330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2331
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/default-permissions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2332
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2333
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2335
    :cond_23
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2336
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2337
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2339
    :cond_3f
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2340
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2341
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2343
    :cond_5b
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2344
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 2345
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2347
    :cond_77
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2348
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 2349
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2352
    :cond_93
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.type.embedded"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_be

    .line 2353
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2354
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 2355
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2359
    :cond_be
    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "mdc.sys.omc_etcpath"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "default-permissions"

    invoke-direct {p0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 2361
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2364
    :cond_e1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e9

    const/4 p0, 0x0

    goto :goto_f1

    :cond_e9
    new-array p0, v2, [Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    :goto_f1
    return-object p0
.end method

.method public final getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 2011
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0xc2000

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 2014
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDefaultSearchSelectorPackage()Ljava/lang/String;
    .registers 2

    .line 1779
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const v0, 0x104032a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;
    .registers 6

    .line 1952
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_29

    .line 1954
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_15

    goto :goto_29

    .line 1957
    :cond_15
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result p0

    if-eqz p0, :cond_1e

    return-object p3

    .line 1960
    :cond_1e
    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1961
    invoke-virtual {p1, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    move-object p3, p0

    :cond_29
    :goto_29
    return-object p3
.end method

.method public final getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 1947
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 1774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 1774
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;
    .registers 7

    .line 1971
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0xc2000

    invoke-virtual {p0, p2, v0, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_11

    return-object p2

    .line 1976
    :cond_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p3, :cond_2c

    .line 1978
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1979
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1980
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    return-object v1

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2c
    return-object p2
.end method

.method public final getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 1966
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1989
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1991
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1993
    array-length v2, p2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_37

    aget-object v4, p2, v3

    .line 1994
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1996
    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0xc2000

    invoke-virtual {v5, v1, v6, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_2b

    goto :goto_34

    .line 2002
    :cond_2b
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 2003
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_37
    return-object v0
.end method

.method public final getKnownPackages(II)[Ljava/lang/String;
    .registers 3

    .line 1797
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final grantDefaultPermissionExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 2288
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2290
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2295
    :try_start_d
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v2, :cond_17

    .line 2296
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 2298
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_9e

    const/4 v1, 0x0

    .line 2301
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    move v12, v11

    :goto_21
    if-ge v12, v10, :cond_9d

    .line 2303
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2304
    invoke-virtual {v9, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 2305
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/List;

    .line 2306
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    move v8, v11

    :goto_3d
    if-ge v8, v15, :cond_9a

    .line 2308
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 2309
    iget-object v3, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {v9, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isPermissionDangerous(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6d

    const-string v3, "DefaultPermGrantPolicy"

    .line 2310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which isn\'t dangerous"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v8

    goto :goto_97

    :cond_6d
    if-nez v1, :cond_75

    .line 2315
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    goto :goto_78

    .line 2317
    :cond_75
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :goto_78
    move-object v7, v1

    .line 2319
    iget-object v1, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2322
    iget-boolean v5, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    iget-boolean v6, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->whitelisted:Z

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v7

    move-object/from16 v17, v7

    move/from16 v7, v16

    move/from16 v16, v8

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    move-object/from16 v1, v17

    :goto_97
    add-int/lit8 v8, v16, 0x1

    goto :goto_3d

    :cond_9a
    add-int/lit8 v12, v12, 0x1

    goto :goto_21

    :cond_9d
    return-void

    :catchall_9e
    move-exception v0

    .line 2298
    :try_start_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v0
.end method

.method public grantDefaultPermissions(I)V
    .registers 4

    .line 410
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache-IA;)V

    .line 412
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;I)V

    .line 413
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 414
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSignatureAppsNotificationPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 415
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 418
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->apply()V

    return-void
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .registers 7

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to active LUI app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method

.method public final grantDefaultPermissionsToAsrApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 12

    const-string v0, "com.tmobile.dm.cm"

    .line 2985
    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v6, "android.permission.READ_PHONE_STATE"

    const-string v7, "android.permission.POST_NOTIFICATIONS"

    const-string v8, "DefaultPermGrantPolicy"

    if-eqz v2, :cond_3f

    .line 2986
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentManagerApp pre-grant from grantDefaultPermissionsToAsrApp for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2989
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2990
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    .line 2991
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 2992
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_3f
    const-string v0, "com.tmobile.pr.adapt"

    .line 2995
    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 2996
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 2997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adapt pre-grant from grantDefaultPermissionsToTmoApp for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2999
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 3000
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_70
    const-string v0, "com.tmobile.dm.ms.services"

    .line 3004
    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_a9

    .line 3005
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 3006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileSolutionApp pre-grant from grantDefaultPermissionsToAsrApp for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3008
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3009
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CALL_PHONE"

    .line 3010
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 3011
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_a9
    return-void
.end method

.method public final grantDefaultPermissionsToAttApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 18

    move-object/from16 v6, p1

    const-string v0, "com.cequint.ecid"

    .line 2869
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v7, "android.permission.READ_CALL_LOG"

    const-string v8, "android.permission.WRITE_CONTACTS"

    const-string v9, "android.permission.SEND_SMS"

    const-string v10, "android.permission.READ_CONTACTS"

    const-string v11, "android.permission.READ_SMS"

    const-string v12, "android.permission.RECEIVE_SMS"

    const-string v13, "android.permission.READ_PHONE_STATE"

    if-eqz v2, :cond_4b

    .line 2870
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2871
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2872
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2873
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 2874
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2875
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2876
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2877
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2878
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2879
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_MMS"

    .line 2880
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 2881
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_4b
    const-string v0, "com.samsung.vvm"

    .line 2885
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v14, "android.permission.CALL_PHONE"

    if-eqz v2, :cond_7b

    .line 2886
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 2887
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2888
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2889
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2890
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2891
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2892
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2893
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 2894
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_7b
    const-string v0, "com.samsung.attvvm"

    .line 2898
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_ae

    .line 2899
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 2900
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2901
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2902
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2903
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2904
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2905
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2906
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 2907
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 2908
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_ae
    const-string v0, "com.smartcom"

    .line 2913
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_d3

    .line 2914
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 2915
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2916
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2917
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2918
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 2919
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_d3
    const-string v0, "com.dti.att"

    .line 2922
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v9, "android.permission.POST_NOTIFICATIONS"

    if-eqz v2, :cond_f4

    .line 2923
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 2924
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2925
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 2926
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_f4
    const-string v0, "com.aura.oobe.att"

    .line 2930
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_113

    .line 2931
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 2932
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2933
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 2934
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_113
    const-string v0, "com.aura.jet.att"

    .line 2938
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_132

    .line 2939
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 2940
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2941
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 2942
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_132
    const-string v0, "com.synchronoss.dcs.att.r2g"

    .line 2946
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_175

    .line 2947
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_175

    .line 2948
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.CAMERA"

    .line 2949
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2950
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2951
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2952
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2953
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CALL_LOG"

    .line 2954
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2955
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 2956
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CALENDAR"

    .line 2957
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 2958
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_175
    const-string/jumbo v0, "net.aetherpal.device"

    .line 2962
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_198

    .line 2963
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_198

    .line 2964
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2965
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2966
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 2967
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_198
    const-string v0, "com.smartcomroot"

    .line 2971
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1b7

    .line 2972
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 2973
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2974
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 2975
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_1b7
    return-void
.end method

.method public grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    .registers 12

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Grant permissions to Carrier Service app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v1, 0x0

    aput-object v0, v8, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    return-void
.end method

.method public final grantDefaultPermissionsToCharterApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 10

    const-string v0, "com.spectrum.cm.headless"

    .line 3425
    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 3426
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3427
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3428
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 3429
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 3430
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    .line 3431
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_29
    return-void
.end method

.method public final grantDefaultPermissionsToCricketApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 11

    const-string v0, "com.cricketwireless.thescoop"

    .line 3142
    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    if-eqz v3, :cond_24

    .line 3143
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3144
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 3145
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3146
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    .line 3147
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_24
    const-string v1, "com.dti.cricket"

    .line 3150
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 3151
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 3152
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 3153
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    .line 3154
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_41
    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .registers 13

    if-nez p2, :cond_3

    return-void

    .line 1851
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to sim call manager for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/util/Set;

    const/4 v0, 0x0

    .line 1852
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v8, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v8, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .registers 4

    .line 1843
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    .line 1805
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1806
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_22

    new-array v0, v1, [Ljava/util/Set;

    .line 1808
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v2

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_2b

    :cond_22
    new-array v0, v3, [Ljava/util/Set;

    .line 1811
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    :goto_2b
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Set;

    .line 1813
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v2

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v3

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v1

    const/4 v1, 0x4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1816
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1817
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5e

    new-array v0, v3, [Ljava/util/Set;

    .line 1819
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    :cond_5e
    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSystemSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .registers 5

    .line 1858
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1859
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/util/Set;

    .line 1825
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    .line 1833
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .registers 7

    .line 1838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantIgnoringSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .registers 11

    .line 1864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_19

    return-void

    .line 1868
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_39

    aget-object v3, p1, v2

    .line 1869
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_39
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .registers 11

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_19

    return-void

    .line 1879
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_43

    aget-object v3, p1, v2

    .line 1880
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_43
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 11

    .line 1888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_19

    return-void

    .line 1892
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_34

    aget-object v3, p1, v2

    .line 1895
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_34
    return-void
.end method

.method public final grantDefaultPermissionsToMetroApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 13

    .line 3086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside function grantDefaultPermissionsToMetroApp for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.tmobile.pr.adapt"

    .line 3088
    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    if-eqz v4, :cond_49

    .line 3089
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 3090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adapt pre-grant from grantDefaultPermissionsToMetroApp for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 3092
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    .line 3093
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_49
    const-string v2, "com.ironsrc.aura.tmo"

    .line 3096
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_7f

    .line 3097
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 3098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppSelector pre-grant from grantDefaultPermissionsToMetroApp for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 3100
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    .line 3101
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    .line 3102
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_7f
    const-string v2, "com.metropcs.metrozone"

    .line 3106
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_b1

    .line 3107
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 3108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "metroZone pre-grant from grantDefaultPermissionsToMetroApp for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 3110
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    .line 3111
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_b1
    const-string v2, "com.tmobile.dm.cm"

    .line 3114
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const-string v2, "android.permission.READ_PHONE_STATE"

    if-eqz v5, :cond_ec

    .line 3115
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 3116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentManagerApp pre-grant from grantDefaultPermissionsToMetroApp for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 3118
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3119
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    .line 3120
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    .line 3121
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_ec
    const-string v3, "com.tmobile.dm.ms.services"

    .line 3124
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_125

    .line 3125
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 3126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileSolutionApp pre-grant from grantDefaultPermissionsToMetroApp for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 3128
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3129
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CALL_PHONE"

    .line 3130
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move v9, p2

    .line 3131
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_125
    return-void
.end method

.method public final grantDefaultPermissionsToSprintApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 34

    move-object/from16 v7, p1

    const-string v8, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    const-string v11, "VVM is not found"

    const-string v12, "Network Companion not found"

    const-string v13, "android.permission.RECEIVE_MMS"

    const-string v14, "android.permission.READ_PHONE_NUMBERS"

    const-string v15, "android.permission.READ_CALL_LOG"

    const-string v6, "android.permission.WRITE_CONTACTS"

    const-string v5, "android.permission.SEND_SMS"

    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v3, "android.permission.READ_SMS"

    const-string v2, "android.permission.CALL_PHONE"

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    move-object/from16 v16, v5

    const-string v5, "android.permission.READ_PHONE_STATE"

    move-object/from16 v17, v11

    const-string v11, "DefaultPermGrantPolicy"

    :try_start_26
    const-string v0, "com.sprint.dsa"

    .line 3457
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 3458
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v18
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_8c

    if-eqz v18, :cond_77

    move-object/from16 v18, v4

    .line 3459
    :try_start_36
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3460
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3461
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_67

    const/16 v19, 0x0

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object/from16 v2, p1

    move-object/from16 v22, v3

    move-object v3, v0

    move-object/from16 v23, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    move-object v13, v5

    move-object/from16 v30, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v30

    move/from16 v5, v19

    move-object/from16 v24, v6

    move/from16 v6, p2

    .line 3462
    :try_start_61
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_a6

    :catch_65
    move-exception v0

    goto :goto_a1

    :catch_67
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v6

    move-object/from16 v23, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    goto :goto_9a

    :cond_77
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v6

    move-object/from16 v23, v12

    move-object/from16 v18, v13

    move-object v12, v4

    move-object v13, v5

    move-object/from16 v30, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v30

    goto :goto_a6

    :catch_8c
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v6

    move-object/from16 v23, v12

    move-object/from16 v18, v13

    move-object v12, v4

    :goto_9a
    move-object v13, v5

    move-object/from16 v30, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v30

    :goto_a1
    const-string v1, "DSS not found"

    .line 3465
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a6
    :try_start_a6
    const-string v0, "com.sprint.ce.updater"

    .line 3469
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_d6

    .line 3470
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 3471
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3472
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_bc} :catch_db

    move-object/from16 v6, v20

    .line 3473
    :try_start_be
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_d1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v19, v8

    move-object v8, v6

    move/from16 v6, p2

    .line 3474
    :try_start_cb
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_cf

    goto :goto_e5

    :catch_cf
    move-exception v0

    goto :goto_e0

    :catch_d1
    move-exception v0

    move-object/from16 v19, v8

    move-object v8, v6

    goto :goto_e0

    :cond_d6
    move-object/from16 v19, v8

    move-object/from16 v8, v20

    goto :goto_e5

    :catch_db
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v8, v20

    :goto_e0
    const-string v1, "MobileInstaller not found"

    .line 3477
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e5
    :try_start_e5
    const-string v0, "com.sprint.w.installer"

    .line 3481
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_10f

    .line 3482
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 3483
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3484
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3485
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 3486
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_108} :catch_109

    goto :goto_10f

    :catch_109
    move-exception v0

    const-string v1, "MobileID not found"

    .line 3489
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10f
    :goto_10f
    :try_start_10f
    const-string v0, "com.dish.wireless.activation"

    .line 3493
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1a7

    .line 3494
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 3495
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_122} :catch_1b4

    move-object/from16 v6, v22

    .line 3496
    :try_start_124
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3497
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3498
    invoke-interface {v4, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3499
    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CALL_LOG"

    .line 3500
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3501
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3502
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3503
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_13e} :catch_19c

    move-object/from16 v5, v19

    .line 3504
    :try_start_140
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3505
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 3506
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_14b} :catch_198

    move-object/from16 v2, v21

    .line 3507
    :try_start_14d
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_150} :catch_18e

    move-object/from16 v1, v16

    .line 3508
    :try_start_152
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_155} :catch_182

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    .line 3509
    :try_start_159
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    .line 3510
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_161} :catch_17a

    const/4 v0, 0x0

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v2

    move-object/from16 v2, p1

    move-object/from16 v27, v5

    move-object/from16 v16, v15

    move-object/from16 v15, v19

    move v5, v0

    move-object v15, v6

    move/from16 v6, p2

    .line 3511
    :try_start_174
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_177} :catch_178

    goto :goto_1b1

    :catch_178
    move-exception v0

    goto :goto_1bf

    :catch_17a
    move-exception v0

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v5

    goto :goto_1a3

    :catch_182
    move-exception v0

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v19, v5

    move-object/from16 v16, v15

    move-object/from16 v27, v18

    goto :goto_1a5

    :catch_18e
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v19, v5

    move-object/from16 v25, v16

    move-object/from16 v27, v18

    goto :goto_1a3

    :catch_198
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_19d

    :catch_19c
    move-exception v0

    :goto_19d
    move-object/from16 v25, v16

    move-object/from16 v27, v18

    move-object/from16 v26, v21

    :goto_1a3
    move-object/from16 v16, v15

    :goto_1a5
    move-object v15, v6

    goto :goto_1bf

    :cond_1a7
    move-object/from16 v25, v16

    move-object/from16 v27, v18

    move-object/from16 v26, v21

    move-object/from16 v16, v15

    move-object/from16 v15, v22

    :goto_1b1
    move-object/from16 v6, v23

    goto :goto_1c4

    :catch_1b4
    move-exception v0

    move-object/from16 v25, v16

    move-object/from16 v27, v18

    move-object/from16 v26, v21

    move-object/from16 v16, v15

    move-object/from16 v15, v22

    :goto_1bf
    move-object/from16 v6, v23

    .line 3514
    invoke-static {v11, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c4
    :try_start_1c4
    const-string v0, "com.dish.wireless.carrierapp"

    .line 3518
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1fa

    .line 3519
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 3520
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1d7} :catch_1ff

    move-object/from16 v5, v24

    .line 3521
    :try_start_1d9
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    .line 3522
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1e1} :catch_1f4

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v28, v5

    move v5, v0

    move-object/from16 v18, v9

    move-object v9, v6

    move/from16 v6, p2

    .line 3523
    :try_start_1ee
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_1f1} :catch_1f2

    goto :goto_208

    :catch_1f2
    move-exception v0

    goto :goto_205

    :catch_1f4
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v18, v9

    goto :goto_204

    :cond_1fa
    move-object/from16 v18, v9

    move-object/from16 v28, v24

    goto :goto_208

    :catch_1ff
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v28, v24

    :goto_204
    move-object v9, v6

    .line 3526
    :goto_205
    invoke-static {v11, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_208
    :try_start_208
    const-string v0, "com.dish.wireless.installer"

    .line 3530
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_22f

    .line 3531
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_22f

    .line 3532
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3533
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 3534
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_228} :catch_229

    goto :goto_22f

    :catch_229
    move-exception v0

    const-string v1, "DishInstaller not found"

    .line 3537
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22f
    :goto_22f
    :try_start_22f
    const-string v0, "com.ironsource.appcloud.oobe"

    .line 3541
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_256

    .line 3542
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_256

    .line 3543
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3544
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 3545
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_24f} :catch_250

    goto :goto_256

    :catch_250
    move-exception v0

    const-string v1, "AppCloudBoost not found"

    .line 3548
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_256
    :goto_256
    :try_start_256
    const-string v0, "com.aura.oobe.dish"

    .line 3552
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_27d

    .line 3553
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_27d

    .line 3554
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3555
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 3556
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_276} :catch_277

    goto :goto_27d

    :catch_277
    move-exception v0

    const-string v1, "Dish AppCloud not found"

    .line 3559
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27d
    :goto_27d
    :try_start_27d
    const-string v0, "com.coremobility.app.vnotes"

    .line 3564
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_2c1

    .line 3565
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2c1

    .line 3566
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_290} :catch_2ca

    move-object/from16 v9, v26

    .line 3567
    :try_start_292
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3568
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3569
    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3570
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3571
    invoke-interface {v4, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_2a1} :catch_2bb

    move-object/from16 v6, v25

    .line 3572
    :try_start_2a3
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_2a6} :catch_2b6

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v20, v10

    move-object v10, v6

    move/from16 v6, p2

    .line 3573
    :try_start_2b0
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2b3} :catch_2b4

    goto :goto_2c7

    :catch_2b4
    move-exception v0

    goto :goto_2d1

    :catch_2b6
    move-exception v0

    move-object/from16 v20, v10

    move-object v10, v6

    goto :goto_2d1

    :catch_2bb
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v10, v25

    goto :goto_2d1

    :cond_2c1
    move-object/from16 v20, v10

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    :goto_2c7
    move-object/from16 v6, v17

    goto :goto_2d6

    :catch_2ca
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    :goto_2d1
    move-object/from16 v6, v17

    .line 3576
    invoke-static {v11, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d6
    :try_start_2d6
    const-string v0, "com.dish.vvm"

    .line 3580
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_311

    .line 3581
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_311

    .line 3582
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3583
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3584
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3585
    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3586
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3587
    invoke-interface {v4, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3588
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3589
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2fe
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_2fe} :catch_30c

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v10, v6

    move/from16 v6, p2

    .line 3590
    :try_start_306
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_309
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_309} :catch_30a

    goto :goto_311

    :catch_30a
    move-exception v0

    goto :goto_30e

    :catch_30c
    move-exception v0

    move-object v10, v6

    .line 3593
    :goto_30e
    invoke-static {v11, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_311
    :goto_311
    :try_start_311
    const-string v0, "com.sprint.ms.smf.services"

    .line 3597
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_34d

    .line 3598
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_34d

    .line 3599
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3600
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v20

    .line 3601
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v18

    .line 3602
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3603
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v19

    .line 3604
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3605
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 3606
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_346
    .catch Ljava/lang/Exception; {:try_start_311 .. :try_end_346} :catch_347

    goto :goto_34d

    :catch_347
    move-exception v0

    const-string v1, "SMF not found"

    .line 3609
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3613
    :cond_34d
    :goto_34d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSprintOreoMRUpgradeModel()Z

    move-result v0

    const-string v10, "android.permission.GET_ACCOUNTS"

    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v5, "android.permission.READ_CONTACTS"

    if-eqz v0, :cond_3a4

    :try_start_359
    const-string v0, "com.cequint.ecid"

    .line 3616
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_440

    .line 3617
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_440

    .line 3618
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3619
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v28

    .line 3620
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    .line 3621
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3622
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3623
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3624
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3625
    invoke-interface {v4, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3626
    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v27

    .line 3627
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3628
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 3629
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_39a
    .catch Ljava/lang/Exception; {:try_start_359 .. :try_end_39a} :catch_39c

    goto/16 :goto_440

    :catch_39c
    move-exception v0

    const-string v1, "Sprint CallerID is not found"

    .line 3632
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_440

    :cond_3a4
    move-object/from16 v1, v16

    move-object/from16 v4, v27

    move-object/from16 v2, v28

    :try_start_3aa
    const-string v0, "com.sprint.ms.cdm"

    .line 3638
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_3df

    .line 3639
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_3df

    .line 3640
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3641
    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3642
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3643
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3c6
    .catch Ljava/lang/Exception; {:try_start_3aa .. :try_end_3c6} :catch_3e9

    const/4 v8, 0x0

    move-object v9, v1

    move-object/from16 v1, p0

    move-object/from16 v29, v2

    move-object/from16 v2, p1

    move-object/from16 v16, v10

    move-object v10, v4

    move-object v4, v0

    move-object/from16 v18, v10

    move-object v10, v5

    move v5, v8

    move-object v8, v6

    move/from16 v6, p2

    .line 3644
    :try_start_3d9
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_3dc
    .catch Ljava/lang/Exception; {:try_start_3d9 .. :try_end_3dc} :catch_3dd

    goto :goto_3f8

    :catch_3dd
    move-exception v0

    goto :goto_3f3

    :cond_3df
    move-object v9, v1

    move-object/from16 v29, v2

    move-object/from16 v18, v4

    move-object v8, v6

    move-object/from16 v16, v10

    move-object v10, v5

    goto :goto_3f8

    :catch_3e9
    move-exception v0

    move-object v9, v1

    move-object/from16 v29, v2

    move-object/from16 v18, v4

    move-object v8, v6

    move-object/from16 v16, v10

    move-object v10, v5

    :goto_3f3
    const-string v1, "CDM not found"

    .line 3647
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f8
    :try_start_3f8
    const-string v0, "com.sprint.ecid"

    .line 3651
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_440

    .line 3652
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_440

    .line 3653
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3654
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v29

    .line 3655
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3656
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3657
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3658
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3659
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3660
    invoke-interface {v4, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3661
    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v18

    .line 3662
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    .line 3663
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 3664
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_439
    .catch Ljava/lang/Exception; {:try_start_3f8 .. :try_end_439} :catch_43a

    goto :goto_440

    :catch_43a
    move-exception v0

    const-string v1, "Sprint CallerID2 is not found"

    .line 3667
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_440
    :goto_440
    return-void
.end method

.method public final grantDefaultPermissionsToTmoApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 13

    .line 3020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside function grantDefaultPermissionsToTmoApp for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.tmobile.echolocate"

    .line 3022
    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const-string v0, "android.permission.READ_PHONE_STATE"

    if-eqz v4, :cond_58

    .line 3023
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 3024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EchoApp pre-grant from grantDefaultPermissionsToTmoApp for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 3026
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3027
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3028
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 3029
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    .line 3030
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_58
    const-string v2, "com.tmobile.pr.mytmobile"

    .line 3034
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    if-eqz v5, :cond_8b

    .line 3035
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 3036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Access Tmobile pre-grant from grantDefaultPermissionsToTmoApp for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 3038
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    .line 3039
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_8b
    const-string v3, "com.tmobile.pr.adapt"

    .line 3043
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_bc

    .line 3044
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 3045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adapt pre-grant from grantDefaultPermissionsToTmoApp for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 3047
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move v9, p2

    .line 3048
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_bc
    const-string v3, "com.ironsrc.aura.tmo"

    .line 3051
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_f2

    .line 3052
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 3053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppSelector pre-grant from grantDefaultPermissionsToTmoApp for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 3055
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "android.permission.READ_PHONE_NUMBERS"

    .line 3056
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move v9, p2

    .line 3057
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_f2
    const-string v3, "com.tmobile.dm.cm"

    .line 3060
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_12b

    .line 3061
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 3062
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentManagerApp pre-grant from grantDefaultPermissionsToTmoApp for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 3064
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3065
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    .line 3066
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move v9, p2

    .line 3067
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_12b
    const-string v3, "com.tmobile.dm.ms.services"

    .line 3070
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_164

    .line 3071
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_164

    .line 3072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileSolutionApp pre-grant from grantDefaultPermissionsToTmoApp for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 3074
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3075
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CALL_PHONE"

    .line 3076
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move v9, p2

    .line 3077
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_164
    return-void
.end method

.method public final grantDefaultPermissionsToUSCApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 10

    const-string v0, "com.LogiaGroup.LogiaDeck"

    .line 3165
    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 3166
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3167
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 3168
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    .line 3169
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_1f
    return-void
.end method

.method public final grantDefaultPermissionsToVerizonApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 21

    move-object/from16 v6, p1

    const-string v0, "com.verizon.mips.services"

    .line 3176
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v7, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v8, "android.permission.SEND_SMS"

    const-string v9, "android.permission.POST_NOTIFICATIONS"

    const-string v10, "android.permission.RECEIVE_SMS"

    const-string v11, "android.permission.CALL_PHONE"

    const-string v12, "android.permission.READ_PHONE_STATE"

    if-eqz v2, :cond_4c

    .line 3177
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3178
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3179
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3180
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3181
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3182
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3183
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3184
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3185
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 3186
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3187
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3188
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_4c
    const-string v0, "com.motricity.verizon.ssodownloadable"

    .line 3192
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 3193
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3194
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3195
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3196
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3197
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_6f
    const-string v0, "com.vzw.hss.myverizon"

    .line 3201
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v13, "android.permission.READ_SMS"

    const-string v14, "android.permission.READ_CALL_LOG"

    if-eqz v2, :cond_a8

    .line 3202
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 3203
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3204
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3205
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3206
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3207
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3208
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3209
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3210
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3211
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3212
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_a8
    const-string v0, "com.LogiaGroup.LogiaDeck"

    .line 3216
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_cb

    .line 3217
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 3218
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3219
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3220
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3221
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_cb
    const-string v0, "com.vzw.ecid"

    .line 3226
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v15, "android.permission.WRITE_CONTACTS"

    const-string v5, "android.permission.READ_CONTACTS"

    if-eqz v2, :cond_10b

    .line 3227
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 3228
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3229
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3230
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3231
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3232
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3233
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3234
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3235
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3236
    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3237
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, v13

    move-object v13, v5

    move/from16 v5, p2

    .line 3238
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_10e

    :cond_10b
    move-object/from16 v16, v13

    move-object v13, v5

    :goto_10e
    const-string v0, "com.cequint.ecid"

    .line 3242
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_146

    .line 3243
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 3244
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3245
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3246
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3247
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3248
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3249
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3250
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3251
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3252
    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3253
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3254
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_146
    const-string v0, "com.vcast.mediamanager"

    .line 3260
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v5, "android.permission.WRITE_CALL_LOG"

    if-eqz v2, :cond_1b7

    .line 3261
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 3262
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3263
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3264
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3265
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3266
    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 3267
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3268
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3269
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3270
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3271
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3272
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_MMS"

    .line 3273
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3274
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    .line 3275
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 3276
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3277
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 3278
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 3279
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 3280
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v17, v9

    move-object v9, v4

    move/from16 v4, v16

    move-object/from16 v16, v9

    move-object v9, v5

    move/from16 v5, p2

    .line 3281
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_1ba

    :cond_1b7
    move-object/from16 v17, v9

    move-object v9, v5

    :goto_1ba
    const-string v0, "com.qualcomm.ltebc_vzw"

    .line 3285
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1da

    .line 3286
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 3287
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3288
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3289
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_1da
    const-string v0, "com.expway.embmsserver"

    .line 3293
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1fa

    .line 3294
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 3295
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3296
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3297
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_1fa
    const-string v0, "com.verizon.onetalk.dialer"

    .line 3300
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_23b

    .line 3301
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_23b

    .line 3302
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3303
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3304
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3305
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3306
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3307
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 3308
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3309
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3310
    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CAMERA"

    .line 3311
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    .line 3312
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3313
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_23b
    const-string v0, "com.samsung.vvm"

    .line 3317
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_27a

    .line 3318
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_27a

    .line 3319
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3320
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3321
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3322
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3323
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3324
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3325
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    .line 3326
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    .line 3327
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3328
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3329
    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3330
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_27a
    const-string v0, "com.securityandprivacy.android.verizon.vms"

    .line 3334
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_29c

    .line 3335
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_29c

    .line 3336
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v17

    .line 3337
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3338
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_29c
    return-void
.end method

.method public final grantDefaultPermissionsToVerizonAppForVPP(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 18

    move-object/from16 v6, p1

    const-string v0, "com.verizon.mips.services"

    .line 3345
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v7, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v8, "android.permission.SEND_SMS"

    const-string v9, "android.permission.CALL_PHONE"

    const-string v10, "android.permission.POST_NOTIFICATIONS"

    const-string v11, "android.permission.RECEIVE_SMS"

    const-string v12, "android.permission.READ_PHONE_STATE"

    if-eqz v2, :cond_4b

    .line 3346
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3347
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3348
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3349
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3350
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3351
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3352
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3353
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3354
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 3355
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3356
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3357
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_4b
    const-string v0, "com.motricity.verizon.ssodownloadable"

    .line 3361
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 3362
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 3363
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3364
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3365
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3366
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_6d
    const-string v0, "com.vzw.hss.myverizon"

    .line 3370
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v13, "android.permission.READ_SMS"

    const-string v14, "android.permission.READ_CALL_LOG"

    if-eqz v2, :cond_a5

    .line 3371
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 3372
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3373
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3374
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3375
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3376
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3377
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3378
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3379
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3380
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3381
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_a5
    const-string v0, "com.LogiaGroup.LogiaDeck"

    .line 3385
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_c7

    .line 3386
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 3387
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3388
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3389
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3390
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_c7
    const-string v0, "com.vcast.mediamanager"

    .line 3394
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_12f

    .line 3395
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 3396
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3397
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3398
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CONTACTS"

    .line 3399
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 3400
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 3401
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3402
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3403
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CALL_LOG"

    .line 3404
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3405
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3406
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_MMS"

    .line 3407
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3408
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3409
    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 3410
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3411
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 3412
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 3413
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 3414
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3415
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_12f
    return-void
.end method

.method public final grantDefaultSystemHandlerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    const-string v0, "DefaultPermGrantPolicy"

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default platform handlers for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 805
    :try_start_1f
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 806
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 807
    iget-object v3, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 808
    iget-object v4, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 809
    iget-object v5, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 810
    iget-object v6, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 811
    iget-object v7, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 812
    iget-object v11, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;

    .line 813
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_f76

    if-eqz v3, :cond_38

    .line 816
    invoke-interface {v3, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_39

    :cond_38
    const/4 v13, 0x0

    :goto_39
    if-eqz v0, :cond_40

    .line 818
    invoke-interface {v0, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    if-eqz v2, :cond_49

    .line 820
    invoke-interface {v2, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_4a

    :cond_49
    const/4 v14, 0x0

    :goto_4a
    if-eqz v4, :cond_52

    .line 822
    invoke-interface {v4, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    goto :goto_53

    :cond_52
    const/4 v15, 0x0

    :goto_53
    if-eqz v5, :cond_5b

    .line 824
    invoke-interface {v5, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    :goto_5c
    if-eqz v6, :cond_64

    .line 826
    invoke-interface {v6, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_65

    :cond_64
    const/4 v6, 0x0

    :goto_65
    if-eqz v7, :cond_6d

    .line 828
    invoke-interface {v7, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_6e

    :cond_6d
    const/4 v7, 0x0

    :goto_6e
    if-eqz v11, :cond_78

    const-string v1, "com.android.contacts"

    .line 830
    invoke-interface {v11, v1, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_79

    :cond_78
    const/4 v4, 0x0

    :goto_79
    if-eqz v11, :cond_83

    const-string v1, "com.android.calendar"

    .line 832
    invoke-interface {v11, v1, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_84

    :cond_83
    const/4 v11, 0x0

    .line 835
    :goto_84
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 836
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/util/Set;

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v12, 0x0

    aput-object v16, v2, v12

    .line 835
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const/4 v2, 0x2

    .line 841
    invoke-virtual {v8, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v2, [Ljava/util/Set;

    sget-object v19, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v19, v3, v12

    const/4 v2, 0x1

    aput-object v16, v3, v2

    .line 840
    invoke-virtual {v8, v9, v1, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const/4 v3, 0x4

    .line 846
    invoke-virtual {v8, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v2, [Ljava/util/Set;

    aput-object v19, v3, v12

    .line 848
    invoke-virtual {v8, v9, v1, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const/4 v3, 0x3

    new-array v2, v3, [Ljava/util/Set;

    .line 849
    sget-object v22, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v22, v2, v12

    sget-object v23, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x1

    aput-object v23, v2, v3

    const/16 v20, 0x2

    aput-object v16, v2, v20

    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 853
    invoke-virtual {v8, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/util/Set;

    aput-object v22, v3, v12

    .line 855
    sget-object v22, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v22, v3, v2

    sget-object v21, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v21, v3, v20

    sget-object v21, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v22, 0x3

    aput-object v21, v3, v22

    sget-object v22, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    const/16 v18, 0x4

    aput-object v22, v3, v18

    invoke-virtual {v8, v9, v1, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    new-array v3, v2, [Ljava/util/Set;

    aput-object v16, v3, v12

    .line 858
    invoke-virtual {v8, v9, v1, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSearchSelectorPackage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    aput-object v16, v3, v12

    invoke-virtual {v8, v9, v1, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultCaptivePortalLoginPackage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    aput-object v16, v3, v12

    invoke-virtual {v8, v9, v1, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 871
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    new-array v2, v3, [Ljava/util/Set;

    aput-object v21, v2, v12

    sget-object v21, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v22, 0x1

    aput-object v21, v2, v22

    const/16 v20, 0x2

    aput-object v19, v2, v20

    .line 870
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "com.sec.android.app.camera"

    .line 874
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v24

    if-eqz v24, :cond_165

    .line 876
    invoke-static/range {v24 .. v24}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 877
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 878
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v25, 0x0

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    move/from16 v12, v22

    move-object/from16 v3, v24

    move-object/from16 v26, v4

    move-object/from16 v4, v20

    move-object/from16 v27, v5

    move/from16 v5, v25

    move-object/from16 v28, v6

    move/from16 v6, p2

    .line 879
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_16d

    :cond_165
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v12, v22

    :goto_16d
    const-string v1, "com.samsung.android.visionintelligence"

    .line 883
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_199

    .line 885
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 886
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "android.permission.CAMERA"

    .line 887
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 888
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 889
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 890
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_199
    const-string v1, "com.samsung.android.mdx.quickboard"

    .line 894
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1c0

    .line 895
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 896
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 897
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 898
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 899
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_1c0
    const-string v1, "com.samsung.android.fast"

    .line 903
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_209

    .line 904
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_209

    const-string v1, "KOREA"

    const-string/jumbo v2, "ro.csc.country_code"

    .line 905
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1de

    goto :goto_209

    .line 908
    :cond_1de
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_209

    const-string v2, "com.samsung.android.fast"

    const-string v4, "android"

    .line 909
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_209

    .line 910
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 911
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 912
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 913
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_209
    :goto_209
    const-string v1, "com.mobiletools.systemhelper"

    .line 919
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_23a

    .line 920
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_23a

    .line 921
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 922
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 923
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 924
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 925
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 926
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_23a
    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    .line 931
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v21, v2, v3

    .line 930
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string/jumbo v1, "media"

    .line 937
    invoke-virtual {v8, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    new-array v2, v6, [Ljava/util/Set;

    aput-object v19, v2, v3

    aput-object v16, v2, v12

    .line 936
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "downloads"

    .line 942
    invoke-virtual {v8, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/util/Set;

    aput-object v19, v2, v3

    aput-object v16, v2, v12

    .line 941
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    .line 947
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/util/Set;

    aput-object v19, v2, v3

    .line 946
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "com.android.externalstorage.documents"

    .line 953
    invoke-virtual {v8, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/util/Set;

    aput-object v19, v2, v3

    .line 952
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "android.credentials.INSTALL"

    .line 958
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/util/Set;

    aput-object v19, v2, v3

    .line 957
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    move-object/from16 v1, v27

    if-nez v1, :cond_29f

    const-string v1, "android.intent.action.DIAL"

    .line 964
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 965
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    :cond_29c
    move-object/from16 v1, v28

    goto :goto_2ab

    .line 967
    :cond_29f
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2a1
    if-ge v3, v2, :cond_29c

    aget-object v4, v1, v3

    .line 968
    invoke-virtual {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a1

    :goto_2ab
    if-eqz v1, :cond_2b9

    .line 974
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2af
    if-ge v3, v2, :cond_2b9

    aget-object v4, v1, v3

    .line 975
    invoke-virtual {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2af

    :cond_2b9
    if-eqz v7, :cond_2c7

    .line 982
    array-length v1, v7

    const/4 v2, 0x0

    :goto_2bd
    if-ge v2, v1, :cond_2c7

    aget-object v3, v7, v2

    .line 983
    invoke-virtual {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2bd

    :cond_2c7
    if-nez v15, :cond_2d3

    const-string v1, "android.intent.category.APP_MESSAGING"

    .line 990
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 992
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    goto :goto_2df

    .line 994
    :cond_2d3
    array-length v1, v15

    const/4 v2, 0x0

    :goto_2d5
    if-ge v2, v1, :cond_2df

    aget-object v3, v15, v2

    .line 995
    invoke-virtual {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d5

    :cond_2df
    :goto_2df
    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    .line 1001
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x3

    new-array v2, v15, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v2, v12

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v2, v6

    .line 1000
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    .line 1006
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/util/Set;

    aput-object v3, v2, v4

    .line 1005
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "android.intent.category.APP_CALENDAR"

    .line 1012
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/util/Set;

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v16, v2, v4

    sget-object v19, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v19, v2, v12

    aput-object v7, v2, v6

    .line 1011
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "com.android.calendar"

    .line 1018
    invoke-virtual {v8, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/util/Set;

    aput-object v19, v2, v4

    .line 1019
    sget-object v20, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v20, v2, v12

    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    new-array v2, v12, [Ljava/util/Set;

    aput-object v16, v2, v4

    .line 1021
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    if-eqz v11, :cond_33f

    .line 1027
    invoke-virtual {v8, v9, v11, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    new-array v2, v12, [Ljava/util/Set;

    aput-object v16, v2, v4

    .line 1026
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V

    :cond_33f
    const-string v1, "com.samsung.android.scs"

    .line 1032
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_37c

    .line 1034
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_37c

    .line 1035
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "android.permission.READ_CONTACTS"

    .line 1036
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CALENDAR"

    .line 1037
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CALL_LOG"

    .line 1038
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_SMS"

    .line 1039
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1040
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 1041
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v11, v6

    move/from16 v6, p2

    .line 1042
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_37d

    :cond_37c
    move v11, v6

    :goto_37d
    const-string v1, "android.intent.category.APP_CONTACTS"

    .line 1047
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v19, v2, v3

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v2, v12

    .line 1046
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    move-object/from16 v1, v26

    if-eqz v1, :cond_39e

    .line 1054
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    new-array v2, v12, [Ljava/util/Set;

    aput-object v19, v2, v3

    .line 1053
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V

    :cond_39e
    const-string v1, "com.android.contacts"

    .line 1060
    invoke-virtual {v8, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/util/Set;

    aput-object v19, v2, v3

    aput-object v4, v2, v12

    .line 1061
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    new-array v2, v12, [Ljava/util/Set;

    aput-object v20, v2, v3

    .line 1063
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 1067
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/util/Set;

    aput-object v19, v2, v3

    aput-object v7, v2, v12

    .line 1066
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1072
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e0

    const-string v1, "android.intent.category.APP_MAPS"

    .line 1074
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v2, v3

    .line 1073
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    :cond_3e0
    const-string v1, "android.intent.category.APP_EMAIL"

    .line 1081
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/util/Set;

    aput-object v19, v2, v3

    aput-object v16, v2, v12

    .line 1080
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const/4 v7, 0x5

    .line 1086
    invoke-virtual {v8, v7, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_40a

    const-string v1, "android.intent.category.APP_BROWSER"

    .line 1089
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1091
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40a

    const/4 v3, 0x0

    goto :goto_40b

    :cond_40a
    move-object v3, v1

    :goto_40b
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v4, v12, [Ljava/util/Set;

    .line 1095
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v16, v4

    move/from16 v4, p2

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    const/4 v7, 0x7

    const/16 v6, 0x8

    const/4 v5, 0x6

    if-eqz v13, :cond_459

    .line 1100
    array-length v1, v13

    const/4 v2, 0x0

    :goto_429
    if-ge v2, v1, :cond_459

    aget-object v3, v13, v2

    new-array v4, v6, [Ljava/util/Set;

    .line 1101
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v17, 0x0

    aput-object v16, v4, v17

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v16, v4, v12

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v16, v4, v11

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v16, v4, v15

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v16, v4, v18

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x5

    aput-object v16, v4, v11

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v16, v4, v5

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v16, v4, v7

    invoke-virtual {v8, v9, v3, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x2

    goto :goto_429

    :cond_459
    const/4 v11, 0x5

    .line 1108
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_479

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    .line 1111
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v12

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 1110
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1118
    :cond_479
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    .line 1119
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1121
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/util/Set;

    sget-object v13, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    .line 1120
    invoke-virtual {v8, v9, v1, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "CHINA"

    const-string/jumbo v2, "ro.csc.country_code"

    .line 1125
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e9

    const-string v1, "com.sec.android.easyMover.Agent"

    .line 1126
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_4e9

    .line 1127
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_4e9

    .line 1128
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 1129
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 1130
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    .line 1131
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1132
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_4e9

    const-string v2, "com.sec.android.easyMover.Agent"

    const-string v5, "android"

    .line 1133
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4e5

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v7, 0x6

    move/from16 v16, v6

    move/from16 v6, p2

    .line 1134
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_4ec

    :cond_4e5
    move/from16 v16, v6

    const/4 v7, 0x6

    goto :goto_4ec

    :cond_4e9
    move v7, v5

    move/from16 v16, v6

    :goto_4ec
    const-string v1, "CHINA"

    const-string/jumbo v2, "ro.csc.country_code"

    .line 1140
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x9

    if-eqz v1, :cond_53b

    const-string v1, "com.google.android.gms"

    new-array v3, v2, [Ljava/util/Set;

    .line 1141
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v12

    const/4 v4, 0x2

    aput-object v13, v3, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v15

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v18

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v11

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v7

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x7

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v16

    invoke-virtual {v8, v9, v1, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v1, "com.google.android.gms"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/util/Set;

    .line 1145
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v12

    invoke-virtual {v8, v9, v1, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_53c

    :cond_53b
    const/4 v5, 0x0

    .line 1149
    :goto_53c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isDuoStubModel()Z

    move-result v1

    if-eqz v1, :cond_55c

    const-string v1, "com.google.android.apps.tachyon"

    new-array v3, v11, [Ljava/util/Set;

    .line 1150
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v5

    aput-object v13, v3, v12

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v15

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v18

    invoke-virtual {v8, v9, v1, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    :cond_55c
    if-eqz v0, :cond_5a9

    .line 1156
    array-length v1, v0

    const/4 v3, 0x0

    :goto_560
    if-ge v3, v1, :cond_5a9

    aget-object v4, v0, v3

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/util/Set;

    .line 1157
    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v13, 0x0

    aput-object v6, v5, v13

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v12

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v13, 0x2

    aput-object v6, v5, v13

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v15

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v18

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v11

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v7

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v13, 0x7

    aput-object v6, v5, v13

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v16

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v2

    invoke-virtual {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/util/Set;

    .line 1162
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v17, 0x0

    aput-object v5, v6, v17

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v6, v12

    invoke-virtual {v8, v9, v4, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_560

    :cond_5a9
    if-eqz v14, :cond_5cc

    .line 1168
    array-length v0, v14

    const/4 v1, 0x0

    :goto_5ad
    if-ge v1, v0, :cond_5cc

    aget-object v2, v14, v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/util/Set;

    .line 1169
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v12

    invoke-virtual {v8, v9, v2, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    new-array v3, v12, [Ljava/util/Set;

    .line 1171
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ad

    .line 1177
    :cond_5cc
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 1178
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "foo.mp3"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1179
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1181
    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v12, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1180
    invoke-virtual {v8, v9, v0, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER_APP"

    .line 1187
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1189
    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v3, v12

    .line 1188
    invoke-virtual {v8, v9, v0, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1193
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_685

    const-string v0, "android.intent.category.HOME_MAIN"

    .line 1196
    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v15, [Ljava/util/Set;

    .line 1198
    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v3, v4

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v3, v12

    const/4 v6, 0x2

    aput-object v1, v3, v6

    invoke-virtual {v8, v9, v0, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    new-array v3, v12, [Ljava/util/Set;

    .line 1200
    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v3, v4

    invoke-virtual {v8, v9, v0, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1203
    iget-object v3, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_673

    const-string v3, "DefaultPermGrantPolicy"

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wear: Skipping permission grant for Default fitness tracker app : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto :goto_687

    :cond_673
    const-string v0, "com.android.fitness.TRACK"

    .line 1208
    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v12, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const/16 v23, 0x0

    aput-object v4, v3, v23

    .line 1207
    invoke-virtual {v8, v9, v0, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_687

    :cond_685
    move/from16 v23, v4

    :goto_687
    const-string v0, "com.android.printspooler"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/util/Set;

    aput-object v1, v4, v23

    aput-object v5, v4, v12

    .line 1214
    invoke-virtual {v8, v9, v0, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v0, "android.telephony.action.EMERGENCY_ASSISTANCE"

    .line 1219
    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v23

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v12

    .line 1218
    invoke-virtual {v8, v9, v0, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1224
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "vnd.android.cursor.item/ndef_msg"

    .line 1225
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1227
    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/util/Set;

    aput-object v3, v6, v23

    aput-object v5, v6, v12

    .line 1226
    invoke-virtual {v8, v9, v0, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    .line 1232
    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v12, [Ljava/util/Set;

    aput-object v2, v3, v23

    .line 1231
    invoke-virtual {v8, v9, v0, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v0, "com.android.companiondevicemanager"

    new-array v3, v4, [Ljava/util/Set;

    aput-object v1, v3, v23

    .line 1237
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v3, v12

    invoke-virtual {v8, v9, v0, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    .line 1243
    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v12, [Ljava/util/Set;

    aput-object v2, v1, v23

    .line 1242
    invoke-virtual {v8, v9, v0, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1249
    invoke-virtual {v8, v7, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move/from16 v2, v23

    :goto_6f0
    if-ge v2, v1, :cond_707

    aget-object v3, v0, v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/util/Set;

    .line 1250
    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v23

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v12

    invoke-virtual {v8, v9, v3, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v23, 0x0

    goto :goto_6f0

    :cond_707
    const-string v0, "com.samsung.android.alive.service"

    .line 1255
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_729

    .line 1257
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_729

    .line 1258
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1259
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1261
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_729
    const-string v0, "com.samsung.android.smartsuggestions"

    .line 1268
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_77d

    .line 1270
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_77d

    .line 1271
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_CONTACTS"

    .line 1272
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CALENDAR"

    .line 1273
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 1274
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_SMS"

    .line 1275
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CALL_PHONE"

    .line 1276
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_SMS"

    .line 1277
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1278
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1279
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 1280
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 1281
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    .line 1282
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1283
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_77d
    const-string v0, "com.samsung.android.app.reminder"

    .line 1288
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_7b8

    const-string v0, "CHINA"

    const-string/jumbo v1, "ro.csc.country_code"

    .line 1289
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b8

    .line 1290
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_7b8

    .line 1291
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_7b8

    const-string v1, "com.samsung.android.app.reminder"

    const-string v2, "android"

    .line 1292
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7b8

    .line 1293
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_7b8
    const-string v0, "com.samsung.android.calendar"

    .line 1298
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_80a

    const-string v0, "CHINA"

    const-string/jumbo v1, "ro.csc.country_code"

    .line 1299
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80a

    .line 1300
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_80a

    .line 1301
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_80a

    const-string v1, "com.samsung.android.calendar"

    const-string v2, "android"

    .line 1302
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_80a

    .line 1303
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_CALENDAR"

    .line 1304
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 1305
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CONTACTS"

    .line 1306
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 1307
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1308
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_80a
    const-string v0, "com.samsung.android.app.tips"

    .line 1313
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_836

    .line 1314
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_836

    .line 1315
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_836

    const-string v1, "com.samsung.android.app.tips"

    const-string v2, "android"

    .line 1316
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_836

    .line 1317
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_836
    const-string v0, "com.samsung.android.homemode"

    .line 1322
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_862

    .line 1323
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_862

    .line 1324
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_862

    const-string v1, "com.samsung.android.homemode"

    const-string v2, "android"

    .line 1325
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_862

    .line 1326
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_862
    const-string v0, "com.android.sharedstoragebackup"

    new-array v1, v12, [Ljava/util/Set;

    .line 1333
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v8, v9, v0, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1336
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportFacadeLauncher"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87d

    .line 1337
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSprintApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    :cond_87d
    const-string v0, ""

    :try_start_87f
    const-string/jumbo v1, "ro.csc.sales_code"

    .line 1344
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89c

    const-string/jumbo v1, "ril.sales_code"

    .line 1346
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_893
    .catch Ljava/lang/Exception; {:try_start_87f .. :try_end_893} :catch_894

    goto :goto_89c

    :catch_894
    const-string v1, "DefaultPermGrantPolicy"

    const-string/jumbo v2, "readSalesCode failed"

    .line 1349
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89c
    :goto_89c
    const-string v1, "ATT"

    .line 1352
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a9

    .line 1354
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToAttApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    goto/16 :goto_94c

    :cond_8a9
    const-string v1, "TMB"

    .line 1355
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b6

    .line 1357
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToTmoApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    goto/16 :goto_94c

    :cond_8b6
    const-string v1, "TMK"

    .line 1358
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c3

    .line 1360
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToMetroApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    goto/16 :goto_94c

    :cond_8c3
    const-string v1, "ASR"

    .line 1361
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d0

    .line 1363
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToAsrApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    goto/16 :goto_94c

    :cond_8d0
    const-string v1, "AIO"

    .line 1364
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8dd

    .line 1366
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToCricketApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    goto/16 :goto_94c

    :cond_8dd
    const-string v1, "TEL"

    .line 1367
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e7

    goto/16 :goto_94c

    :cond_8e7
    const-string v1, "VZW"

    .line 1370
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f3

    .line 1372
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToVerizonApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    goto :goto_94c

    :cond_8f3
    const-string v1, "VPP"

    .line 1373
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8ff

    .line 1375
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToVerizonAppForVPP(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    goto :goto_94c

    :cond_8ff
    const-string v1, "CCT"

    .line 1376
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_908

    goto :goto_94c

    :cond_908
    const-string v1, "TFV"

    .line 1379
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_911

    goto :goto_94c

    :cond_911
    const-string v1, "CHA"

    .line 1382
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91d

    .line 1384
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToCharterApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    goto :goto_94c

    :cond_91d
    const-string v1, "FKR"

    .line 1385
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_926

    goto :goto_94c

    :cond_926
    const-string v1, "LRA"

    .line 1388
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92f

    goto :goto_94c

    :cond_92f
    const-string v1, "SIN"

    .line 1391
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_938

    goto :goto_94c

    :cond_938
    const-string v1, "GLB"

    .line 1394
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_941

    goto :goto_94c

    :cond_941
    const-string v1, "USC"

    .line 1397
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94c

    .line 1399
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToUSCApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    :cond_94c
    :goto_94c
    const-string v0, "com.samsung.android.app.galaxyfinder"

    .line 1404
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_96c

    .line 1405
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_96c

    .line 1406
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 1407
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_96c
    const-string v0, "de.telekom.tsc"

    .line 1412
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_986

    .line 1413
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_986

    .line 1414
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_986
    const-string v0, "com.samsung.android.mdx.kit"

    .line 1418
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_9c6

    .line 1419
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_9c6

    .line 1420
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1421
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1422
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1423
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1424
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 1425
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 1426
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 1427
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1428
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_9c6
    const-string v0, "com.samsung.android.mcfserver"

    .line 1432
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_a0b

    .line 1433
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_a0b

    .line 1434
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1435
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1436
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1437
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CONTACTS"

    .line 1438
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1439
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 1440
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 1441
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 1442
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1443
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_a0b
    const-string v0, "com.samsung.android.mcfds"

    .line 1447
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_a50

    .line 1448
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_a50

    .line 1449
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1450
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1451
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1452
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 1453
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1454
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 1455
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 1456
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 1457
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1458
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_a50
    const-string v0, "com.samsung.android.beaconmanager"

    .line 1462
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_a81

    .line 1463
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_a81

    .line 1464
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1465
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1466
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1467
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 1468
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1469
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_a81
    const-string v0, "com.android.bluetoothmidiservice"

    new-array v1, v12, [Ljava/util/Set;

    .line 1473
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v8, v9, v0, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const-string v0, "com.samsung.android.dck.timesync"

    .line 1478
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_ad2

    .line 1479
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_ad2

    .line 1480
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    const/16 v5, 0x10

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 1483
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v1, p1

    move-object v3, v0

    move v4, v5

    .line 1482
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 1485
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    const/16 v2, 0x6f

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    .line 1486
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setUidMode(III)V

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 1489
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object v4, v7

    move/from16 v6, p2

    .line 1490
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_ad2
    const-string v0, "android.adservices.AD_SERVICES_COMMON_SERVICE"

    .line 1495
    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v12, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x0

    aput-object v2, v1, v7

    invoke-virtual {v8, v9, v0, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    :try_start_ae2
    const-string v0, "com.sec.android.daemonapp"

    .line 1500
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_b12

    .line 1501
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_b12

    .line 1502
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1503
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1504
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1505
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_b09
    .catch Ljava/lang/Exception; {:try_start_ae2 .. :try_end_b09} :catch_b0a

    goto :goto_b12

    :catch_b0a
    move-exception v0

    const-string v1, "DefaultPermGrantPolicy"

    const-string v2, "Weather not found"

    .line 1508
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b12
    :goto_b12
    const-string v0, "com.samsung.android.bixby.agent"

    .line 1512
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_c01

    .line 1514
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_c01

    const-string/jumbo v0, "ro.build.characteristics"

    .line 1515
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b34

    const-string/jumbo v1, "tablet"

    .line 1516
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b34

    move v0, v12

    goto :goto_b35

    :cond_b34
    move v0, v7

    :goto_b35
    const-string v1, "com.samsung.android.dialer"

    .line 1517
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_b3f

    move v1, v12

    goto :goto_b40

    :cond_b3f
    move v1, v7

    :goto_b40
    const-string v2, "com.samsung.android.messaging"

    .line 1518
    invoke-virtual {v9, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_b49

    move v7, v12

    .line 1520
    :cond_b49
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const-string v2, "android.permission.RECORD_AUDIO"

    .line 1522
    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.READ_CALENDAR"

    .line 1523
    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.WRITE_CALENDAR"

    .line 1524
    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_b69

    const-string v1, "android.permission.READ_CALL_LOG"

    .line 1527
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_CALL_LOG"

    .line 1528
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b69
    const-string v1, "android.permission.CAMERA"

    .line 1530
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CONTACTS"

    .line 1531
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 1532
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 1533
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1534
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1535
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_ba2

    const-string v1, "android.permission.SEND_SMS"

    .line 1538
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_SMS"

    .line 1539
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_SMS"

    .line 1540
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    .line 1541
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_MMS"

    .line 1542
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_ba2
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 1544
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CALL_PHONE"

    .line 1545
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1546
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1547
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_bc2

    const-string v0, "android.permission.BODY_SENSORS"

    .line 1550
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 1551
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_bc2
    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 1553
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 1554
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1555
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 1556
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 1557
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 1558
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 1559
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v11

    move/from16 v6, p2

    .line 1561
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    const-string v0, ";"

    .line 1563
    invoke-static {v0, v11}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1564
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bixby_pregranted_permissions"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c01
    const-string v0, "com.sec.android.mimage.photoretouching"

    .line 1569
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_c2d

    .line 1570
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_c2d

    .line 1571
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_c2d

    const-string v1, "com.sec.android.mimage.photoretouching"

    const-string v2, "android"

    .line 1572
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c2d

    .line 1573
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_c2d
    const-string v0, "com.sec.android.app.vepreload"

    .line 1578
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_c59

    .line 1579
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_c59

    .line 1580
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_c59

    const-string v1, "com.sec.android.app.vepreload"

    const-string v2, "android"

    .line 1581
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c59

    .line 1582
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_c59
    const-string v0, "com.samsung.android.video"

    .line 1587
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_c85

    .line 1588
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_c85

    .line 1589
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_c85

    const-string v1, "com.samsung.android.video"

    const-string v2, "android"

    .line 1590
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c85

    .line 1591
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_c85
    const-string v0, "com.samsung.app.newtrim"

    .line 1596
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_cb1

    .line 1597
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_cb1

    .line 1598
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_cb1

    const-string v1, "com.samsung.app.newtrim"

    const-string v2, "android"

    .line 1599
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_cb1

    .line 1600
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_cb1
    const-string v0, "com.samsung.android.service.aircommand"

    .line 1605
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_d0a

    .line 1606
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_d0a

    const/16 v7, 0x10

    const-string v2, "android.permission.BLUETOOTH_ADVERTISE"

    .line 1609
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/16 v5, 0x10

    move-object/from16 v1, p1

    move-object v3, v0

    move v4, v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 1610
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    .line 1611
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    move v4, v7

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    const-string v0, "com.samsung.android.service.aircommand"

    .line 1613
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_d0a

    .line 1615
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 1616
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 1617
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1618
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1619
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_d0a
    const-string v0, "com.samsung.android.rubin.app"

    .line 1624
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_d5e

    .line 1625
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_d5e

    .line 1626
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_CALENDAR"

    .line 1627
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 1628
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CONTACTS"

    .line 1629
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1630
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1631
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1632
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1633
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 1634
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 1635
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_SMS"

    .line 1636
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 1637
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1638
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_d5e
    const-string v0, "com.claroColombia.contenedor"

    .line 1642
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_d80

    .line 1643
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_d80

    .line 1644
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1645
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1646
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_d80
    const-string v0, "com.telcel.contenedor"

    .line 1650
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_da2

    .line 1651
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_da2

    .line 1652
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1653
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1654
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_da2
    const-string v0, "co.sitic.pp"

    .line 1658
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_dce

    .line 1659
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_dce

    .line 1660
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1661
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_SMS"

    .line 1662
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CALL_PHONE"

    .line 1663
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1664
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_dce
    const-string/jumbo v0, "sk.sitic.pp"

    .line 1668
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_dfb

    .line 1669
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_dfb

    .line 1670
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1671
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_SMS"

    .line 1672
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CALL_PHONE"

    .line 1673
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1674
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_dfb
    const-string v0, "cv.sitic.tg"

    .line 1678
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_e27

    .line 1679
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_e27

    .line 1680
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1681
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_SMS"

    .line 1682
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CALL_PHONE"

    .line 1683
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1684
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_e27
    const-string v0, "com.speedymovil.wire"

    .line 1688
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_e58

    .line 1689
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_e58

    .line 1690
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1691
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CALL_PHONE"

    .line 1692
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_SMS"

    .line 1693
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 1694
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1695
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_e58
    const-string v0, "com.sec.android.app.samsungapps"

    .line 1699
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_ec7

    .line 1700
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_ec7

    .line 1701
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "China"

    const-string/jumbo v1, "ro.csc.country_code"

    .line 1702
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e8a

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 1703
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1704
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_ec7

    :cond_e8a
    const-string v0, "KOREA"

    const-string/jumbo v1, "ro.csc.country_code"

    .line 1705
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_eb3

    .line 1706
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1707
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 1708
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1709
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_ec7

    .line 1711
    :cond_eb3
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 1712
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1713
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_ec7
    :goto_ec7
    const-string v0, "com.dti.samsung"

    .line 1718
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_ee1

    .line 1719
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_ee1

    .line 1720
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_ee1
    const-string v0, "com.applovin.array.apphub.samsung"

    .line 1724
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_efb

    .line 1725
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_efb

    .line 1726
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_efb
    const-string v0, "com.aura.oobe.samsung.gl"

    .line 1730
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_f15

    .line 1731
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_f15

    .line 1732
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_f15
    const-string v0, "com.sec.location.nfwlocationprivacy"

    .line 1736
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v0, "KOREA"

    const-string/jumbo v1, "ro.csc.country_code"

    .line 1737
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4b

    if-eqz v3, :cond_f4b

    .line 1738
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_f4b

    .line 1739
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1740
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1741
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 1743
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 1748
    :cond_f4b
    :try_start_f4b
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/AppOpsManager;

    const-string/jumbo v0, "package"

    .line 1750
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1749
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_f75

    .line 1751
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v0

    if-eqz v0, :cond_f75

    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "android:system_alert_window"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 1753
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setAppOpToSystemPackage(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/app/AppOpsManager;)V
    :try_end_f75
    .catch Ljava/lang/Exception; {:try_start_f4b .. :try_end_f75} :catch_f75

    :catch_f75
    :cond_f75
    return-void

    :catchall_f76
    move-exception v0

    .line 813
    :try_start_f77
    monitor-exit v1
    :try_end_f78
    .catchall {:try_start_f77 .. :try_end_f78} :catchall_f76

    throw v0
.end method

.method public final varargs grantIgnoringSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 739
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    return-void
.end method

.method public final varargs grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 1790
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_16

    .line 1792
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-void
.end method

.method public final varargs grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/content/pm/PackageInfo;",
            "IZZZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    move-object/from16 v8, p7

    if-nez p2, :cond_5

    return-void

    .line 784
    :cond_5
    invoke-static {p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 785
    array-length v9, v8

    const/4 v0, 0x0

    move v10, v0

    :goto_e
    if-ge v10, v9, :cond_21

    aget-object v3, v8, v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, p3

    .line 786
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_21
    return-void
.end method

.method public final varargs grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "IZZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 772
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    return-void
.end method

.method public final grantPermissionsToSysComponentsAndPrivApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;I)V
    .registers 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to platform components for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x2000b080

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v10

    .line 471
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_433

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/pm/PackageInfo;

    if-nez v12, :cond_3e

    goto :goto_2e

    .line 477
    :cond_3e
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v12}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->addPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 479
    invoke-virtual {v7, v12}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_42f

    .line 480
    invoke-static {v12}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_42f

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 481
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_2e

    .line 486
    :cond_58
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.spayfw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v14, "android.permission.ACCESS_FINE_LOCATION"

    const-string v15, "android.permission.ACCESS_COARSE_LOCATION"

    if-eqz v0, :cond_d3

    .line 487
    iget-object v5, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v5

    move v3, v9

    :goto_6c
    if-ge v3, v4, :cond_cb

    aget-object v2, v5, v3

    .line 488
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 490
    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v2

    move-object v2, v12

    move/from16 v18, v3

    move-object/from16 v3, v16

    move/from16 v16, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move/from16 v5, p2

    .line 489
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_99

    :cond_92
    move-object v9, v2

    move/from16 v18, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 494
    :goto_99
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 496
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 495
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 500
    :cond_ae
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 502
    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 501
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_c3
    add-int/lit8 v3, v18, 0x1

    move/from16 v4, v16

    move-object/from16 v5, v17

    const/4 v9, 0x0

    goto :goto_6c

    :cond_cb
    move-object v9, v7

    move-object/from16 v16, v10

    move-object/from16 v18, v11

    move-object v7, v6

    goto/16 :goto_428

    .line 509
    :cond_d3
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.cmh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v9, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string v5, "android.permission.READ_MEDIA_VIDEO"

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz v0, :cond_1b5

    .line 510
    iget-object v13, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v14, v13

    const/4 v15, 0x0

    :goto_eb
    if-ge v15, v14, :cond_1ab

    aget-object v1, v13, v15

    const-string v0, "android.permission.READ_CONTACTS"

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11b

    .line 513
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move-object v2, v12

    move-object/from16 v18, v11

    move-object v11, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v10

    move-object v10, v4

    move/from16 v4, v17

    move-object v6, v5

    move/from16 v5, p2

    .line 512
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    goto :goto_124

    :cond_11b
    move-object v6, v5

    move-object/from16 v16, v10

    move-object/from16 v18, v11

    move-object v11, v3

    move-object v10, v4

    move-object v5, v1

    move-object v4, v2

    .line 517
    :goto_124
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 519
    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v7, v4

    move/from16 v4, v17

    move-object/from16 v17, v13

    move-object v13, v5

    move/from16 v5, p2

    .line 518
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_145

    :cond_141
    move-object v7, v4

    move-object/from16 v17, v13

    move-object v13, v5

    .line 523
    :goto_145
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 525
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 524
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 529
    :cond_15a
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 531
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 530
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 535
    :cond_16f
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 537
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 536
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 541
    :cond_184
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 543
    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 542
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_199
    add-int/lit8 v15, v15, 0x1

    move-object v5, v6

    move-object v2, v7

    move-object v4, v10

    move-object v3, v11

    move-object/from16 v10, v16

    move-object/from16 v13, v17

    move-object/from16 v11, v18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    goto/16 :goto_eb

    :cond_1ab
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    :cond_1af
    move-object/from16 v7, p0

    move-object/from16 v9, p1

    goto/16 :goto_428

    :cond_1b5
    move-object v7, v2

    move-object v6, v5

    move-object/from16 v16, v10

    move-object/from16 v18, v11

    move-object v11, v3

    move-object v10, v4

    .line 549
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.faceservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_226

    .line 550
    iget-object v9, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v13, v9

    const/4 v14, 0x0

    :goto_1cb
    if-ge v14, v13, :cond_1af

    aget-object v15, v9, v14

    .line 551
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 553
    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 552
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 557
    :cond_1e4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 559
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 558
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 563
    :cond_1f9
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20e

    .line 565
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 564
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 569
    :cond_20e
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_223

    .line 571
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 570
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_223
    add-int/lit8 v14, v14, 0x1

    goto :goto_1cb

    .line 577
    :cond_226
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.storyservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    .line 578
    iget-object v13, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v14, v13

    const/4 v15, 0x0

    :goto_234
    if-ge v15, v14, :cond_1af

    aget-object v5, v13, v15

    .line 579
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_251

    .line 581
    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v17, v13

    move-object v13, v5

    move/from16 v5, p2

    .line 580
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_254

    :cond_251
    move-object/from16 v17, v13

    move-object v13, v5

    .line 585
    :goto_254
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_269

    .line 587
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 586
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 591
    :cond_269
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27e

    .line 593
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 592
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 597
    :cond_27e
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_293

    .line 599
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 598
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 603
    :cond_293
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a8

    .line 605
    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 604
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_2a8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v17

    goto :goto_234

    .line 611
    :cond_2ad
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.ipservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_316

    .line 612
    iget-object v9, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v13, v9

    const/4 v14, 0x0

    :goto_2bb
    if-ge v14, v13, :cond_1af

    aget-object v15, v9, v14

    .line 613
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d4

    .line 615
    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 614
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 619
    :cond_2d4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e9

    .line 621
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 620
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 625
    :cond_2e9
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fe

    .line 627
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 626
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 631
    :cond_2fe
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_313

    .line 633
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 632
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_313
    add-int/lit8 v14, v14, 0x1

    goto :goto_2bb

    .line 639
    :cond_316
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.networkdiagnostic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36a

    .line 640
    iget-object v6, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v6

    const/4 v9, 0x0

    :goto_324
    if-ge v9, v7, :cond_1af

    aget-object v10, v6, v9

    .line 641
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33d

    .line 643
    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 642
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 647
    :cond_33d
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_352

    .line 649
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 648
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 653
    :cond_352
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_367

    .line 655
    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 654
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_367
    add-int/lit8 v9, v9, 0x1

    goto :goto_324

    .line 661
    :cond_36a
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.scloud"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c1

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v6, 0x0

    .line 662
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_3b8

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    .line 665
    invoke-virtual {v7, v9, v8, v12}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;)V

    .line 667
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_428

    .line 668
    invoke-static {v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_428

    .line 669
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v12, v11

    move v13, v6

    :goto_397
    if-ge v13, v12, :cond_428

    aget-object v1, v11, v13

    .line 670
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    if-nez v0, :cond_3a2

    goto :goto_3b5

    .line 674
    :cond_3a2
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_3b5

    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 676
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v2, v10

    .line 675
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    :cond_3b5
    :goto_3b5
    add-int/lit8 v13, v13, 0x1

    goto :goto_397

    :cond_3b8
    move-object/from16 v7, p0

    move-object/from16 v9, p1

    .line 683
    invoke-virtual {v7, v9, v8, v12}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;)V

    goto/16 :goto_428

    :cond_3c1
    move-object/from16 v7, p0

    move-object/from16 v9, p1

    const/4 v6, 0x0

    .line 686
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.ipsgeofence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_425

    .line 687
    iget-object v10, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v11, v10

    move v5, v6

    :goto_3d4
    if-ge v5, v11, :cond_428

    aget-object v4, v10, v5

    .line 688
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f4

    .line 690
    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v6, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move/from16 v5, p2

    .line 689
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_3f7

    :cond_3f4
    move-object v6, v4

    move/from16 v17, v5

    .line 694
    :goto_3f7
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40c

    .line 696
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 695
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 700
    :cond_40c
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_421

    .line 702
    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v5, p2

    .line 701
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_421
    add-int/lit8 v5, v17, 0x1

    const/4 v6, 0x0

    goto :goto_3d4

    .line 709
    :cond_425
    invoke-virtual {v7, v9, v8, v12}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;)V

    :cond_428
    :goto_428
    move-object v6, v7

    move-object v7, v9

    move-object/from16 v10, v16

    move-object/from16 v11, v18

    goto :goto_430

    :cond_42f
    move-object v9, v7

    :goto_430
    const/4 v9, 0x0

    goto/16 :goto_2e

    :cond_433
    move-object v9, v7

    move-object/from16 v16, v10

    .line 716
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_43a
    :goto_43a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_485

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_43a

    .line 718
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_43a

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 719
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43a

    .line 721
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 720
    invoke-virtual {v9, v1, v2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_43a

    .line 723
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 722
    invoke-virtual {v9, v1, v2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_43a

    .line 724
    invoke-virtual {v9, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_476

    goto :goto_43a

    :cond_476
    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 731
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const-string v1, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, p1

    .line 728
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    goto :goto_43a

    :cond_485
    return-void
.end method

.method public final varargs grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "IZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 760
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 763
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    return-void
.end method

.method public final varargs grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 753
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    return-void
.end method

.method public final grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p5

    .line 2021
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    return-void
.end method

.method public final grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v1, p3

    .line 2093
    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    if-nez v8, :cond_f

    return-void

    .line 2098
    :cond_f
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 2099
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-void

    .line 2105
    :cond_18
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 2107
    array-length v4, v2

    const/4 v10, 0x0

    move v5, v10

    :goto_23
    const/4 v6, 0x0

    if-ge v5, v4, :cond_33

    .line 2109
    aget-object v11, v2, v5

    invoke-static {v3, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_30

    .line 2110
    aput-object v6, v2, v5

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 2113
    :cond_33
    new-instance v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 2115
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2116
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p4, :cond_4a

    const/16 v4, 0x30

    goto :goto_4c

    :cond_4a
    const/16 v4, 0x20

    .line 2124
    :goto_4c
    iget-object v5, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v12, Landroid/permission/PermissionManager;

    .line 2125
    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/permission/PermissionManager;

    invoke-virtual {v5}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v5

    .line 2126
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    move v13, v10

    :goto_5f
    if-ge v13, v12, :cond_86

    .line 2129
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/permission/PermissionManager$SplitPermissionInfo;

    if-eqz v3, :cond_82

    .line 2131
    iget v15, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2132
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v6

    if-ge v15, v6, :cond_82

    .line 2133
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 2134
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_82
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_5f

    :cond_86
    if-nez p5, :cond_bd

    if-eqz v3, :cond_bd

    .line 2148
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 2149
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2150
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2149
    invoke-virtual {v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_bd

    .line 2152
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    return-void

    .line 2155
    :cond_a7
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 2156
    new-instance v6, Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2157
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object v12, v2

    move-object v13, v6

    goto :goto_bf

    :cond_bd
    move-object v12, v2

    const/4 v13, 0x0

    .line 2162
    :goto_bf
    array-length v14, v12

    .line 2166
    new-array v1, v14, [Ljava/lang/String;

    move v2, v10

    move v3, v2

    move v5, v3

    :goto_c5
    if-ge v2, v14, :cond_de

    .line 2170
    aget-object v6, v12, v2

    .line 2171
    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_d4

    .line 2172
    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_db

    :cond_d4
    add-int/lit8 v15, v14, -0x1

    sub-int/2addr v15, v3

    .line 2175
    aput-object v6, v1, v15

    add-int/lit8 v3, v3, 0x1

    :goto_db
    add-int/lit8 v2, v2, 0x1

    goto :goto_c5

    :cond_de
    move v15, v10

    :goto_df
    if-ge v15, v14, :cond_1ee

    .line 2183
    aget-object v6, v12, v15

    if-eqz v13, :cond_ed

    .line 2187
    invoke-interface {v13, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    goto/16 :goto_1ea

    .line 2191
    :cond_ed
    invoke-virtual {v11, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ea

    .line 2192
    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    move-result v5

    if-eqz p4, :cond_101

    and-int/lit8 v1, v5, 0x10

    if-eqz v1, :cond_101

    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_103

    :cond_101
    move/from16 v16, v10

    .line 2206
    :goto_103
    invoke-virtual {v0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isFixedOrUserSet(I)Z

    move-result v1

    if-eqz v1, :cond_116

    if-nez p5, :cond_116

    if-eqz v16, :cond_10e

    goto :goto_116

    :cond_10e
    move/from16 v17, v4

    move/from16 v19, v5

    move-object/from16 v16, v6

    goto/16 :goto_1d1

    :cond_116
    :goto_116
    and-int/lit8 v1, v5, 0x4

    if-eqz v1, :cond_11c

    goto/16 :goto_1ea

    :cond_11c
    and-int/lit16 v1, v5, 0x3800

    or-int v17, v4, v1

    if-eqz p6, :cond_13c

    .line 2219
    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isPermissionRestricted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13c

    const/16 v4, 0x1000

    const/16 v18, 0x1000

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p2

    move/from16 v19, v5

    move/from16 v5, v18

    move-object/from16 p3, v6

    move-object v6, v9

    .line 2220
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    goto :goto_140

    :cond_13c
    move/from16 v19, v5

    move-object/from16 p3, v6

    :goto_140
    if-eqz v16, :cond_150

    and-int/lit8 v5, v19, -0x11

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v4, v19

    move-object v6, v9

    .line 2228
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    :cond_150
    move-object/from16 v6, p3

    .line 2232
    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_15b

    .line 2233
    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    .line 2237
    :cond_15b
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    const-string v2, "android.uid.system"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c2

    iget-object v1, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    const-string v2, "android.uid.systemui"

    .line 2238
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c2

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 2239
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 2240
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1c2

    .line 2241
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mNotiBlockableDataByUid:Ljava/util/Map;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a4

    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mNotiBlockableDataByUid:Ljava/util/Map;

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a4

    :goto_19f
    and-int/lit8 v1, v17, -0x11

    move/from16 v17, v1

    goto :goto_1c2

    .line 2249
    :cond_1a4
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1c2

    const-string v2, "com.samsung.android.notification.blockable"

    .line 2250
    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 2256
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mNotiBlockableDataByUid:Ljava/util/Map;

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19f

    :cond_1c2
    :goto_1c2
    or-int/lit8 v4, v17, 0x40

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p2

    move/from16 v5, v17

    move-object/from16 v16, v6

    move-object v6, v9

    .line 2268
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    :goto_1d1
    and-int/lit8 v1, v19, 0x20

    if-eqz v1, :cond_1e8

    and-int/lit8 v1, v19, 0x10

    if-eqz v1, :cond_1e8

    if-nez p4, :cond_1e8

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object v6, v9

    .line 2280
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    :cond_1e8
    move/from16 v4, v17

    :cond_1ea
    :goto_1ea
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_df

    :cond_1ee
    return-void
.end method

.method public final grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;)V
    .registers 5

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V

    return-void
.end method

.method public final grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "I",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 443
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 446
    :cond_9
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 447
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_31

    aget-object v3, v0, v2

    .line 448
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    if-eqz v5, :cond_2e

    if-eqz p4, :cond_25

    .line 450
    invoke-interface {p4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    goto :goto_2e

    .line 453
    :cond_25
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 454
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 457
    :cond_31
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3f

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v6, p2

    .line 458
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_3f
    return-void
.end method

.method public final grantSignatureAppsNotificationPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .registers 6

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting Notification permissions to platform signature apps for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x2000b080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_28

    .line 427
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 428
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_28

    .line 431
    :cond_47
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V

    goto :goto_28

    :cond_4d
    return-void
.end method

.method public final varargs grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 746
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    return-void
.end method

.method public final isDuoStubModel()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final isFixedOrUserSet(I)Z
    .registers 2

    and-int/lit8 p0, p1, 0x17

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isSprintOreoMRUpgradeModel()Z
    .registers 2

    const-string/jumbo p0, "ro.product.name"

    .line 3677
    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dreamqltesq"

    .line 3678
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "dream2qltesq"

    .line 3679
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string/jumbo v0, "greatqltesq"

    .line 3680
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "cruiserltesq"

    .line 3681
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string/jumbo v0, "j7popltespr"

    .line 3682
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string/jumbo v0, "heroqltespr"

    .line 3683
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string/jumbo v0, "hero2qltespr"

    .line 3684
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string/jumbo v0, "heroqlteue"

    .line 3686
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string/jumbo v0, "hero2qlteue"

    .line 3687
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "dreamqlteue"

    .line 3688
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "dream2qlteue"

    .line 3689
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string/jumbo v0, "greatqlteue"

    .line 3690
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6f

    goto :goto_71

    :cond_6f
    const/4 p0, 0x0

    goto :goto_72

    :cond_71
    :goto_71
    const/4 p0, 0x1

    :goto_72
    return p0
.end method

.method public final parse(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/util/TypedXmlPullParser;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2401
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 2403
    :cond_4
    :goto_4
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 2404
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_45

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 2408
    :cond_1a
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exceptions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2409
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/util/TypedXmlPullParser;Ljava/util/Map;)V

    goto :goto_4

    .line 2411
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultPermGrantPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_45
    return-void
.end method

.method public final parseExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/util/TypedXmlPullParser;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2419
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 2421
    :cond_4
    :goto_4
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 2422
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_c0

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 2426
    :cond_1a
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_a0

    const/4 v1, 0x0

    const-string/jumbo v3, "package"

    .line 2427
    invoke-interface {p2, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2430
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_9b

    .line 2433
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_56

    .line 2436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 2441
    :cond_56
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 2442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown system package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 2448
    :cond_74
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_93

    .line 2449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2454
    :cond_93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2455
    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    :cond_9b
    invoke-virtual {p0, p2, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V

    goto/16 :goto_4

    .line 2460
    :cond_a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "under <exceptions>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c0
    return-void
.end method

.method public final parsePermission(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2467
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 2469
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_72

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 2470
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p0, :cond_72

    :cond_14
    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    goto :goto_4

    .line 2475
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "permission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DefaultPermGrantPolicy"

    if-eqz v0, :cond_53

    const/4 v0, 0x0

    const-string/jumbo v2, "name"

    .line 2476
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3c

    const-string v0, "Mandatory name attribute missing for permission tag"

    .line 2478
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_3c
    const-string v1, "fixed"

    const/4 v3, 0x0

    .line 2484
    invoke-interface {p1, v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v4, "whitelisted"

    .line 2486
    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 2488
    new-instance v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;ZZ)V

    .line 2490
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2492
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "under <exception>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_72
    return-void
.end method

.method public final readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation

    .line 2369
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2371
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object p0

    .line 2374
    :cond_d
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2377
    array-length v3, v0

    :goto_13
    if-ge v1, v3, :cond_9e

    aget-object v4, v0, v1

    .line 2378
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "DefaultPermGrantPolicy"

    if-nez v5, :cond_4b

    .line 2379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " directory, ignoring"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2379
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 2383
    :cond_4b
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 2384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default permissions file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " cannot be read"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 2387
    :cond_6b
    :try_start_6b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_70} :catch_85
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_85

    .line 2388
    :try_start_70
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v7

    .line 2389
    invoke-virtual {p0, p1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/util/TypedXmlPullParser;Ljava/util/Map;)V
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_7b

    .line 2390
    :try_start_77
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_7a} :catch_85
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_85

    goto :goto_9a

    :catchall_7b
    move-exception v7

    .line 2387
    :try_start_7c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_84

    :catchall_80
    move-exception v5

    :try_start_81
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_84
    throw v7
    :try_end_85
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_85} :catch_85
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_85} :catch_85

    :catch_85
    move-exception v5

    .line 2391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    :cond_9e
    return-object v2
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 12

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_19

    return-void

    .line 1906
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_48

    aget-object v8, p1, v1

    .line 1907
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1908
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1909
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, v8

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1911
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_48
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .registers 11

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_19

    return-void

    .line 1928
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_40

    aget-object v4, p1, v1

    .line 1929
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1930
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1931
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_40
    return-void
.end method

.method public final revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 2027
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_5b

    .line 2028
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5b

    .line 2031
    :cond_f
    new-instance v6, Landroid/util/ArraySet;

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2033
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2035
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_1e

    .line 2039
    :cond_32
    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 2040
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    move-result v0

    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_43

    goto :goto_1e

    :cond_43
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_48

    goto :goto_1e

    :cond_48
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4f

    if-nez p4, :cond_4f

    goto :goto_1e

    .line 2057
    :cond_4f
    invoke-virtual {p1, v1, p0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, p0

    .line 2067
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    goto :goto_1e

    :cond_5b
    :goto_5b
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .registers 2

    .line 463
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final setAppOpToSystemPackage(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/app/AppOpsManager;)V
    .registers 6

    .line 1764
    :try_start_0
    invoke-virtual {p4, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1766
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p5, p2, p0, p1, p3}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method

.method public setDialerAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 388
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 370
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setLocationPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 363
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 394
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setSmsAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 382
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;)V
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;

    .line 406
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 400
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 376
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
