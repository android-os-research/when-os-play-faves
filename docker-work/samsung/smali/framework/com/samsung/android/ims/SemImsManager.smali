.class public Lcom/samsung/android/ims/SemImsManager;
.super Ljava/lang/Object;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;,
        Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;,
        Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;,
        Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;,
        Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;,
        Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;,
        Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;,
        Lcom/samsung/android/ims/SemImsManager$ApnType;,
        Lcom/samsung/android/ims/SemImsManager$IkeErrors;,
        Lcom/samsung/android/ims/SemImsManager$EpdgPopUpTypes;
    }
.end annotation


# static fields
.field public static final whitelist HANDOVER_FAIL:I = 0x0

.field public static final whitelist HANDOVER_L2W:I = 0x1

.field public static final whitelist HANDOVER_SUCCESS:I = 0x1

.field public static final whitelist HANDOVER_W2L:I = 0x0

.field private static final blacklist IMS_API_VERSION:I = 0x2

.field private static final blacklist IMS_PLATFORM_VERSION:I = 0xebf0

.field private static final blacklist INTENT_ACTION_IMSSERVICE_RESTART:Ljava/lang/String; = "com.sec.ims.imsmanager.RESTART"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "semImsManager"

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "ImsBase"

.field public static final whitelist WIFI_CONNECTED:I = 0x1

.field public static final whitelist WIFI_DISCONNECTED:I


# instance fields
.field private final blacklist mAutoConfigListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/samsung/android/ims/SemAutoConfigurationListener;",
            "Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mEpdgListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/samsung/android/ims/SemEpdgListener;",
            "Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mEventProxy:Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;

.field blacklist mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

.field private blacklist mImsService:Lcom/samsung/android/ims/SemImsService;

.field private blacklist mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

.field private final blacklist mOngoingFtEventListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;",
            "Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhoneId:I

.field private final blacklist mRegListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/samsung/android/ims/SemImsRegistrationListener;",
            "Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRestartReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mSimMobilityStatusListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/samsung/android/ims/SemSimMobilityStatusListener;",
            "Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/ims/SemImsManager;->mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneId(Lcom/samsung/android/ims/SemImsManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetImsService(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsService;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterPreviousListeners(Lcom/samsung/android/ims/SemImsManager;Lcom/samsung/android/ims/SemImsService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsManager;->registerPreviousListeners(Lcom/samsung/android/ims/SemImsService;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;
    .param p3, "phoneId"    # I

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Landroid/util/ArrayMap;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mContext:Landroid/content/Context;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mImsService:Lcom/samsung/android/ims/SemImsService;

    .line 79
    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    .line 80
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mAutoConfigListeners:Landroid/util/ArrayMap;

    .line 81
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    .line 82
    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    .line 1270
    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    .line 1271
    new-instance v0, Lcom/samsung/android/ims/SemImsManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/SemImsManager$2;-><init>(Lcom/samsung/android/ims/SemImsManager;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEventProxy:Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;

    .line 272
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager;->mContext:Landroid/content/Context;

    .line 273
    iput-object p2, p0, Lcom/samsung/android/ims/SemImsManager;->mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    .line 274
    iput p3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    .line 275
    return-void
.end method

.method public static whitelist getImsApiVersion()I
    .registers 1

    .line 1221
    const/4 v0, 0x2

    return v0
.end method

.method private blacklist getImsService()Lcom/samsung/android/ims/SemImsService;
    .registers 2

    .line 278
    const-string v0, "ImsBase"

    invoke-direct {p0, v0}, Lcom/samsung/android/ims/SemImsManager;->getSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/ims/SemImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getImsVersion()I
    .registers 1

    .line 1211
    const v0, 0xebf0

    return v0
.end method

.method private blacklist getSystemService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 285
    .local v1, "sm":Ljava/lang/Class;
    :try_start_2
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 286
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_17} :catch_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_17} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_17} :catch_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_17} :catch_49

    .line 287
    .local v2, "getService":Ljava/lang/reflect/Method;
    const-string/jumbo v4, "semImsManager"

    if-eqz v2, :cond_43

    .line 288
    :try_start_1c
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 289
    .local v3, "result":Ljava/lang/Object;
    if-eqz v3, :cond_2b

    .line 290
    move-object v4, v3

    check-cast v4, Landroid/os/IBinder;

    move-object v0, v4

    .line 291
    return-object v0

    .line 293
    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to getService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    nop

    .end local v3    # "result":Ljava/lang/Object;
    goto :goto_5c

    .line 296
    :cond_43
    const-string v3, "Failed to reflect method getService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_48} :catch_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_48} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_48} :catch_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_48} :catch_49

    goto :goto_5c

    .line 304
    .end local v2    # "getService":Ljava/lang/reflect/Method;
    :catch_49
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5d

    .line 302
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4e
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_5c

    .line 300
    :catch_53
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_5c

    .line 298
    :catch_58
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 306
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_5c
    nop

    .line 307
    :goto_5d
    return-object v0
.end method

.method private blacklist registerPreviousListeners(Lcom/samsung/android/ims/SemImsService;)V
    .registers 4
    .param p1, "imsService"    # Lcom/samsung/android/ims/SemImsService;

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerPreviousListeners:  mRegListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Landroid/util/ArrayMap;

    .line 312
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEpdgListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string/jumbo v1, "semImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemImsRegistrationListener;

    .line 314
    .local v1, "tempListener":Lcom/samsung/android/ims/SemImsRegistrationListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsManager;->registerImsRegistrationListener(Lcom/samsung/android/ims/SemImsRegistrationListener;)V

    .line 315
    .end local v1    # "tempListener":Lcom/samsung/android/ims/SemImsRegistrationListener;
    goto :goto_3a

    .line 316
    :cond_4a
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemEpdgListener;

    .line 317
    .local v1, "epdgListener":Lcom/samsung/android/ims/SemEpdgListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsManager;->registerEpdgListener(Lcom/samsung/android/ims/SemEpdgListener;)Z

    .line 318
    .end local v1    # "epdgListener":Lcom/samsung/android/ims/SemEpdgListener;
    goto :goto_54

    .line 319
    :cond_64
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    .line 320
    .local v1, "tempListener":Lcom/samsung/android/ims/SemSimMobilityStatusListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsManager;->registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobilityStatusListener;)V

    .line 321
    .end local v1    # "tempListener":Lcom/samsung/android/ims/SemSimMobilityStatusListener;
    goto :goto_6e

    .line 322
    :cond_7e
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mAutoConfigListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemAutoConfigurationListener;

    .line 323
    .local v1, "tempListener":Lcom/samsung/android/ims/SemAutoConfigurationListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsManager;->registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigurationListener;)V

    .line 324
    .end local v1    # "tempListener":Lcom/samsung/android/ims/SemAutoConfigurationListener;
    goto :goto_88

    .line 325
    :cond_98
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    .line 326
    .local v1, "tempListener":Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsManager;->registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;)V

    .line 327
    .end local v1    # "tempListener":Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;
    goto :goto_a2

    .line 328
    :cond_b2
    return-void
.end method


# virtual methods
.method public whitelist connectService()V
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3d

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Register Receiver for Restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Lcom/samsung/android/ims/SemImsManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/SemImsManager$1;-><init>(Lcom/samsung/android/ims/SemImsManager;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.ims.imsmanager.RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3d
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 365
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-eqz v0, :cond_4a

    .line 366
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    if-eqz v1, :cond_4a

    .line 367
    invoke-interface {v1}, Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;->onConnected()V

    .line 370
    :cond_4a
    return-void
.end method

.method public whitelist disconnectService()V
    .registers 5

    .line 376
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_45

    .line 378
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_a

    .line 381
    goto :goto_42

    .line 379
    :catch_a
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 385
    :cond_45
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    if-eqz v0, :cond_4c

    .line 386
    invoke-interface {v0}, Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;->onDisconnected()V

    .line 388
    :cond_4c
    return-void
.end method

.method public whitelist enableIpme(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableIpme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/SemImsManager;->enableRcs(Z)V

    .line 453
    return-void
.end method

.method public whitelist enableRcs(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRcs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 493
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_55

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableRcs: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void

    .line 499
    :cond_55
    :try_start_55
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->enableRcsByPhoneId(ZI)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_5b

    .line 502
    goto :goto_5f

    .line 500
    :catch_5b
    move-exception v1

    .line 501
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 503
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5f
    return-void
.end method

.method public whitelist getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .param p1, "fields"    # [Ljava/lang/String;

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getConfigValues"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 855
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_45

    .line 856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return-object v3

    .line 861
    :cond_45
    :try_start_45
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4c

    return-object v1

    .line 862
    :catch_4c
    move-exception v1

    .line 863
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 865
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public whitelist getCurrentProfile(I)[Lcom/samsung/android/ims/settings/SemImsProfile;
    .registers 8
    .param p1, "phoneId"    # I

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getCurrentProfile"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1299
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_45

    .line 1300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-object v3

    .line 1305
    :cond_45
    :try_start_45
    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemImsService;->getCurrentProfileForSlot(I)[Lcom/samsung/android/ims/settings/SemImsProfile;

    move-result-object v1
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_49} :catch_4a

    .line 1306
    .local v1, "profiles":[Lcom/samsung/android/ims/settings/SemImsProfile;
    return-object v1

    .line 1307
    .end local v1    # "profiles":[Lcom/samsung/android/ims/settings/SemImsProfile;
    :catch_4a
    move-exception v4

    .line 1308
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail to get profiles"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    return-object v3
.end method

.method public whitelist getImsRegistration()Lcom/samsung/android/ims/SemImsRegistration;
    .registers 6

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getImsRegistration"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 821
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_45

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getImsRegistration: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-object v3

    .line 827
    :cond_45
    :try_start_45
    const-string/jumbo v1, "volte"

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ims/SemImsService;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v1
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4e} :catch_4f

    return-object v1

    .line 828
    :catch_4f
    move-exception v1

    .line 829
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 831
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public whitelist getRcsProfileType()Ljava/lang/String;
    .registers 7

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getRcsProfileType"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v0, ""

    .line 1024
    .local v0, "rcsProfile":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    .line 1025
    .local v3, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v3, :cond_46

    .line 1026
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-object v0

    .line 1031
    :cond_46
    :try_start_46
    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/samsung/android/ims/SemImsService;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v1
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4c} :catch_4e

    move-object v0, v1

    .line 1034
    goto :goto_6b

    .line 1032
    :catch_4e
    move-exception v4

    .line 1033
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail to get profile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_6b
    return-object v0
.end method

.method public whitelist getRegistrationInfo()[Lcom/samsung/android/ims/SemImsRegistration;
    .registers 6

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getRegistrationInfo"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 400
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_45

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRegistrationInfo: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-object v3

    .line 406
    :cond_45
    :try_start_45
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->getRegistrationInfoByPhoneId(I)[Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v1
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4c

    return-object v1

    .line 407
    :catch_4c
    move-exception v1

    .line 408
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 410
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public whitelist getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration;
    .registers 7
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getRegistrationInfoByServiceType"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 789
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_45

    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRegistrationInfoByServiceType: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-object v3

    .line 795
    :cond_45
    :try_start_45
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v1
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4c

    return-object v1

    .line 796
    :catch_4c
    move-exception v1

    .line 797
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 799
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public whitelist hasCrossSimCallingSupport()Z
    .registers 5

    .line 1470
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1471
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1472
    const-string/jumbo v2, "semImsManager"

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    return v1

    .line 1476
    :cond_10
    :try_start_10
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/samsung/android/ims/SemImsService;->hasCrossSimCallingSupport(I)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return v1

    .line 1477
    :catch_17
    move-exception v2

    .line 1478
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1479
    return v1
.end method

.method public whitelist isCmcEmergencyCallSupported()Z
    .registers 5

    .line 1350
    const-string/jumbo v0, "semImsManager"

    const-string v1, "isCmcEmergencyCallSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v1

    .line 1352
    .local v1, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 1353
    const-string v3, "isCmcEmergencyCallSupported: not connected."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return v2

    .line 1358
    :cond_15
    :try_start_15
    invoke-interface {v1}, Lcom/samsung/android/ims/SemImsService;->isCmcEmergencyCallSupported()Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_1a

    return v0

    .line 1359
    :catch_1a
    move-exception v0

    .line 1360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1361
    return v2
.end method

.method public whitelist isCmcEmergencyNumber(Ljava/lang/String;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;

    .line 1380
    const-string/jumbo v0, "semImsManager"

    const-string v1, "isCmcEmergencyNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v1

    .line 1382
    .local v1, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 1383
    const-string v3, "isCmcEmergencyNumber: not connected."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    return v2

    .line 1388
    :cond_15
    :try_start_15
    iget v0, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/ims/SemImsService;->isCmcEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1b} :catch_1c

    return v0

    .line 1389
    :catch_1c
    move-exception v0

    .line 1390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1391
    return v2
.end method

.method public whitelist isCmcPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;

    .line 1414
    const-string/jumbo v0, "semImsManager"

    const-string v1, "isCmcPotentialEmergencyNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v1

    .line 1416
    .local v1, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 1417
    const-string v3, "isCmcPotentialEmergencyNumber: not connected."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    return v2

    .line 1422
    :cond_15
    :try_start_15
    iget v0, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/ims/SemImsService;->isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1b} :catch_1c

    return v0

    .line 1423
    :catch_1c
    move-exception v0

    .line 1424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1425
    return v2
.end method

.method public whitelist isCrossSimCallingRegistered()Z
    .registers 5

    .line 1452
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1453
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1454
    const-string/jumbo v2, "semImsManager"

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    return v1

    .line 1458
    :cond_10
    :try_start_10
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/samsung/android/ims/SemImsService;->isCrossSimCallingRegistered(I)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return v1

    .line 1459
    :catch_17
    move-exception v2

    .line 1460
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1461
    return v1
.end method

.method public whitelist isForbidden()Z
    .registers 6

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isForbidden"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 900
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_45

    .line 901
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return v3

    .line 906
    :cond_45
    :try_start_45
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->isForbiddenByPhoneId(I)Z

    move-result v1
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4c

    return v1

    .line 907
    :catch_4c
    move-exception v1

    .line 908
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 910
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public whitelist isImsFeatureEnabled(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isImsFeatureEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 992
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_60

    .line 993
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isImsFeatureEnabled: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return v3

    .line 997
    :cond_60
    invoke-static {p1}, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->isValidImsFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1002
    :try_start_66
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/ims/SemImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6c} :catch_6d

    return v1

    .line 1003
    :catch_6d
    move-exception v1

    .line 1004
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1006
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3

    .line 998
    :cond_72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isImsFeatureProvisioned(Ljava/lang/String;)Z
    .registers 7
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isImsFeatureProvisioned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1130
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_56

    .line 1131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isImsFeatureProvisioned: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return v3

    .line 1135
    :cond_56
    invoke-static {p1}, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->isValidImsFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1140
    :try_start_5c
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->getBooleanConfig(Ljava/lang/String;I)Z

    move-result v1
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_62} :catch_63

    return v1

    .line 1141
    :catch_63
    move-exception v1

    .line 1142
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1144
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3

    .line 1136
    :cond_68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isIpmeEnabled()Z
    .registers 3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isIpmeEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager;->isRcsEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist isRcsEnabled()Z
    .registers 2

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsManager;->isRcsEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist isRcsEnabled(Z)Z
    .registers 7
    .param p1, "needAutoConfigCheck"    # Z

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isRcsEnabled: "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 431
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_45

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isRcsEnabled: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v3

    .line 437
    :cond_45
    :try_start_45
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->isRcsEnabled(ZI)Z

    move-result v1
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4c

    return v1

    .line 438
    :catch_4c
    move-exception v1

    .line 439
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 441
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public whitelist isServiceAvailable(Ljava/lang/String;)Z
    .registers 7
    .param p1, "service"    # Ljava/lang/String;

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 940
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_56

    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isServiceAvailable: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    return v3

    .line 946
    :cond_56
    const/4 v1, -0x1

    :try_start_57
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/ims/SemImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5d} :catch_5e

    return v1

    .line 947
    :catch_5e
    move-exception v1

    .line 948
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 950
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public blacklist isServiceAvailable(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "rat"    # I

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 964
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_60

    .line 965
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isServiceAvailable: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return v3

    .line 970
    :cond_60
    :try_start_60
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/ims/SemImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_66} :catch_67

    return v1

    .line 971
    :catch_67
    move-exception v1

    .line 972
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 974
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public whitelist isSimMobilityActivated()Z
    .registers 6

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isSimMobilityActivated:"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 878
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_45

    .line 879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isSimMobilityActivated: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    return v3

    .line 884
    :cond_45
    :try_start_45
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->isSimMobilityActivated(I)Z

    move-result v1
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4c

    return v1

    .line 885
    :catch_4c
    move-exception v1

    .line 886
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 888
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public whitelist isVoLteAvailable()Z
    .registers 6

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isVoLteAvailable"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1105
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_45

    .line 1106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isVoLteAvailable : not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return v3

    .line 1111
    :cond_45
    :try_start_45
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->isVoLteAvailable(I)Z

    move-result v1
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4c

    return v1

    .line 1112
    :catch_4c
    move-exception v1

    .line 1113
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1115
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public whitelist newSemCmcMediaRecorder()Lcom/samsung/android/ims/SemCmcMediaRecorder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1437
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1438
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_10

    .line 1439
    const-string/jumbo v1, "semImsManager"

    const-string v2, "newSemCmcMediaRecorder: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/4 v1, 0x0

    return-object v1

    .line 1443
    :cond_10
    new-instance v1, Lcom/samsung/android/ims/SemCmcMediaRecorder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/ims/SemCmcMediaRecorder;-><init>(Lcom/samsung/android/ims/SemImsService;I)V

    return-object v1
.end method

.method public whitelist registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigurationListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigurationListener;

    .line 1045
    if-nez p1, :cond_3

    .line 1046
    return-void

    .line 1049
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1050
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_2b

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void

    .line 1055
    :cond_2b
    new-instance v1, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;-><init>(Lcom/samsung/android/ims/SemAutoConfigurationListener;)V

    .line 1057
    .local v1, "callback":Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;
    :try_start_30
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ims/SemImsService;->registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)Ljava/lang/String;

    move-result-object v2

    .line 1058
    .local v2, "token":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 1059
    iput-object v2, v1, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->mToken:Ljava/lang/String;

    .line 1060
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mAutoConfigListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_43} :catch_44

    .line 1064
    .end local v2    # "token":Ljava/lang/String;
    :cond_43
    goto :goto_48

    .line 1062
    :catch_44
    move-exception v2

    .line 1063
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1065
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_48
    return-void
.end method

.method public whitelist registerDmValueListener(Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    .line 1231
    const-string v0, "]"

    const-string/jumbo v1, "semImsManager["

    if-eqz p1, :cond_37

    .line 1232
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager;->mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    .line 1233
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v2

    .line 1234
    .local v2, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v2, :cond_2c

    .line 1235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    return-void

    .line 1240
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEventProxy:Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;

    invoke-interface {v2, v0}, Lcom/samsung/android/ims/SemImsService;->registerDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32

    .line 1243
    goto :goto_36

    .line 1241
    :catch_32
    move-exception v0

    .line 1242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1244
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "imsService":Lcom/samsung/android/ims/SemImsService;
    :goto_36
    goto :goto_53

    .line 1245
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :goto_53
    return-void
.end method

.method public whitelist registerEpdgListener(Lcom/samsung/android/ims/SemEpdgListener;)Z
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/ims/SemEpdgListener;

    .line 577
    const-string/jumbo v0, "semImsManager"

    const-string/jumbo v1, "registerEpdgListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v1, 0x0

    if-nez p1, :cond_13

    .line 579
    const-string/jumbo v2, "registerEpdgListener listener null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return v1

    .line 582
    :cond_13
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 583
    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/SemImsManager;->unRegisterEpdgListener(Lcom/samsung/android/ims/SemEpdgListener;)Z

    .line 585
    :cond_1e
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v2

    .line 586
    .local v2, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v2, :cond_2a

    .line 587
    const-string v3, "Not initialized."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return v1

    .line 590
    :cond_2a
    new-instance v0, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;-><init>(Lcom/samsung/android/ims/SemEpdgListener;)V

    .line 592
    .local v0, "callback":Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;
    :try_start_2f
    invoke-interface {v2, v0}, Lcom/samsung/android/ims/SemImsService;->registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 594
    iput-object v3, v0, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;->mToken:Ljava/lang/String;

    .line 595
    iget-object v4, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_40} :catch_43

    .line 596
    const/4 v1, 0x1

    return v1

    .line 600
    .end local v3    # "token":Ljava/lang/String;
    :cond_42
    goto :goto_47

    .line 598
    :catch_43
    move-exception v3

    .line 599
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 601
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_47
    return v1
.end method

.method public whitelist registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    .line 614
    const-string/jumbo v0, "semImsManager"

    if-nez p1, :cond_c

    .line 615
    const-string/jumbo v1, "registerImsOngoingFtEventListener : wrong instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void

    .line 618
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 619
    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/SemImsManager;->unregisterImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;)V

    .line 621
    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v1

    .line 622
    .local v1, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v1, :cond_23

    .line 623
    const-string v2, "Not initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 627
    :cond_23
    new-instance v0, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;-><init>(Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;)V

    .line 629
    .local v0, "callback":Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;
    :try_start_28
    invoke-interface {v1, v0}, Lcom/samsung/android/ims/SemImsService;->registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "token":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 631
    iput-object v2, v0, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->mToken:Ljava/lang/String;

    .line 632
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_39} :catch_3a

    .line 636
    .end local v2    # "token":Ljava/lang/String;
    :cond_39
    goto :goto_3e

    .line 634
    :catch_3a
    move-exception v2

    .line 635
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 637
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3e
    return-void
.end method

.method public whitelist registerImsRegistrationListener(Lcom/samsung/android/ims/SemImsRegistrationListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegistrationListener;

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "registerImsRegistrationListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-nez p1, :cond_42

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "registerImsRegistrationListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void

    .line 520
    :cond_42
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 521
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_65

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void

    .line 525
    :cond_65
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 526
    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/SemImsManager;->unregisterImsRegistrationListener(Lcom/samsung/android/ims/SemImsRegistrationListener;)V

    .line 528
    :cond_70
    new-instance v1, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;-><init>(Lcom/samsung/android/ims/SemImsRegistrationListener;)V

    .line 530
    .local v1, "callback":Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
    :try_start_75
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ims/SemImsService;->registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "token":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 532
    iput-object v2, v1, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mToken:Ljava/lang/String;

    .line 533
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_88} :catch_89

    .line 537
    .end local v2    # "token":Ljava/lang/String;
    :cond_88
    goto :goto_8d

    .line 535
    :catch_89
    move-exception v2

    .line 536
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 538
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_8d
    return-void
.end method

.method public whitelist registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobilityStatusListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    .line 681
    const-string v0, "]"

    const-string/jumbo v1, "semImsManager["

    if-nez p1, :cond_25

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "registerSimMobilityStatusListener : wrong instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void

    .line 685
    :cond_25
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 686
    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/SemImsManager;->unregisterSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobilityStatusListener;)V

    .line 688
    :cond_30
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v2

    .line 689
    .local v2, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v2, :cond_53

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void

    .line 694
    :cond_53
    new-instance v0, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;-><init>(Lcom/samsung/android/ims/SemSimMobilityStatusListener;)V

    .line 696
    .local v0, "callback":Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;
    :try_start_58
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/ims/SemImsService;->registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 698
    iput-object v1, v0, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->mToken:Ljava/lang/String;

    .line 699
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_6b} :catch_6c

    .line 703
    .end local v1    # "token":Ljava/lang/String;
    :cond_6b
    goto :goto_70

    .line 701
    :catch_6c
    move-exception v1

    .line 702
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 704
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_70
    return-void
.end method

.method public whitelist sendIidToken(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sendIidToken"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1193
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_45

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void

    .line 1198
    :cond_45
    :try_start_45
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->sendIidToken(Ljava/lang/String;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4b

    .line 1201
    goto :goto_4f

    .line 1199
    :catch_4b
    move-exception v1

    .line 1200
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1202
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4f
    return-void
.end method

.method public whitelist sendMsisdnNumber(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sendMsisdnNumber"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1174
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_45

    .line 1175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void

    .line 1179
    :cond_45
    :try_start_45
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->sendMsisdnNumber(Ljava/lang/String;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4b

    .line 1182
    goto :goto_4f

    .line 1180
    :catch_4b
    move-exception v1

    .line 1181
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1183
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4f
    return-void
.end method

.method public whitelist sendTryRegister()V
    .registers 5

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sendTryRegister"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 472
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_46

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sendTryRegister: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 478
    :cond_46
    :try_start_46
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->sendTryRegisterByPhoneId(I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 481
    goto :goto_50

    .line 479
    :catch_4c
    move-exception v1

    .line 480
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 482
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_50
    return-void
.end method

.method public whitelist sendVerificationCode(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sendVerificationCode"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1155
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_45

    .line 1156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return-void

    .line 1160
    :cond_45
    :try_start_45
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->sendVerificationCode(Ljava/lang/String;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4b

    .line 1163
    goto :goto_4f

    .line 1161
    :catch_4b
    move-exception v1

    .line 1162
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1164
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4f
    return-void
.end method

.method public blacklist setRttMode(I)V
    .registers 7
    .param p1, "mode"    # I

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRttMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1324
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_57

    .line 1325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setRttMode: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return-void

    .line 1330
    :cond_57
    :try_start_57
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/ims/SemImsService;->setRttMode(II)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_5d

    .line 1333
    goto :goto_61

    .line 1331
    :catch_5d
    move-exception v1

    .line 1332
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1334
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_61
    return-void
.end method

.method public whitelist unRegisterEpdgListener(Lcom/samsung/android/ims/SemEpdgListener;)Z
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/ims/SemEpdgListener;

    .line 744
    const-string/jumbo v0, "semImsManager"

    const-string/jumbo v1, "unRegisterEpdgListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 747
    return v1

    .line 749
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;

    .line 750
    .local v2, "delegate":Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;
    if-nez v2, :cond_1e

    .line 751
    const-string/jumbo v3, "unRegisterEpdgListener : cannot find the listener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return v1

    .line 754
    :cond_1e
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    .line 755
    .local v3, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v3, :cond_2a

    .line 756
    const-string v4, "Not initialized."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return v1

    .line 760
    :cond_2a
    :try_start_2a
    iget-object v0, v2, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;->mToken:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/samsung/android/ims/SemImsService;->unRegisterEpdgListener(Ljava/lang/String;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_31

    .line 761
    const/4 v0, 0x1

    return v0

    .line 762
    :catch_31
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 765
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist unregisterAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigurationListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigurationListener;

    .line 1074
    const-string v0, "]"

    const-string/jumbo v1, "semImsManager["

    if-nez p1, :cond_24

    .line 1075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return-void

    .line 1079
    :cond_24
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mAutoConfigListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;

    .line 1080
    .local v2, "delegate":Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;
    if-nez v2, :cond_4c

    .line 1081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterAutoConfigurationListener : cannot find the listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return-void

    .line 1084
    :cond_4c
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    .line 1085
    .local v3, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v3, :cond_6f

    .line 1086
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return-void

    .line 1090
    :cond_6f
    :try_start_6f
    iget-object v0, v2, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->mToken:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v3, v0, v1}, Lcom/samsung/android/ims/SemImsService;->unregisterAutoConfigurationListener(Ljava/lang/String;I)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_76} :catch_77

    .line 1093
    goto :goto_7b

    .line 1091
    :catch_77
    move-exception v0

    .line 1092
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1094
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7b
    return-void
.end method

.method public whitelist unregisterDmValueListener(Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    .line 1256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    .line 1257
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1258
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_2b

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-void

    .line 1264
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mEventProxy:Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->unregisterDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    .line 1267
    goto :goto_35

    .line 1265
    :catch_31
    move-exception v1

    .line 1266
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1268
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_35
    return-void
.end method

.method public whitelist unregisterImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    .line 648
    const-string/jumbo v0, "semImsManager"

    if-nez p1, :cond_c

    .line 649
    const-string/jumbo v1, "unregisterImsOngoingFtEventListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void

    .line 653
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;

    .line 654
    .local v1, "delegate":Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;
    if-nez v1, :cond_1d

    .line 655
    const-string/jumbo v2, "unregisterImsOngoingFtEventListener : cannot find the listener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void

    .line 658
    :cond_1d
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 659
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_45

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 664
    :cond_45
    :try_start_45
    iget-object v2, v1, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->mToken:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/ims/SemImsService;->unregisterImsOngoingFtEventListener(Ljava/lang/String;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4b

    .line 667
    goto :goto_4f

    .line 665
    :catch_4b
    move-exception v2

    .line 666
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 668
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4f
    return-void
.end method

.method public whitelist unregisterImsRegistrationListener(Lcom/samsung/android/ims/SemImsRegistrationListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegistrationListener;

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "unregisterImsRegistrationListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-nez p1, :cond_42

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterImsRegistrationListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 554
    :cond_42
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;

    .line 555
    .local v0, "delegate":Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
    if-nez v0, :cond_6a

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unregisterImsRegistrationListener : cannot find the listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void

    .line 559
    :cond_6a
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    .line 560
    .local v3, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v3, :cond_8d

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 565
    :cond_8d
    :try_start_8d
    iget-object v1, v0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mToken:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/ims/SemImsService;->unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_94} :catch_95

    .line 568
    goto :goto_99

    .line 566
    :catch_95
    move-exception v1

    .line 567
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 569
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_99
    return-void
.end method

.method public whitelist unregisterSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobilityStatusListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    .line 715
    const-string v0, "]"

    const-string/jumbo v1, "semImsManager["

    if-nez p1, :cond_25

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterSimMobilityStatusListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void

    .line 720
    :cond_25
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;

    .line 721
    .local v2, "delegate":Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;
    if-nez v2, :cond_4d

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterSimMobilityStatusListener : cannot find the listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void

    .line 725
    :cond_4d
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    .line 726
    .local v3, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v3, :cond_70

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void

    .line 731
    :cond_70
    :try_start_70
    iget-object v0, v2, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->mToken:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v3, v0, v1}, Lcom/samsung/android/ims/SemImsService;->unregisterSimMobilityStatusListener(Ljava/lang/String;I)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_77} :catch_78

    .line 734
    goto :goto_7c

    .line 732
    :catch_78
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 735
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7c
    return-void
.end method
